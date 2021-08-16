import 'package:flutter/material.dart';

Container featuredText() {
  return Container(
    alignment: Alignment.centerLeft,
    margin: EdgeInsets.only(top: 10, left: 20),
    child: Text('Featured',
        style: TextStyle(
            fontFamily: 'SF Pro Text',
            fontSize: 19,
            fontWeight: FontWeight.bold,
            letterSpacing: -0.49,
            color: Color(0xFF34283E))),
  );
}
