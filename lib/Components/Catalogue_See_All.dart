import 'package:ecommerce_app/Constant/Constants.dart';
import 'package:flutter/material.dart';

Container catalogueSeeAll() {
  return Container(
    margin: EdgeInsets.only(left: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Catalogue',
            style: TextStyle(
                fontFamily: 'SF Pro Text',
                fontSize: 19,
                fontWeight: FontWeight.bold,
                letterSpacing: -0.49,
                color: Color(0xFF34283E))),
        TextButton(
          onPressed: () {},
          child: Row(
            children: [
              Text('See All', style: Constant.homeseeall),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Icon(
                  Icons.arrow_forward_ios,
                  color: Color(0xFF9B9B9B),
                  size: 12,
                ),
              )
            ],
          ),
        ),
      ],
    ),
  );
}
