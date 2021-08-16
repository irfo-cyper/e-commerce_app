import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce_app/Builders/Product_Page_Related_Product_Builder.dart';
import 'package:ecommerce_app/Components/MyButton.dart';
import 'package:ecommerce_app/Components/Product_Page_Product_Detail_Card.dart';
import 'package:ecommerce_app/Components/Product_Page_Product_Name.dart';
import 'package:ecommerce_app/Components/Product_Page_Related_Item.dart';
import 'package:ecommerce_app/Components/Product_Page_Review_Card.dart';
import 'package:ecommerce_app/Components/Product_Page_Review_Stock.dart';
import 'package:ecommerce_app/Constant/Constants.dart';
import 'package:ecommerce_app/Provider/Selected_Product_Provider.dart';
import 'package:ecommerce_app/screens/Cart_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductPage extends StatefulWidget {
  static String screenId = "/ProductPage";
  final productImage;
  final productPrice;
  final productDiscountPrice;
  final productName;
  final productId;
  final productQuantity;
  // final productStock;

  ProductPage(
      {this.productImage,
      this.productQuantity,
      this.productDiscountPrice,
      this.productId,
      this.productName,
      // this.productStock,
      this.productPrice});

  @override
  _ProductPageState createState() => _ProductPageState(
      this.productImage,
      this.productDiscountPrice,
      this.productName,
      this.productPrice,
      // this.productStock,
      this.productId,
      this.productQuantity);
}

class _ProductPageState extends State<ProductPage> {
  var productImage, productDiscountPrice, productName, productPrice, productId;

  int productQuantity
      //  productStock
      ;
  _ProductPageState(
    this.productImage,
    this.productDiscountPrice,
    this.productName,
    this.productPrice,
    this.productId,
    this.productQuantity,
    // this.productStock,
  );

  @override
  Widget build(BuildContext context) {
    var providerRead = Provider.of<CartItemProvider>(context, listen: false);
    var productInfo = new Map();
    productInfo['productImage'] = productImage;
    productInfo['productDiscountPrice'] = productDiscountPrice;
    productInfo['productPrice'] = productPrice;
    productInfo['productName'] = productName;
    productInfo['productId'] = productId;
    productInfo['productQuantity'] = productQuantity;
    // productInfo['productStock'] = productStock;
    print(productInfo);

    return Scaffold(
      bottomNavigationBar: Container(
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.transparent),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
                topRight: Radius.circular(35),
              )),
          height: 98,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 40),
                child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back,
                      color: Color(0xFF9B9B9B),
                    )),
              ),
              SizedBox(
                width: 30,
              ),
              MyButton(
                minWidth: 215,
                child: Text(
                  'Add To Cart',
                  style: TextStyle(
                      fontFamily: 'SF Pro Text',
                      fontSize: 17,
                      color: Colors.white,
                      letterSpacing: -0.41,
                      fontWeight: FontWeight.w700),
                ),
                height: 48,
                onPressed: () {
                  providerRead.cartProductData(productInfo);
                  print(productInfo);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CartPage()));
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                color: Constant.yellowColor,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40),
                child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.favorite_outline_outlined,
                      color: Colors.black,
                    )),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Color(0xFFE5E5E5),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Stack(
              children: [
                CarouselSlider(
                    carouselController: _controller,
                    options: CarouselOptions(
                        enlargeCenterPage: false,
                        aspectRatio: 2.0,
                        onPageChanged: (index, reason) {
                          setState(() {
                            _current = index;
                          });
                        },
                        height: 375),
                    items: productImg
                        .map((e) => Image.asset(
                              e,
                              fit: BoxFit.cover,
                            ))
                        .toList()),
                Positioned(
                  top: 345,
                  left: 175,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: productImg
                          .asMap()
                          .entries
                          .map((e) => InkWell(
                                onTap: () => _controller.animateToPage(e.key),
                                child: Container(
                                  width: 10.0,
                                  height: 10.0,
                                  margin: EdgeInsets.symmetric(
                                      vertical: 8.0, horizontal: 4.0),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: (Theme.of(context).brightness ==
                                                  Brightness.dark
                                              ? Colors.white.withOpacity(1)
                                              : Colors.white)
                                          .withOpacity(
                                              _current == e.key ? 0.9 : 0.4)),
                                ),
                              ))
                          .toList()),
                ),
              ],
            ),
            Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.transparent, width: 0),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20))),
                height: 320,
                child: Column(
                  children: [
                    productStockandReviews(),
                    productPageProductName(productName),
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(left: 15),
                      height: 31,
                      child: Row(
                        children: [
                          Text(
                            productDiscountPrice != '0'
                                ? productDiscountPrice
                                : productPrice,
                            style: TextStyle(
                              fontFamily: 'SF Pro Text',
                              fontSize: 25,
                              fontWeight: FontWeight.w700,
                              letterSpacing: -0.41,
                              color: productDiscountPrice == '0'
                                  ? Color(0xFF34283E)
                                  : Color(0xFFCE3E3E),
                            ),
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 1),
                            child: Text(
                              productDiscountPrice != '0' ? productPrice : '',
                              style: TextStyle(
                                fontFamily: 'SF Pro Text',
                                color: Color(0xFF9B9B9B),
                                decoration: TextDecoration.lineThrough,
                                fontSize: 20,
                                letterSpacing: 0.35,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(top: 15, left: 15),
                      child: Text(
                        'Colors',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFF9B9B9B),
                          letterSpacing: -0.15,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'SF Pro Text',
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 15, right: 15, top: 15),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: productColorSelect
                              .map((e) => InkWell(
                                    onTap: () {
                                      setState(() {
                                        currentId = e['selected'];
                                      });
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                          color: Colors.white,
                                          border: Border.all(
                                              color: e['selected'] == currentId
                                                  ? Color(0xFFE7B944)
                                                  : Colors.white,
                                              width: 2)),
                                      height: 47,
                                      width: 47,
                                      child: Image.asset(e['image']),
                                    ),
                                  ))
                              .toList()),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(top: 15, left: 15),
                      child: Text(
                        'Sizes',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFF9B9B9B),
                          letterSpacing: -0.15,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'SF Pro Text',
                        ),
                      ),
                    ),
                    Row(
                        children: sizeSelecterFilter
                            .map((e) => InkWell(
                                  onTap: () {
                                    setState(() {
                                      if (e['selected'] == true) {
                                        e['selected'] = false;
                                      } else {
                                        e['selected'] = true;
                                      }
                                    });
                                  },
                                  child: Container(
                                    alignment: Alignment.center,
                                    child: Text(
                                      e['title'],
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Color(0xFF605A65),
                                        letterSpacing: -0.15,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'SF Pro Text',
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Color(0xFFE1E1E1), width: 1),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                      color: e['selected'] == true
                                          ? Color(0xFFE7B944)
                                          : Colors.white,
                                    ),
                                    margin: EdgeInsets.only(top: 15, left: 20),
                                    width: 47,
                                    height: 47,
                                  ),
                                ))
                            .toList()),
                  ],
                )),
            productPageProductDetailCard(),
            productPageReviewCard(),
            productPageRelatedItemMethod(),
            ProductPageRelatedProuctBuilder(),
          ],
        ),
      ),
    );
  }

  final CarouselController _controller = CarouselController();

  int _current = 0;
  var currentId = 1;
  List productImg = [
    'images/productimg1.jpg',
    'images/productimg2.jpg',
    'images/productimg3.jpg'
  ];
  List productColorSelect = [
    {'image': 'images/productcolor.png', 'selected': 1},
    {'image': 'images/productcolor1.png', 'selected': 2},
    {'image': 'images/productcolor2.png', 'selected': 3},
    {'image': 'images/productcolor3.png', 'selected': 4},
    {'image': 'images/productcolor4.png', 'selected': 5},
    {'image': 'images/productcolor4.png', 'selected': 6},
  ];
  List sizeSelecterFilter = [
    {"title": 'XXS', 'selected': true},
    {"title": 'XS', 'selected': false},
    {"title": 'S', 'selected': false},
    {"title": 'M', 'selected': false},
    {"title": 'L', 'selected': false},
    {"title": 'XL', 'selected': false},
  ];
}
