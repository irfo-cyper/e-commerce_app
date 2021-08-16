import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final ShapeBorder shape;
  final VoidCallback onPressed;
  final Color color;
  final Widget child;
  final double minWidth;
  final double height;
  MyButton(
      {required this.minWidth,
      required this.child,
      required this.height,
      required this.onPressed,
      required this.shape,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: color,
      shape: shape,
      minWidth: minWidth,
      height: height,

      // minWidth: 239.0,
      // height: 48.0,
      onPressed: onPressed,
      child: child,
    );
  }
}
