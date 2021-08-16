import 'package:flutter/material.dart';

Container productPageProductName(productName) {
  return Container(
    height: 46,
    width: 253,
    margin: EdgeInsets.only(top: 15, right: 115),
    child: Text(productName,
        style: TextStyle(
          fontFamily: 'SF Pro Text',
          color: Color(0xFF34283E),
          fontSize: 19,
          letterSpacing: -0.49,
          fontWeight: FontWeight.w400,
        )),
  );
}
