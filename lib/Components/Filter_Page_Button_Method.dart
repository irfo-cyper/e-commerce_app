import 'package:ecommerce_app/Components/MyButton.dart';
import 'package:ecommerce_app/Constant/Constants.dart';
import 'package:flutter/material.dart';

Padding filterPageButtonMethod(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(top: 15),
    child: MyButton(
      minWidth: 370,
      child: Text(
        'Results (166)',
        style: TextStyle(
            fontFamily: 'SF Pro Text',
            fontSize: 17,
            color: Colors.white,
            letterSpacing: -0.41,
            fontWeight: FontWeight.w700),
      ),
      height: 48,
      onPressed: () {
        Navigator.pop(context);
      },
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0))),
      color: Constant.yellowColor,
    ),
  );
}
