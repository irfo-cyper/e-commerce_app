import 'package:flutter/material.dart';

Container categoriesFilterPageMethod() {
  return Container(
    alignment: Alignment.centerLeft,
    margin: EdgeInsets.only(top: 20, left: 20),
    child: Text(
      'Categories',
      style: TextStyle(
        fontSize: 14,
        color: Color(0xFF9B9B9B),
        letterSpacing: -0.15,
        fontWeight: FontWeight.w600,
        fontFamily: 'SF Pro Text',
      ),
    ),
  );
}
