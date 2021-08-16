import 'package:ecommerce_app/Components/MyButton.dart';
import 'package:ecommerce_app/Constant/Constants.dart';
import 'package:ecommerce_app/Provider/Selected_Product_Provider.dart';
import 'package:ecommerce_app/model/Cart_Model.dart';
import 'package:ecommerce_app/screens/Checkout_Page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

final List<CartModel> cartData = CartModel.cartData;

class CartPage extends StatefulWidget {
  static String screenId = "/CartPage";
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  double allproductprice = 0;
  bool isloading = true;
  List<Widget> newList(data) {
    List<Widget> lst = [];
    for (var e in data) {
      double productprice = e['productDiscountPrice'] != '0'
          ? double.parse(e['productDiscountPrice'])
          : double.parse(e['productPrice']);
      int quantity = e['productQuantity'];
      allproductprice = productprice * quantity;

      lst.add(
        Dismissible(
          direction: DismissDirection.endToStart,
          onDismissed: (index) {
            setState(() {
              // Provider.of(context, listen: false).productDelete(e);
            });
          },
          key: Key(e['productPrice']),
          child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0.0, 0.5),
                    blurRadius: 1.0,
                  ),
                ],
              ),
              height: 117,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                      width: 130,
                      height: 100,
                      padding: EdgeInsets.only(left: 10),
                      child: Image.asset(
                        e['productImage'],
                        fit: BoxFit.cover,
                      )),
                  Container(
                    width: 170,
                    height: 90,
                    margin: EdgeInsets.only(right: 0, top: 5, left: 15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          e['productName'],
                          style: TextStyle(
                              fontFamily: 'SF Pro Text',
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              letterSpacing: -0.15),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          '$allproductprice',
                          style: TextStyle(
                              fontFamily: 'SF Pro Text',
                              fontSize: 17,
                              fontWeight: FontWeight.w700,
                              letterSpacing: -0.41),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 0, top: 15),
                    child: Column(
                      children: [
                        InkWell(
                          // onTap: _incrementCounter,
                          child: Icon(Icons.add_circle_outline_outlined,
                              size: 24, color: Color(0xFF9B9B9B)),
                        ),
                        SizedBox(
                          height: 11,
                        ),
                        Text(
                          " ${e['productQuantity']}",
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w400,
                              letterSpacing: -0.15),
                        ),
                        SizedBox(
                          height: 11,
                        ),
                        InkWell(
                          child: Icon(Icons.do_disturb_on_outlined,
                              color: Color(0xFF9B9B9B)),
                        ),
                      ],
                    ),
                  )
                ],
              )),
          background: Container(
            child: Icon(
              Icons.delete_outline_outlined,
              color: Colors.red,
              size: 32,
            ),
            color: Color(0xFFFAFAFA),
            alignment: AlignmentDirectional.centerEnd,
          ),
        ),
      );
    }
    return lst;
  }

  @override
  Widget build(BuildContext context) {
    List proData = context.watch<CartItemProvider>().itemData;

    double priceData =
        context.watch<CartItemProvider>().totalCartPriceData(allproductprice);
    return Scaffold(
      bottomSheet: Container(
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(0.0, 1.0),
                blurRadius: 3.0,
              ),
            ],
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(35),
              topRight: Radius.circular(35),
            )),
        height: 139,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 33, right: 33),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total price',
                    style: Constant.cartTotalPrice,
                  ),
                  Text(
                    "$priceData",
                    style: Constant.cartTotalPrice,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 23,
            ),
            MyButton(
              minWidth: 350,
              child: Text(
                'Check Out',
                style: TextStyle(
                    fontFamily: 'SF Pro Text',
                    fontSize: 17,
                    color: Colors.white,
                    letterSpacing: -0.41,
                    fontWeight: FontWeight.w700),
              ),
              height: 48,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CheckoutPage()));
              },
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
              color: Constant.yellowColor,
            )
          ],
        ),
      ),
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        elevation: 0,
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20, top: 1),
            child: Center(
                child: Text(
              'Delete',
              style: TextStyle(
                  fontFamily: 'SF Pro Text',
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                  letterSpacing: -0.15),
            )),
          )
        ],
        title: Text('Cart', style: Constant.favoriteAppBarTextStyle),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[
                Color(0xFF34283E),
                Color(0xFF845FA1),
              ])),
        ),
      ),
      backgroundColor: Color(0xFFE5E5E5),
      body: SafeArea(
        child: ListView(
            scrollDirection: Axis.vertical, children: newList(proData)),
      ),
    );
  }
}
