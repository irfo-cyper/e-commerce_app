import 'package:flutter/material.dart';

class GetStartedStack2 extends StatelessWidget {
  const GetStartedStack2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 255, left: 150),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(100),
        ),
        color: Color(0xFFE7B944).withOpacity(0.6),
      ),
      height: 100,
    );
  }
}
