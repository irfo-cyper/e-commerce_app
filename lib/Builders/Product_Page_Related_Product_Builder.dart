import 'package:ecommerce_app/Components/Favourite_Button.dart';
import 'package:ecommerce_app/Constant/Constants.dart';
import 'package:ecommerce_app/model/Featured_Model.dart';
import 'package:ecommerce_app/screens/Product_Page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

final List<FeaturedModel> featured = FeaturedModel.featured;

class ProductPageRelatedProuctBuilder extends StatelessWidget {
  const ProductPageRelatedProuctBuilder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 250,
        padding: EdgeInsets.only(
          left: 15,
        ),
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: featured.length,
            itemBuilder: (context, index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProductPage()));
                        },
                        child: Card(
                          elevation: 0,
                          child: Container(
                            height: 120,
                            width: 163,
                            child: Image(
                              image: AssetImage(featured[index].image),
                            ),
                          ),
                        ),
                      ),
                      FavouriteButton(),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 0),
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
                    margin: EdgeInsets.only(left: 5, top: 2, bottom: 3),
                    width: 170,
                    child: Text(
                      featured[index].name,
                      style: Constant.featuredBuilderTextStyle,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 5),
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
                              color: Color(0xFF34283E)),
                        ),
                      ],
                    ),
                  )
                ],
              );
            }));
  }
}
