import 'package:ecommerce_app/Constant/Constants.dart';
import 'package:ecommerce_app/Provider/Liked_Product_Provider.dart';
import 'package:ecommerce_app/model/Featured_Model.dart';
import 'package:ecommerce_app/screens/Product_Page.dart';
import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:provider/provider.dart';

final List<FeaturedModel> featured = FeaturedModel.featured;

GridView featuredGridBuilder(context) {
  var providerLikedProductRead =
      Provider.of<LikedProductProvider>(context, listen: false);

  return GridView.builder(
      physics: ScrollPhysics(),
      itemCount: featured.length,
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 210,
          crossAxisSpacing: 5,
          mainAxisSpacing: 10,
          crossAxisCount: 2),
      itemBuilder: (context, index) {
        double discount = double.parse(featured[index].discountprice);
        double price = double.parse(featured[index].price);
        int percent = (price - discount / 100 * price).round();
        var productImage = featured[index].image;
        var discountPrice = featured[index].discountprice;
        var productPrice = featured[index].price;
        var productName = featured[index].name;
        var productId = featured[index].id;
        // int productStock = featured[index].stock;

        int productQuantity = int.parse(featured[index].quantity);
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProductPage(
                              productImage: productImage,
                              productName: productName,
                              productDiscountPrice: discountPrice,
                              productPrice: productPrice,
                              productId: productId,
                              // productStock: productStock,
                              productQuantity: productQuantity),
                        ));
                  },
                  child: Card(
                    child: Container(
                      height: 120,
                      width: 163,
                      child: Image(
                        image: AssetImage(featured[index].image),
                      ),
                    ),
                  ),
                ),
                featured[index].discountprice != '0'
                    ? Container(
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
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10)),
                        ),
                      )
                    : Container(
                        width: 0,
                        height: 0,
                      ),
                Card(
                  margin: EdgeInsets.only(top: 105, left: 130),
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
                          var likedProductInfo = new Map();
                          likedProductInfo['productImage'] = productImage;
                          likedProductInfo['productDiscountPrice'] =
                              discountPrice;
                          likedProductInfo['productPrice'] = productPrice;
                          likedProductInfo['productName'] = productName;
                          likedProductInfo['productId'] = productId;
                          likedProductInfo['productQuantity'] = productQuantity;
                          providerLikedProductRead
                              .likedProductData(likedProductInfo);
                        }),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 89),
              child: Container(
                width: 80,
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
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 8, top: 3, bottom: 3),
              width: 170,
              child: Text(
                featured[index].name,
                style: Constant.featuredBuilderTextStyle,
              ),
            ),
            Container(
              height: 20,
              margin: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.041, right: 20),
              child: Row(
                children: [
                  Text(
                    featured[index].discountprice != '0'
                        ? featured[index].discountprice
                        : featured[index].price,
                    style: TextStyle(
                      fontFamily: 'SF Pro Text',
                      fontSize: 17,
                      fontWeight: FontWeight.w700,
                      letterSpacing: -0.41,
                      color: featured[index].discountprice == '0'
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
                        featured[index].discountprice != '0'
                            ? featured[index].price
                            : '',
                        style: Constant.featuredBuilderPriceDiscountStyle),
                  ),
                ],
              ),
            )
          ],
        );
      });
}
