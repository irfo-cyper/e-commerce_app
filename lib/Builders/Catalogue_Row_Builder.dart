import 'package:ecommerce_app/model/Catalogue_Model.dart';
import 'package:flutter/material.dart';

final List<CatalogueModel> catalogue = CatalogueModel.catalogue;

ListView catalogueRowBuilder() {
  return ListView.builder(
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      itemCount: catalogue.length,
      itemBuilder: (context, index) {
        return Row(
          children: [
            Container(
              child: Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10, top: 8),
                    width: 79,
                    height: 76,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      gradient: LinearGradient(colors: [
                        Color(0xFF34283E).withOpacity(0.9),
                        Color.fromRGBO(52, 40, 62, 0.2)
                      ]),
                    ),
                  ),
                  Center(
                      child: Container(
                    decoration: BoxDecoration(),
                    width: 50,
                    child: Text(
                      catalogue[index].name,
                      style: TextStyle(
                          fontFamily: 'SF Pro Text',
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          letterSpacing: -0.15,
                          fontSize: 14),
                    ),
                  )),
                ],
              ),
              height: 99,
              width: 99,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(13)),
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(catalogue[index].image)),
              ),
            ),
          ],
        );
      });
}
