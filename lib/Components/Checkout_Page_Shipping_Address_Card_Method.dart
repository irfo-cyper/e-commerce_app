import 'package:flutter/material.dart';

Container shippingAddressCardMethod() {
  return Container(
    height: 69,
    child: Padding(
      padding: const EdgeInsets.only(left: 15, top: 10),
      child: Row(
        children: [
          Image.asset(
            'images/locationmarker.png',
            width: 24,
            height: 24,
          ),
          SizedBox(
            width: 7,
          ),
          Text(
            'Shipping Address',
            style: TextStyle(
                fontFamily: 'SF Pro Text',
                color: Color(0xFF34283E),
                fontSize: 19,
                fontWeight: FontWeight.w700,
                letterSpacing: -0.49),
          )
        ],
      ),
    ),
  );
}
