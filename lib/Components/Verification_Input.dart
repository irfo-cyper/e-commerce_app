import 'package:flutter/material.dart';

class VerificationField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextField(
        textAlign: TextAlign.center,
        decoration: new InputDecoration(
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xFF46AB62)),
            ),
            hintStyle: TextStyle(
                letterSpacing: 0.35,
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Color(0xFF605A65)),
            hintText: '6'),
      ),
    );
  }
}
