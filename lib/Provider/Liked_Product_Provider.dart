import 'package:flutter/material.dart';

class LikedProductProvider extends ChangeNotifier {
  List likedProductsData = [];

  likedProductData(likedProductInfo) {
    likedProductsData.add(likedProductInfo);
    print(likedProductInfo);
    notifyListeners();
  }
}
