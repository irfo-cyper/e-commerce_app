import 'package:ecommerce_app/Components/InputField.dart';
import 'package:ecommerce_app/Components/MyButton.dart';
import 'package:ecommerce_app/Constant/Constants.dart';
import 'package:ecommerce_app/screens/Dashboard_page.dart';
import 'package:ecommerce_app/screens/Verification_Page.dart';
import 'package:flutter/material.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/services.dart';

class EnterPhone extends StatefulWidget {
  static String screenId = "/EnterPhone";

  @override
  _EnterPhoneState createState() => _EnterPhoneState();
}

class _EnterPhoneState extends State<EnterPhone> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, // transparent status bar
    ));
    return Scaffold(
        backgroundColor: Color(0xFFE5E5E5),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Center(
                child: Container(
                  width: 250,
                  margin: const EdgeInsets.only(top: 40, right: 85),
                  child: Text(
                    'What Is Your Phone Number?',
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
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(left: 0),
                width: double.infinity,
                child: Column(
                  children: [
                    Container(
                        padding: const EdgeInsets.only(top: 30),
                        width: 327,
                        height: 70,
                        child: Text(
                            'Please enter your phone number to verify your account',
                            style: Constant.enterphonetext2)),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border:
                                Border.all(color: Color(0xFFCFCFCF), width: 1)),
                        width: 327,
                        height: 64,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 4,
                              child: CountryCodePicker(
                                showDropDownButton: true,
                                initialSelection: 'US',
                              ),
                            ),
                            Expanded(
                              flex: 5,
                              child: MyInputField(
                                onTap: () {},
                                kyBord: TextInputType.number,
                                hintText: '(99) 999 999 99',
                              ),
                            ),
                          ],
                        )),
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
                                builder: (context) => Verification()));
                      },
                    ),
                    SizedBox(
                      height: 23,
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DashboardPage()));
                      },
                      child: Text(
                        'Skip',
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
              ),
            )
          ],
        ));
  }
}
