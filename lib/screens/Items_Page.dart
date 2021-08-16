import 'package:ecommerce_app/Builders/Feature_Grid_Builder.dart';
import 'package:ecommerce_app/Components/Gradient_Card.dart';
import 'package:ecommerce_app/Components/AppBar_Textfield.dart';
import 'package:ecommerce_app/Components/Item_Page_AppBar.dart';
import 'package:ecommerce_app/Constant/Constants.dart';
import 'package:ecommerce_app/model/Item_Model.dart';
import 'package:flutter/material.dart';

class ItemsPage extends StatefulWidget {
  static String screenId = "/ItemsPage";

  @override
  _ItemsPageState createState() => _ItemsPageState();
}

class _ItemsPageState extends State<ItemsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF4F3F4),
      appBar: itemPageAppbar(context),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [gradientCard(), HomeTextField()],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: itemsTypeRow
                      .map((e) => InkWell(
                            onTap: () {
                              setState(() {
                                currentId = e['selected'];
                              });
                            },
                            child: Card(
                              color: e['selected'] == currentId
                                  ? Color(0xFFE7B944)
                                  : Colors.white,
                              margin: EdgeInsets.only(left: 22, top: 8),
                              child: Container(
                                  margin: EdgeInsets.only(left: 10, right: 10),
                                  alignment: Alignment.center,
                                  height: 20,
                                  child: Text(
                                    e['title'],
                                    style: TextStyle(
                                      fontFamily: 'SF Pro Text',
                                      letterSpacing: -0.08,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 13,
                                      color: e['selected'] == currentId
                                          ? Colors.white
                                          : Colors.black,
                                    ),
                                  )),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                          ))
                      .toList()),
            ),
            Container(
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Text(
                      '166 Items',
                      style: TextStyle(
                          fontFamily: 'SF Pro Text',
                          letterSpacing: -0.49,
                          fontWeight: FontWeight.w700,
                          fontSize: 19,
                          color: Color(0xFF34283E)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Row(
                      children: [
                        Text(
                          'Sort by:',
                          style: Constant.homeseeallarrow,
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Text('Featured', style: Constant.favoriteSortprice),
                        Icon(Icons.arrow_drop_down_outlined),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: featuredGridBuilder(context),
            ),
          ],
        ),
      ),
    );
  }

  var currentId = 1;
}
