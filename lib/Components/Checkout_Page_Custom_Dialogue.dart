import 'package:ecommerce_app/Components/MyButton.dart';
import 'package:ecommerce_app/Constant/Constants.dart';
import 'package:flutter/material.dart';

class CustomDialog extends StatelessWidget {
  final String title;
  const CustomDialog({required this.title});
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(17)),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: dialogContent(context),
    );
  }

  dialogContent(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.only(
            top: 0,
            bottom: 16,
            left: 16,
            right: 16,
          ),
          decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10.0,
                    offset: Offset(0.0, 10.0))
              ]),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Color(0xFF34283E),
                    Color(0xFF845FA1),
                  ]),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(300),
                      bottomRight: Radius.circular(300)),
                  shape: BoxShape.rectangle,
                ),
                height: 150,
                width: 300,
                child: Image.asset(
                  'images/successcheck.png',
                  width: 60,
                  height: 60,
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  'Success',
                  style: TextStyle(
                      fontFamily: 'SF Pro Text',
                      fontSize: 25,
                      color: Color(0xFF34283E),
                      letterSpacing: 0.35,
                      fontWeight: FontWeight.w700),
                ),
              ),
              Container(
                width: 259,
                height: 40,
                margin: EdgeInsets.only(top: 20, left: 40),
                // padding: EdgeInsets.only(top: 20),
                child: Text(
                  'Your order will be delivered soon. It can be tracked in the "Orders" section.',
                  style: TextStyle(
                      fontFamily: 'SF Pro Text',
                      fontSize: 14,
                      color: Color(0xFF605A65),
                      letterSpacing: -0.15,
                      fontWeight: FontWeight.w400),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(top: 15),
                  child: MyButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    color: Constant.yellowColor,
                    onPressed: () {},
                    minWidth: 263,
                    child: Text(
                      'Continue Shopping',
                      style: TextStyle(
                          fontFamily: 'SF Pro Text',
                          fontSize: 17,
                          color: Colors.white,
                          letterSpacing: -0.41,
                          fontWeight: FontWeight.w700),
                    ),
                    height: 48,
                  )),
              Container(
                margin: EdgeInsets.only(top: 5),
                alignment: Alignment.center,
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Go To Orders',
                      style: TextStyle(
                          fontFamily: 'SF Pro Text',
                          fontSize: 17,
                          color: Color(0xFF9B9B9B),
                          letterSpacing: -0.41,
                          fontWeight: FontWeight.w700),
                    )),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
