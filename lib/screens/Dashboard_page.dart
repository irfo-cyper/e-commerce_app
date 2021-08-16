import 'package:ecommerce_app/screens/Cart_Page.dart';
import 'package:ecommerce_app/screens/Catalogue_Page.dart';
import 'package:ecommerce_app/screens/Favourite_Screen.dart';
import 'package:ecommerce_app/screens/Home_Page.dart';
import 'package:ecommerce_app/screens/Profile_Page.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  static String screenId = "/Dashbard";
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int pageIndex = 0;
  List<Widget> pageList = <Widget>[
    HomePage(),
    CataloguePage(),
    FavouritePage(),
    ProfilePage(),
    FavouritePage(),
    FavouritePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawerEnableOpenDragGesture: false,
        floatingActionButtonLocation:
            FloatingActionButtonLocation.miniEndDocked,
        floatingActionButton: InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => CartPage()));
          },
          child: Container(
            height: 56,
            width: 116,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color(0xFF34283E),
                  Color(0xFF845FA1),
                ]),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomLeft: Radius.circular(20))),
            child: Padding(
              padding: const EdgeInsets.only(left: 15, right: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.shopping_cart_outlined,
                    size: 20,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '\$239.99',
                        style: TextStyle(
                            fontFamily: 'SF Pro Text',
                            letterSpacing: 0.07,
                            fontWeight: FontWeight.w700,
                            fontSize: 11,
                            color: Colors.white),
                      ),
                      Text(
                        '2 items',
                        style: TextStyle(
                            fontFamily: 'SF Pro Text',
                            letterSpacing: 0.07,
                            fontSize: 11,
                            color: Color(0xFFBEB4C6)),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: bottomNavigationBarMethod(),
        body: pageList[pageIndex]);
  }

  BottomNavigationBar bottomNavigationBarMethod() {
    return BottomNavigationBar(
      unselectedLabelStyle: TextStyle(
          fontFamily: 'SF Pro Text',
          fontSize: 10,
          letterSpacing: 0.07,
          fontWeight: FontWeight.w700,
          color: Color(0xFF40304D)),
      selectedLabelStyle: TextStyle(
        fontFamily: 'SF Pro Text',
        fontSize: 10,
        letterSpacing: 0.07,
        fontWeight: FontWeight.w700,
        color: Theme.of(context).primaryColor,
      ),
      type: BottomNavigationBarType.fixed,
      onTap: (value) {
        if (value <= 3) {
          setState(() {
            pageIndex = value;
          });
        }
      },
      currentIndex: pageIndex,
      selectedItemColor: Color(0xFF845FA1),
      unselectedItemColor: Color(0xFF9B9B9B),
      backgroundColor: Theme.of(context).primaryColor,
      elevation: 3,
      items: [
        BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(
              Icons.home,
            )),
        BottomNavigationBarItem(icon: Icon(Icons.cabin), label: 'Catalogue'),
        BottomNavigationBarItem(
            label: 'Favorite', icon: Icon(Icons.favorite_outline_outlined)),
        BottomNavigationBarItem(label: 'Profile', icon: Icon(Icons.person)),
        BottomNavigationBarItem(
            label: '',
            icon: Icon(
              Icons.person,
              color: Colors.transparent,
            )),
        BottomNavigationBarItem(
            label: '',
            icon: Icon(
              Icons.person,
              color: Colors.transparent,
            )),
      ],
    );
  }
}
