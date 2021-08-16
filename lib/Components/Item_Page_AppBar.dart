import 'package:ecommerce_app/Constant/Constants.dart';
import 'package:ecommerce_app/screens/Filter_Page.dart';
import 'package:flutter/material.dart';

AppBar itemPageAppbar(BuildContext context) {
  return AppBar(
    actions: [
      Padding(
        padding: const EdgeInsets.only(right: 25),
        child: InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => FilterPage()));
          },
          child: Icon(
            Icons.add_link_sharp,
            color: Colors.white,
          ),
        ),
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
