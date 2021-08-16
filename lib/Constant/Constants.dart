import 'package:flutter/material.dart';

class Constant {
  static Color yellowColor = Color(0xffE7B944);
  static Color primaryColor = Color(0xff5D4470);
  static Color lightColor = Color(0xff715289);
  static Color white = Color(0xffFFFFFF);
  static Color greyColor = Color(0xffA6A6A6);
  static TextStyle getStarted1Style = TextStyle(
      fontFamily: "Montserrat",
      letterSpacing: 2,
      fontWeight: FontWeight.w800,
      fontSize: 31,
      color: Constant.yellowColor);
  static TextStyle homeAppBarTextStyle = TextStyle(
      fontFamily: "Montserrat",
      letterSpacing: 2,
      fontWeight: FontWeight.w800,
      fontSize: 18,
      color: Constant.yellowColor);
  static TextStyle homeAppBarTextStyle2 = TextStyle(
      fontFamily: "Montserrat",
      letterSpacing: 2,
      fontWeight: FontWeight.w800,
      fontSize: 18,
      color: Constant.white);
  static TextStyle getStarted2Style = TextStyle(
      fontFamily: "Montserrat",
      letterSpacing: 2,
      fontWeight: FontWeight.w800,
      fontSize: 31,
      color: Constant.white);
  static TextStyle catalogueAppBarTitleStyle = TextStyle(
      fontFamily: 'SF Pro Text',
      letterSpacing: -0.49,
      fontWeight: FontWeight.w700,
      fontSize: 19,
      color: Constant.white);
  static TextStyle favoriteAppBarTextStyle = TextStyle(
      letterSpacing: -0.49,
      fontWeight: FontWeight.w700,
      fontFamily: 'SF Pro Text',
      fontSize: 19,
      color: Constant.white);
  static TextStyle getStartedButtonStyle = TextStyle(
      fontFamily: 'SF Pro Text',
      fontWeight: FontWeight.w700,
      fontSize: 17,
      color: Constant.white);
  static TextStyle enterphonetext1 = TextStyle(
      fontFamily: 'SF Pro Text',
      color: Color(0xFFFFFFFF),
      letterSpacing: 0.35,
      fontSize: 25,
      fontWeight: FontWeight.w700);
  static TextStyle homeseeall = TextStyle(
    fontFamily: 'SF Pro Text',
    fontSize: 12,
    fontWeight: FontWeight.w700,
    color: Color(0xFF9B9B9B),
  );
  static TextStyle homeseeallarrow = TextStyle(
    fontFamily: 'SF Pro Text',
    fontSize: 12,
    fontWeight: FontWeight.w700,
    color: Color(0xFF9B9B9B),
  );
  static TextStyle favoriteSortprice = TextStyle(
    fontFamily: 'SF Pro Text',
    fontSize: 12,
    fontWeight: FontWeight.w700,
    color: Color(0xFF34283E),
  );
  static TextStyle catalogueColumnBuilderText = TextStyle(
      fontFamily: 'SF Pro Text',
      fontSize: 17,
      color: Color(0xFF34283E),
      fontWeight: FontWeight.w700,
      letterSpacing: -0.41);
  static TextStyle homeSearchBarStyle = TextStyle(
    fontFamily: 'SF Pro Text',
    color: Color(0xFF9B9B9B),
    fontSize: 14,
    fontWeight: FontWeight.w600,
  );
  static TextStyle featuredBuilderTextStyle = TextStyle(
    fontSize: 14,
    fontFamily: 'SF Pro Text',
    fontWeight: FontWeight.w400,
    letterSpacing: -0.15,
    color: Color(0xFF34283E),
  );
  static TextStyle featuredBuilderPriceStyle = TextStyle(
      fontFamily: 'SF Pro Text',
      fontSize: 17,
      fontWeight: FontWeight.w700,
      letterSpacing: -0.41,
      color: Color(0xFF34283E));
  static TextStyle featuredBuilderPriceDiscountStyle = TextStyle(
      fontFamily: 'SF Pro Text',
      decoration: TextDecoration.lineThrough,
      fontSize: 14,
      fontWeight: FontWeight.w400,
      letterSpacing: -0.15,
      color: Color(0xFF9B9B9B));
  static TextStyle profileNameStyle = TextStyle(
      fontFamily: 'SF Pro Text',
      color: Colors.white,
      fontSize: 19,
      fontWeight: FontWeight.w700,
      letterSpacing: -0.49);
  static TextStyle cartTotalPrice = TextStyle(
      fontFamily: 'SF Pro Text',
      fontSize: 19,
      fontWeight: FontWeight.bold,
      letterSpacing: -0.49,
      color: Color(0xFF34283E));
  static TextStyle profileNumberStyle = TextStyle(
      fontFamily: 'SF Pro Text',
      color: Colors.white,
      fontSize: 14,
      fontWeight: FontWeight.w400,
      letterSpacing: -0.15);
  static TextStyle profileCardTitleStyle = TextStyle(
      fontFamily: 'SF Pro Text',
      fontSize: 17,
      color: Color(0xFF34283E),
      fontWeight: FontWeight.w700,
      letterSpacing: -0.41);
  static TextStyle privacyPolicyStyle = TextStyle(
      fontFamily: 'SF Pro Text',
      decoration: TextDecoration.underline,
      fontSize: 12,
      color: Color(0xFF605A65),
      fontWeight: FontWeight.w400,
      letterSpacing: -0.41);

  static LinearGradient cardGradient = LinearGradient(colors: [
    Color(0xFF34283E),
    Color(0xFF845FA1),
  ]);

  static TextStyle enterphonetext2 = TextStyle(
      fontFamily: 'SF Pro Text', fontWeight: FontWeight.w400, fontSize: 17);
  static TextStyle entercodetext = TextStyle(
      color: Color(0xFF605A65),
      fontFamily: 'SF Pro Text',
      fontWeight: FontWeight.w400,
      fontSize: 17);
}
