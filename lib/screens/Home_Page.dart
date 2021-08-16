import 'package:ecommerce_app/Builders/Feature_Grid_Builder.dart';
import 'package:ecommerce_app/Components/Featured_Text.dart';
import 'package:ecommerce_app/Builders/Catalogue_Row_Builder.dart';
import 'package:ecommerce_app/Components/Catalogue_See_All.dart';
import 'package:ecommerce_app/Components/Gradient_Card.dart';
import 'package:ecommerce_app/Components/AppBar_Textfield.dart';
import 'package:ecommerce_app/Components/Home_Page_Appbar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static String screenId = "/HomePage";
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF4F3F4),
      drawer: DrawerHeader(
          decoration: BoxDecoration(color: Colors.white), child: Text('sd')),
      appBar: homeAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [gradientCard(), HomeTextField()],
            ),
            SizedBox(height: 15),
            Container(
              width: 370,
              height: 88,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('images/fashionsale.jpg'))),
            ),
            SizedBox(height: 10),
            catalogueSeeAll(),
            Container(
              height: 100,
              padding: EdgeInsets.only(left: 10),
              child: catalogueRowBuilder(),
            ),
            featuredText(),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: featuredGridBuilder(context),
            )
          ],
        ),
      ),
    );
  }
}
