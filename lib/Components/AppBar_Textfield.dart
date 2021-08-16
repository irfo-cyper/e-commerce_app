import 'package:ecommerce_app/Constant/Constants.dart';
import 'package:flutter/material.dart';

class HomeTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 1),
      child: Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              offset: Offset(0, 10),
              blurRadius: 50,
              color: Colors.blue.withOpacity(0.1)),
        ], color: Colors.white, borderRadius: BorderRadius.circular(30)),
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        padding: EdgeInsets.only(top: 2, left: 20),
        height: 54,
        child: TextField(
          textAlign: TextAlign.start,
          decoration: InputDecoration(
            hintStyle: Constant.homeSearchBarStyle,
            prefixIconConstraints: BoxConstraints(minWidth: 10, maxHeight: 25),
            prefixIcon: Icon(Icons.search, color: Color(0xFF9B9B9B), size: 24),
            hintText: 'What are you looking for?',
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
