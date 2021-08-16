import 'package:ecommerce_app/Constant/Constants.dart';
import 'package:flutter/material.dart';

AppBar filterPageAppbar(BuildContext context) {
  return AppBar(
    actions: [
      Padding(
        padding: const EdgeInsets.only(right: 20, top: 1),
        child: Center(
            child: Text(
          'Clear',
          style: TextStyle(
              fontFamily: 'SF Pro Text',
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Colors.white,
              letterSpacing: -0.15),
        )),
      )
    ],
    leading: InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      child: Icon(
        Icons.arrow_back,
        color: Colors.white,
      ),
    ),
    elevation: 0,
    centerTitle: true,
    title: Text('Clothing', style: Constant.favoriteAppBarTextStyle),
    flexibleSpace: Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: <Color>[
            Color(0xFF34283E),
            Color(0xFF845FA1),
          ])),
    ),
  );
}
