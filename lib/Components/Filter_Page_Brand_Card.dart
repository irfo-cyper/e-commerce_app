import 'package:flutter/material.dart';

Container filterPageBrandCardMethod() {
  return Container(
    margin: EdgeInsets.only(top: 15, left: 20, right: 18),
    decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(width: 1, color: Color(0xFFE1E1E1)),
        borderRadius: BorderRadius.all(Radius.circular(10))),
    height: 48,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          alignment: Alignment.centerLeft,
          margin: EdgeInsets.only(left: 20),
          child: Text(
            'Lark & Ro, Astylish, ECOWISH, Angashion',
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
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(right: 15),
            child: Icon(
              Icons.arrow_forward_ios_outlined,
              size: 12,
              color: Color(0xFF605A65),
            )),
      ],
    ),
  );
}
