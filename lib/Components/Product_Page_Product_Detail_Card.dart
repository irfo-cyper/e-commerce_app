import 'package:flutter/material.dart';

Container productPageProductDetailCard() {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(20)),
      color: Colors.white,
    ),
    margin: EdgeInsets.only(top: 5),
    height: 175,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.only(top: 30, left: 20),
          child: Text(
            "Product Detail's",
            style: TextStyle(
              fontSize: 19,
              color: Color(0xFF34283E),
              letterSpacing: -0.49,
              fontWeight: FontWeight.w700,
              fontFamily: 'SF Pro Text',
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          margin: EdgeInsets.only(left: 20, right: 20),
          child: Text(
            "Women's Casual V-Neck Pullover Sweater Long Sleeved Sweater Top with High Low Hemline is going to be the newest staple in your wardrobe! Living up to its namesake, this sweater is unbelievably soft, li...",
            style: TextStyle(
              fontSize: 14,
              color: Color(0xFF605A65),
              letterSpacing: -0.15,
              fontWeight: FontWeight.w400,
              fontFamily: 'SF Pro Text',
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 20, left: 200),
          child: Image.asset('images/arrowdown.png'),
          height: 20,
          width: 25,
        ),
      ],
    ),
  );
}
