import 'package:flutter/material.dart';

Container gradientCard() {
  return Container(
    alignment: Alignment.topCenter,
    width: double.infinity,
    height: 33,
    decoration: BoxDecoration(
      gradient: LinearGradient(
        colors: [
          Color(0xFF34283E),
          Color(0xFF845FA1),
        ],
      ),
    ),
  );
}
