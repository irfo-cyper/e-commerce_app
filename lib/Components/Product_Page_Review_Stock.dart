import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

Padding productStockandReviews() {
  return Padding(
    padding: const EdgeInsets.only(left: 15, top: 10, right: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              width: 100,
              child: RatingBar.builder(
                itemSize: 13,
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
            Text('8 Reviews',
                style: TextStyle(
                  fontFamily: 'SF Pro Text',
                  color: Color(0xFF605A65),
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                ))
          ],
        ),
        // productStock > 0
        //     ?
        Text('In Stock',
            style: TextStyle(
              fontFamily: 'SF Pro Text',
              color: Color(0xFF46AB62),
              fontSize: 12,
              fontWeight: FontWeight.w700,
            ))
        // : Text('Out Of Stock',
        //     style: TextStyle(
        //       fontFamily: 'SF Pro Text',
        //       color: Color(0xFFD80C0C),
        //       fontSize: 12,
        //       fontWeight: FontWeight.w700,
        //     ))
      ],
    ),
  );
}
