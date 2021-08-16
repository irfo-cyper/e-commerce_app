import 'package:ecommerce_app/Constant/Constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

Container productPageReviewCard() {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(20)),
      color: Colors.white,
    ),
    margin: EdgeInsets.only(top: 5),
    height: 273,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.only(top: 20, left: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Reviews",
                style: TextStyle(
                  fontSize: 19,
                  color: Color(0xFF34283E),
                  letterSpacing: -0.49,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'SF Pro Text',
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Text('See All', style: Constant.homeseeall),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: Color(0xFF9B9B9B),
                        size: 12,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 1,
        ),
        Container(
          margin: EdgeInsets.only(left: 20, top: 10),
          child: Text(
            'Oleh Chabanov',
            style: TextStyle(
              fontSize: 14,
              color: Color(0xFF34283E),
              letterSpacing: -0.15,
              fontWeight: FontWeight.w600,
              fontFamily: 'SF Pro Text',
            ),
          ),
        ),
        SizedBox(
          height: 1,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.only(left: 15, top: 10),
              width: 100,
              child: RatingBar.builder(
                itemSize: 15,
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
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Text('June 05, 2021',
                  style: TextStyle(
                    fontFamily: 'SF Pro Text',
                    color: Color(0xFF605A65),
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  )),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 50, top: 20),
          child: Text(
              'I’m old (rolling through my 50’s). But, this is my daughter in law’s favorite color right now.❤️ So I wear it whenever we hang out! She’s my fashion consultant who keeps me on trend🤣',
              style: TextStyle(
                  fontFamily: 'SF Pro Text',
                  color: Color(0xFF605A65),
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  letterSpacing: -0.15)),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 12),
          child: TextButton(
            child: Text('835 people found this helpful',
                style: TextStyle(
                    fontFamily: 'SF Pro Text',
                    color: Color(0xFF9B9B9B),
                    fontSize: 11,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 0.07)),
            onPressed: () {},
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Comment',
                  style: TextStyle(
                      fontFamily: 'SF Pro Text',
                      color: Color(0xFF34283E),
                      decoration: TextDecoration.underline,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      letterSpacing: -0.15)),
              Row(
                children: [
                  Text('Helpfull',
                      style: TextStyle(
                        fontFamily: 'SF Pro Text',
                        color: Color(0xFF9B9B9B),
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      )),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.favorite_outline_outlined,
                    color: Color(0xFF9B9B9B),
                  )
                ],
              )
            ],
          ),
        )
      ],
    ),
  );
}
