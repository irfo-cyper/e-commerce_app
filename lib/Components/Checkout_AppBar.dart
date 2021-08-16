import 'package:ecommerce_app/Constant/Constants.dart';
import 'package:flutter/material.dart';

AppBar checkoutAppBar(BuildContext context) {
  return AppBar(
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
    title: Text('Check Out', style: Constant.favoriteAppBarTextStyle),
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
