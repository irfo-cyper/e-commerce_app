import 'package:ecommerce_app/Components/Favorite_AppBar.dart';
import 'package:ecommerce_app/Components/Favorite_Price_Sort_Container.dart';
import 'package:ecommerce_app/Constant/Constants.dart';
import 'package:ecommerce_app/Provider/Liked_Product_Provider.dart';
import 'package:ecommerce_app/model/Favorite_Model.dart';
import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:provider/provider.dart';

// final List<FavoriteModel> favorites = FavoriteModel.favorites;

class FavouritePage extends StatefulWidget {
  static String screenId = "/FavouritePage";

  @override
  _FavouritePageState createState() => _FavouritePageState();
}

class _FavouritePageState extends State<FavouritePage> {
  @override
  Widget build(BuildContext context) {
    List likedProductData =
        context.watch<LikedProductProvider>().likedProductsData;

    return Scaffold(
      backgroundColor: Color(0xFFF4F3F4),
      appBar: favoriteAppBar(context),
      body: SingleChildScrollView(
        child: Column(
          children: [
            FavoritePriceSortContainer(),
            Column(
                children: likedProductData
                    .map(
                      (e) => GridView.builder(
                          physics: ScrollPhysics(),
                          itemCount: 1,
                          shrinkWrap: true,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  mainAxisSpacing: 15, crossAxisCount: 2),
                          itemBuilder: (context, index) {
                            double discount =
                                double.parse(e['productDiscountPrice'])
                                    .roundToDouble();
                            double price =
                                double.parse(e['productPrice']).roundToDouble();
                            int percent = (discount * 100 / price).round();
                            return Column(
                              children: [
                                Stack(
                                  children: [
                                    Card(
                                      child: Container(
                                        height: 140,
                                        width: 163,
                                        child: Image(
                                          image: AssetImage(e['productImage']),
                                        ),
                                      ),
                                    ),
                                    e['productDiscountPrice'] != '0'
                                        ? discountCard(percent)
                                        : Container(
                                            width: 0,
                                            height: 0,
                                          ),
                                    Card(
                                      margin:
                                          EdgeInsets.only(top: 125, left: 130),
                                      color: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(color: Colors.white70),
                                        borderRadius: BorderRadius.circular(70),
                                      ),
                                      child: Container(
                                        width: 30,
                                        height: 30,
                                        child: FavoriteButton(
                                            isFavorite: false,
                                            iconColor: Color(0xFFE7B944),
                                            iconSize: 26,
                                            valueChanged: (value) {
                                              value = true;
                                              print(value);
                                            }),
                                      ),
                                    ),
                                    ratingStarMethod(),
                                  ],
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    alignment: Alignment.centerLeft,
                                    width: 158,
                                    child: Text(
                                      e['productName'],
                                      style: Constant.featuredBuilderTextStyle,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 1,
                                ),
                                Expanded(
                                  child: Container(
                                    padding: EdgeInsets.only(left: 24),
                                    alignment: Alignment.centerLeft,
                                    child: Row(
                                      children: [
                                        Text(
                                            e['productDiscountPrice'] != 0
                                                ? e['productDiscountPrice']
                                                : e['productPrice'],
                                            style: TextStyle(
                                              fontFamily: 'SF Pro Text',
                                              fontSize: 17,
                                              fontWeight: FontWeight.w700,
                                              letterSpacing: -0.41,
                                              color:
                                                  e['productDiscountPrice'] == 0
                                                      ? Color(0xFF34283E)
                                                      : Color(0xFFCE3E3E),
                                            )),
                                        SizedBox(
                                          width: 2,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 1),
                                          child: Text(
                                              e['productDiscountPrice'] != 0
                                                  ? e['productPrice']
                                                  : '',
                                              style: Constant
                                                  .featuredBuilderPriceDiscountStyle),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            );
                          }),
                    )
                    .toList())
          ],
        ),
      ),
    );
  }

  Container ratingStarMethod() {
    return Container(
      padding: EdgeInsets.only(top: 150, left: 2),
      child: RatingBar.builder(
        itemSize: 11,
        initialRating: 4,
        minRating: 1,
        direction: Axis.horizontal,
        allowHalfRating: true,
        itemCount: 5,
        itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
        itemBuilder: (context, _) => Icon(
          Icons.star,
          color: Color(0xFFF2994A),
        ),
        onRatingUpdate: (rating) {
          print(rating);
        },
      ),
    );
  }

  Container discountCard(percent) {
    return Container(
      alignment: Alignment.center,
      child: Text(
        '$percent%',
        style: TextStyle(
          fontSize: 11,
          fontWeight: FontWeight.bold,
          color: Colors.white,
          letterSpacing: 0.07,
          fontFamily: 'SF Pro Text',
        ),
      ),
      height: 20,
      width: 47,
      margin: EdgeInsets.only(left: 4, top: 15),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Color(0xFFDC5546),

          Color(0xFFF49763),
          // Color(0xFFD23A3A),
        ]),
        color: Colors.blue,
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(10), bottomRight: Radius.circular(10)),
      ),
    );
  }
}
