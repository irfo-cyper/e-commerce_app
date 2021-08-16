import 'package:ecommerce_app/Components/Checkout_Page_Custom_Dialogue.dart';
import 'package:ecommerce_app/Components/MyButton.dart';
import 'package:ecommerce_app/Constant/Constants.dart';
import 'package:flutter/material.dart';

class CheckoutPagePayCard extends StatelessWidget {
  const CheckoutPagePayCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(0.0, 1.0),
                  blurRadius: 1.0,
                ),
              ],
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
                topRight: Radius.circular(35),
              )),
          height: 202,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 30, right: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Items',
                      style: TextStyle(
                          fontFamily: 'SF Pro Text',
                          color: Color(0xFF9B9B9B),
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          letterSpacing: -0.15),
                    ),
                    Text(
                      '\$239.8',
                      style: TextStyle(
                          fontFamily: 'SF Pro Text',
                          color: Color(0xFF9B9B9B),
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          letterSpacing: -0.15),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 30, right: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Delivery',
                      style: TextStyle(
                          fontFamily: 'SF Pro Text',
                          color: Color(0xFF9B9B9B),
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          letterSpacing: -0.15),
                    ),
                    Text(
                      '\$18',
                      style: TextStyle(
                          fontFamily: 'SF Pro Text',
                          color: Color(0xFF9B9B9B),
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          letterSpacing: -0.15),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 30, right: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total price',
                      style: Constant.cartTotalPrice,
                    ),
                    Text(
                      '\$257.8',
                      style: Constant.cartTotalPrice,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              MyButton(
                minWidth: 350,
                child: Text(
                  'Pay',
                  style: TextStyle(
                      fontFamily: 'SF Pro Text',
                      fontSize: 17,
                      color: Colors.white,
                      letterSpacing: -0.41,
                      fontWeight: FontWeight.w700),
                ),
                height: 48,
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) =>
                          CustomDialog(title: 'title'));
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                color: Constant.yellowColor,
              )
            ],
          ),
        ),
      ],
    );
  }
}
