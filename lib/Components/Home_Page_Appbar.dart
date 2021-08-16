import 'package:ecommerce_app/Constant/Constants.dart';
import 'package:flutter/material.dart';

AppBar homeAppBar() {
  return AppBar(
    leading: Icon(Icons.menu_outlined, color: Colors.white),
    actions: [
      Padding(
        padding: const EdgeInsets.only(right: 20),
        child: Icon(
          Icons.notification_add,
          color: Colors.white,
        ),
      )
    ],
    elevation: 0,
    centerTitle: true,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('My', style: Constant.homeAppBarTextStyle),
        Text('Shop', style: Constant.homeAppBarTextStyle2),
      ],
    ),
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
