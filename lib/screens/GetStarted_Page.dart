import 'package:ecommerce_app/Components/Cover_Image.dart';
import 'package:ecommerce_app/Components/GetStarted_Card_Text.dart';
import 'package:ecommerce_app/Components/GetStarted_Stack2.dart';
import 'package:flutter/material.dart';

class GetStarted extends StatelessWidget {
  static String screenId = "/GetStarted";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          GetStartedCoverImage(),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Stack(
                children: [GetStartedStack2()],
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GetStartedCardText(),
            ],
          ),
        ],
      ),
    );
  }
}
