import 'package:flutter/material.dart';

class CartItemProvider extends ChangeNotifier {
  List itemData = [];
  double productsPrice = 0;
  double productTotalPrice = 0;
  double allproductprice = 0;
  cartProductData(productInfo) {
    if (itemData.length > 0) {
      var isThere = false;
      for (var item in itemData) {
        if (item['productId'] == productInfo['productId']) {
          isThere = true;
        }
        if (isThere == true) {
          break;
        }
      }
      if (!isThere) {
        itemData.add(productInfo);
      } else {
        productInfo['productQuantity'] += 1;
      }
    } else {
      itemData.add(productInfo);

      notifyListeners();
    }
  }

  totalCartPriceData(productInfo) {
    print(itemData);
    double allproductprice = 0;
    for (var e in itemData) {
      double productprice = e['productDiscountPrice'] != '0'
          ? double.parse(e['productDiscountPrice']).roundToDouble()
          : double.parse(e['productPrice']).roundToDouble();
      int quantity = e['productQuantity'];
      double productTotalPrice = productprice * quantity;
      allproductprice += productTotalPrice;
    }
    print(allproductprice);
    return allproductprice;
  }

  // productDelete(e) {
  //   if (itemData.length > 0) {
  //     e.removeAt(e);
  //     return e;
  //   }
  //   notifyListeners();
  // }
}
