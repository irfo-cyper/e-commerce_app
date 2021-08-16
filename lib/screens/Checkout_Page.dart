import 'package:ecommerce_app/Components/Checkout_AppBar.dart';
import 'package:ecommerce_app/Components/Checkout_Page_Delivery_Method.dart';
import 'package:ecommerce_app/Components/Checkout_Page_Pay_Card.dart';
import 'package:ecommerce_app/Components/Checkout_Page_Shipping_Address_Card_Method.dart';
import 'package:ecommerce_app/model/Cart_Model.dart';
import 'package:ecommerce_app/model/Checkout_Model.dart';
import 'package:flutter/material.dart';

final List<CartModel> cartData = CartModel.cartData;

class CheckoutPage extends StatefulWidget {
  static String screenId = "/CheckoutPage";
  @override
  _CheckoutPageState createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: checkoutAppBar(context),
      backgroundColor: Color(0xFFF4F3F4),
      body: SafeArea(
        child: Stack(
          children: [
            shippingAddressCardMethod(),
            Positioned(
              top: 75,
              child: Column(
                  children: checkoutAddress
                      .map(
                        (e) => Container(
                          height: 92,
                          width: 410,
                          child: Card(
                            color: Colors.white,
                            margin: EdgeInsets.only(
                              left: 17,
                              right: 17,
                            ),
                            elevation: 0.5,
                            shape: RoundedRectangleBorder(
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(10.0))),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 40,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          e['name'],
                                          style: TextStyle(
                                            fontFamily: 'SF Pro Text',
                                            color: Color(0xFF34283E),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        TextButton(
                                          onPressed: () {},
                                          child: Row(
                                            children: [
                                              Text(
                                                'Change',
                                                style: TextStyle(
                                                  fontFamily: 'SF Pro Text',
                                                  color: Color(0xFF34283E),
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 10),
                                                child: Icon(
                                                  Icons
                                                      .arrow_forward_ios_outlined,
                                                  size: 12,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 150,
                                    child: Text(
                                      e['address'],
                                      style: TextStyle(
                                        fontFamily: 'SF Pro Text',
                                        letterSpacing: -0.15,
                                        color: Color(0xFF34283E),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      )
                      .toList()),
            ),
            Positioned(
              top: 190,
              child: checkoutPageDeliveryMethod(),
            ),
            Positioned(
              top: 235,
              child: Container(
                height: 92,
                width: 400,
                child: Row(
                    children: checkoutDeliveryMethod
                        .map((e) => Container(
                              height: 93,
                              width: 130,
                              child: Card(
                                color: Colors.white,
                                margin: EdgeInsets.only(
                                  left: 15,
                                ),
                                elevation: 0.5,
                                shape: RoundedRectangleBorder(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(10.0))),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(e['image'],
                                        height: 16,
                                        width: 71,
                                        fit: BoxFit.fill),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Text(e['price'],
                                        style: TextStyle(
                                            fontFamily: 'SF Pro Text',
                                            fontWeight: FontWeight.w600,
                                            fontSize: 14,
                                            letterSpacing: -0.15,
                                            color: Color(0xFF34283E))),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(e['deliverydays'],
                                        style: TextStyle(
                                            fontFamily: 'SF Pro Text',
                                            fontWeight: FontWeight.normal,
                                            fontSize: 12,
                                            color: Color(0xFF9B9B9B))),
                                    SizedBox(
                                      height: 2,
                                    ),
                                  ],
                                ),
                              ),
                            ))
                        .toList()),
              ),
            ),
            Positioned(
                top: 360,
                child: Container(
                  margin: EdgeInsets.only(left: 15),
                  width: 410,
                  height: 23,
                  child: Row(
                    children: [
                      Image.asset(
                        'images/creditcardicon.png',
                        width: 24,
                        height: 24,
                      ),
                      SizedBox(
                        width: 7,
                      ),
                      Text(
                        'Payment Method',
                        style: TextStyle(
                            fontFamily: 'SF Pro Text',
                            color: Color(0xFF34283E),
                            fontSize: 19,
                            fontWeight: FontWeight.w700,
                            letterSpacing: -0.49),
                      )
                    ],
                  ),
                )),
            Positioned(
                top: 410,
                child: Container(
                  height: 59,
                  width: 405,
                  child: Card(
                    color: Colors.white,
                    margin: EdgeInsets.only(
                      left: 15,
                      right: 15,
                    ),
                    elevation: 0.5,
                    shape: RoundedRectangleBorder(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10.0))),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            'images/mastercard.png',
                            height: 27,
                            width: 36,
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            height: 19,
                            width: 186,
                            child: Text(
                              '**** **** **** 5678',
                              style: TextStyle(
                                fontFamily: 'SF Pro Text',
                                letterSpacing: 0.85,
                                color: Color(0xFF34283E),
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Row(
                              children: [
                                Text(
                                  'Change',
                                  style: TextStyle(
                                    color: Color(0xFF34283E),
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 10),
                                  child: Icon(
                                    Icons.arrow_forward_ios_outlined,
                                    size: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )),
            CheckoutPagePayCard(),
          ],
        ),
      ),
    );
  }
}
