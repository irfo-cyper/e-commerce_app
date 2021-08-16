import 'package:flutter/material.dart';

Container checkoutPageDeliveryMethod() {
  return Container(
    margin: EdgeInsets.only(left: 15),
    width: 410,
    height: 23,
    child: Row(
      children: [
        Image.asset(
          'images/truck.png',
          width: 24,
          height: 24,
        ),
        SizedBox(
          width: 7,
        ),
        Text(
          'Delivery Method',
          style: TextStyle(
              fontFamily: 'SF Pro Text',
              color: Color(0xFF34283E),
              fontSize: 19,
              fontWeight: FontWeight.w700,
              letterSpacing: -0.49),
        )
      ],
    ),
  );
}
