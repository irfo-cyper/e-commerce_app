import 'package:flutter/material.dart';

class MyInputField extends StatelessWidget {
  final VoidCallback onTap;
  // final String labelText;
  // final TextEditingController controller;
  // final bool obscureText;
  // final IconData symBol;
  final TextInputType kyBord;
  final String hintText;
  // final double wDth;
  // final FormFieldValidator valiDator;
  MyInputField({
    required this.onTap,
    // required this.controller,
    required this.kyBord,
    //  required  this.symBol,
    required this.hintText,
    // required   this.obscureText,
    //  required  this.wDth,
    // required   this.labelText,
    // required   this.valiDator,
  });
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: onTap,
      // validator: valiDator,
      // controller: controller,
      keyboardType: kyBord,
      // obscureText: obscureText,
      decoration: InputDecoration(
        border: OutlineInputBorder(
            // borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent, width: 1.0),
          // borderRadius: BorderRadius.all(Radius.circular(32.0)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent, width: 2.0),
          // borderRadius: BorderRadius.all(
          //   Radius.circular(32.0),
          // ),
        ),
        fillColor: Colors.transparent,
        filled: true,
        hintStyle: TextStyle(
            fontFamily: 'SF Pro Text', color: Colors.black38, fontSize: 19),
        hintText: hintText,
      ),
    );
  }
}
