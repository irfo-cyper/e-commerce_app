import 'package:ecommerce_app/Builders/Catalogue_Column_Builder.dart';
import 'package:ecommerce_app/Components/Catalogue_AppBar.dart';
import 'package:ecommerce_app/Components/Gradient_Card.dart';
import 'package:ecommerce_app/Components/AppBar_Textfield.dart';
import 'package:flutter/material.dart';

class CataloguePage extends StatefulWidget {
  static String screenId = "/CataloguePage";
  @override
  _CataloguePageState createState() => _CataloguePageState();
}

class _CataloguePageState extends State<CataloguePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF4F3F4),
      appBar: catalogueAppBar(context),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [gradientCard(), HomeTextField()],
            ),
            SizedBox(height: 20),
            catalogueColumnBuilder()
          ],
        ),
      ),
    );
  }
}
