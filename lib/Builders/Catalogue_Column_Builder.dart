import 'package:ecommerce_app/Constant/Constants.dart';
import 'package:ecommerce_app/model/Catalogue_Model.dart';
import 'package:ecommerce_app/screens/Items_Page.dart';
import 'package:flutter/material.dart';

final List<CatalogueModel> catalogue = CatalogueModel.catalogue;

ListView catalogueColumnBuilder() {
  return ListView.builder(
      physics: ScrollPhysics(),
      shrinkWrap: true,
      itemCount: catalogue.length,
      itemBuilder: (context, index) {
        return Container(
          height: 88,
          width: 343,
          margin: EdgeInsets.only(left: 15, right: 15, top: 0, bottom: 5),
          child: InkWell(
            onTap: () {
              showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return Container(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Text(
                              "Women's Fashion",
                              style: TextStyle(
                                  fontFamily: 'SF Pro Text',
                                  fontSize: 19,
                                  letterSpacing: -0.49,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xFF34283E)),
                            ),
                          ),
                          Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: catalogueProductType
                                  .map((e) => Container(
                                        margin: EdgeInsets.only(
                                            left: 20, bottom: 2, top: 20),
                                        alignment: Alignment.bottomLeft,
                                        child: InkWell(
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        ItemsPage()));
                                          },
                                          child: Text(
                                            e['Name'],
                                            style: TextStyle(
                                                fontFamily: 'SF Pro Text',
                                                fontSize: 14,
                                                letterSpacing: -0.15,
                                                fontWeight: FontWeight.w400,
                                                color: Color(0xFF605A65)),
                                          ),
                                        ),
                                      ))
                                  .toList()),
                        ],
                      ),
                      height: 392,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15))),
                    );
                  });
            },
            child: Card(
              color: Colors.white,
              elevation: 1,
              shape: RoundedRectangleBorder(
                  borderRadius: const BorderRadius.all(Radius.circular(10.0))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      left: 20,
                      top: 0,
                    ),
                    child: Text(catalogue[index].name,
                        style: Constant.catalogueColumnBuilderText),
                  ),
                  FittedBox(
                    child: Image.asset(
                      catalogue[index].image,
                      fit: BoxFit.fill,
                      height: 200,
                      width: 200,
                      // width: 170,
                      // height: 170,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      });
}

List catalogueProductType = [
  {
    "Name": 'Clothing',
  },
  {
    "Name": 'Shoes',
  },
  {
    "Name": "Jewellery",
  },
  {
    "Name": 'Watches',
  },
  {
    "Name": 'Handbags',
  },
  {
    "Name": "Accessories",
  },
  {
    "Name": "Men's Fashion",
  },
  {
    "Name": "Girl's Fashion",
  },
  {
    "Name": "Boy's Fashion",
  },
];
