import 'package:flutter/material.dart';

Container selectedRangeLimitDataMethod(selectedRange) {
  return Container(
    margin: EdgeInsets.only(top: 5),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(width: 1, color: Color(0xFFE1E1E1)),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10))),
          width: 187,
          height: 48,
          child: Text(
            '\$${selectedRange.start.round()}',
            style: TextStyle(
              fontSize: 14,
              color: Color(0xFF605A65),
              letterSpacing: -0.15,
              fontWeight: FontWeight.w600,
              fontFamily: 'SF Pro Text',
            ),
          ),
        ),
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              border: Border.all(width: 1, color: Color(0xFFE1E1E1)),
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10))),
          width: 187,
          height: 48,
          child: Text(
            '\$${selectedRange.end.round()}',
            style: TextStyle(
              fontSize: 14,
              color: Color(0xFF605A65),
              letterSpacing: -0.15,
              fontWeight: FontWeight.w600,
              fontFamily: 'SF Pro Text',
            ),
          ),
        ),
      ],
    ),
  );
}
