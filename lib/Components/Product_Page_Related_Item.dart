import 'package:flutter/material.dart';

Container productPageRelatedItemMethod() {
  return Container(
    alignment: Alignment.topLeft,
    padding: EdgeInsets.only(top: 30, left: 20),
    child: Text('Product Related to this item',
        style: TextStyle(
            fontFamily: 'SF Pro Text',
            color: Color(0xFF34283E),
            fontSize: 19,
            fontWeight: FontWeight.w700,
            letterSpacing: -0.49)),
    height: 60,
  );
}
