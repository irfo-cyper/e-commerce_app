import 'package:ecommerce_app/Components/MyButton.dart';
import 'package:ecommerce_app/Constant/Constants.dart';
import 'package:ecommerce_app/screens/EnterPhone_Page.dart';
import 'package:flutter/material.dart';

class GetStartedCardText extends StatelessWidget {
  const GetStartedCardText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('My', style: Constant.getStarted1Style),
                Text('Shop', style: Constant.getStarted2Style),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 1),
            child: Container(
              width: 250,
              child: Text(
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry',
                style: TextStyle(
                    fontFamily: 'SF Pro Text',
                    fontSize: 14,
                    color: Constant.white),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 70),
            child: Container(
              height: 48,
              width: 239,
              child: MyButton(
                height: 48.0,
                minWidth: 239.0,
                color: Constant.yellowColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                child:
                    Text('Get Started', style: Constant.getStartedButtonStyle),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => EnterPhone()));
                },
              ),
            ),
          )
        ],
      )),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Color(0xFF34283E),
          Color(0xFF845FA1),
        ]),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      height: 291,
    );
  }
}
