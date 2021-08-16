import 'package:ecommerce_app/Components/MyButton.dart';
import 'package:ecommerce_app/Constant/Constants.dart';
import 'package:ecommerce_app/screens/Dashboard_page.dart';
import 'package:ecommerce_app/screens/EnterPhone_Page.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Verification extends StatefulWidget {
  static String screenId = "/Verification";

  @override
  _VerificationState createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, // transparent status bar
    ));
    return Scaffold(
        backgroundColor: Color(0xFFE5E5E5),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                child: Center(
                  child: Container(
                    margin: const EdgeInsets.only(top: 50, right: 180),
                    width: 150,
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Verification Code',
                      style: Constant.enterphonetext1,
                    ),
                  ),
                ),
                height: 197,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(250),
                    ),
                    gradient: LinearGradient(colors: [
                      Color(0xFF34283E),
                      Color(0xFF845FA1),
                    ])),
              ),
              Container(
                // color: Colors.amber,
                child: Column(
                  children: [
                    Container(
                        padding: const EdgeInsets.only(top: 30),
                        width: 327,
                        height: 55,
                        child: Text('Please enter Code send to',
                            style: Constant.entercodetext)),
                    Container(
                      width: 327,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '+380991234567',
                            style: TextStyle(
                                fontFamily: 'SF Pro Text',
                                fontSize: 17,
                                color: Color(0xFF34283E),
                                fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 3),
                            child: TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => EnterPhone()));
                                },
                                child: Text(
                                  'Change Phone Number',
                                  style: TextStyle(
                                    fontFamily: 'SF Pro Text',
                                    fontSize: 12,
                                    color: Color(0xFF34283E),
                                    decoration: TextDecoration.underline,
                                  ),
                                )),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    VerificationCode(
                      underlineWidth: 2,
                      digitsOnly: true,
                      textStyle: TextStyle(
                          fontFamily: 'SF Pro Text',
                          fontSize: 25.0,
                          color: Color(0xFF605A65)),
                      underlineColor: Color(0xFF46AB62),
                      keyboardType: TextInputType.number,
                      length: 4,
                      onCompleted: (String value) {},
                      onEditing: (bool value) {},
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    MyButton(
                      height: 64.0,
                      minWidth: 327.0,
                      color: Constant.yellowColor,
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.0))),
                      child: Text('Send Verification Code',
                          style: Constant.getStartedButtonStyle),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DashboardPage()));
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Resend Code',
                        style: TextStyle(
                            fontFamily: 'SF Pro Text',
                            color: Color(0xFF9B9B9B),
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            letterSpacing: -0.41),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
