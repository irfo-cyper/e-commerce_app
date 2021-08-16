import 'package:ecommerce_app/Components/Filter_Page_Categories_Method.dart';
import 'package:ecommerce_app/Components/Filter_Page_Appbar.dart';
import 'package:ecommerce_app/Components/Filter_Page_Brand_Card.dart';
import 'package:ecommerce_app/Components/Filter_Page_Brand_method.dart';
import 'package:ecommerce_app/Components/Filter_Page_Button_Method.dart';
import 'package:ecommerce_app/Components/Filter_Page_Featured_Card.dart';
import 'package:ecommerce_app/Components/Filter_Page_Sort_method.dart';
import 'package:ecommerce_app/Components/Filter_Page_Dress_Method.dart';
import 'package:ecommerce_app/Components/Filter_Page_Price_Method.dart';
import 'package:ecommerce_app/Components/Filter_Page_Size_Method.dart';
import 'package:ecommerce_app/Components/Filter_Page_Color_Method.dart';
import 'package:ecommerce_app/Components/Filter_Page_Selected_Range_Limit_Method.dart';
import 'package:ecommerce_app/model/Filter_Page_Color_Selector.dart';
import 'package:ecommerce_app/model/Filter_Page_Size_Selector.dart';
import 'package:flutter/material.dart';

class FilterPage extends StatefulWidget {
  static String screenId = "/FilterPage";

  @override
  _FilterPageState createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  var selectedRange = RangeValues(0.0, 5000.0);
  RangeLabels labels = RangeLabels('1', "100");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE5E5E5),
      appBar: filterPageAppbar(context),
      body: SingleChildScrollView(
        child: Column(
          children: [
            filterPagePriceMethod(),
            Container(
              margin: EdgeInsets.only(left: 5, top: 5),
              alignment: Alignment.center,
              child: RangeSlider(
                  labels: labels,
                  activeColor: Color(0xFFE7B944),
                  inactiveColor: Color(0xFFE1E1E1),
                  min: 0.0,
                  max: 5000.0,
                  values: selectedRange,
                  onChanged: (dynamic newValues) {
                    setState(() {
                      selectedRange = newValues;
                    });
                  }),
            ),
            selectedRangeLimitDataMethod(selectedRange),
            categoriesFilterPageMethod(),
            filterPageDressMethod(),
            filterPageBrandMethod(),
            filterPageBrandCardMethod(),
            filterPageColorMethod(),
            Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: colorSelecterFilter
                    .map(
                      (e) => Container(
                        height: 47,
                        width: 47,
                        margin: EdgeInsets.only(left: 20, top: 15),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              currentId = e['selected'];
                            });
                          },
                          child: Card(
                            elevation: 0,
                            color: Color(0xFFE5E5E5),
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                  color: e['selected'] == currentId
                                      ? Color(0xFFE7B944)
                                      : Color(0xFFE5E5E5),
                                  width: 2),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Card(
                              color: e["color"],
                              elevation: 1,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                  MediaQuery.of(context).size.width * 0.6,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                    .toList()),
            filterPageSizeMethod(),
            Row(
                children: sizeSelecterFilter
                    .map((e) => InkWell(
                          onTap: () {
                            setState(() {
                              if (e['selected'] == true) {
                                e['selected'] = false;
                              } else {
                                e['selected'] = true;
                              }
                            });
                          },
                          child: Container(
                            alignment: Alignment.center,
                            child: Text(
                              e['title'],
                              style: TextStyle(
                                fontSize: 14,
                                color: e['selected'] == currentId
                                    ? Colors.white
                                    : Colors.black,
                                letterSpacing: -0.15,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'SF Pro Text',
                              ),
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color(0xFFE1E1E1), width: 2),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              color: e['selected'] == true
                                  ? Color(0xFFE7B944)
                                  : Colors.white,
                            ),
                            margin: EdgeInsets.only(top: 15, left: 20),
                            width: 47,
                            height: 47,
                          ),
                        ))
                    .toList()),
            filterPageSortMethod(),
            filterPageFeaturedCard(),
            filterPageButtonMethod(context)
          ],
        ),
      ),
    );
  }

  var currentId = 1;
}
