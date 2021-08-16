import 'package:ecommerce_app/Constant/Constants.dart';
import 'package:flutter/material.dart';

class FavoritePriceSortContainer extends StatelessWidget {
  const FavoritePriceSortContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Text(
              '5 Items',
              style: TextStyle(
                  fontFamily: 'SF Pro Text',
                  letterSpacing: -0.49,
                  fontWeight: FontWeight.w700,
                  fontSize: 19,
                  color: Color(0xFF34283E)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Row(
              children: [
                Text(
                  'Sort by:',
                  style: Constant.homeseeallarrow,
                ),
                SizedBox(
                  width: 3,
                ),
                Text('Price: lowest to high',
                    style: Constant.favoriteSortprice),
                Image.asset(
                  'images/arrowdown.png',
                  width: 20,
                  height: 20,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
