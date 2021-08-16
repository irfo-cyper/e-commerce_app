import 'package:ecommerce_app/Provider/Selected_Product_Provider.dart';
import 'package:ecommerce_app/Provider/Liked_Product_Provider.dart';
import 'package:ecommerce_app/screens/Cart_Page.dart';
import 'package:ecommerce_app/screens/Checkout_Page.dart';
import 'package:ecommerce_app/screens/Dashboard_page.dart';
import 'package:ecommerce_app/screens/EnterPhone_Page.dart';
import 'package:ecommerce_app/screens/Filter_Page.dart';
import 'package:ecommerce_app/screens/GetStarted_Page.dart';
import 'package:ecommerce_app/screens/Items_Page.dart';
import 'package:ecommerce_app/screens/Product_Page.dart';
import 'package:ecommerce_app/screens/Profile_Page.dart';
import 'package:ecommerce_app/screens/Verification_Page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

void main() {
  Provider.debugCheckInvalidValueType = null;

  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  runApp(MultiProvider(
    child: MyApp(),
    providers: [
      Provider<CartItemProvider>(create: (_) => CartItemProvider()),
      Provider<LikedProductProvider>(create: (_) => LikedProductProvider()),
    ],
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: DashboardPage.screenId,
      routes: {
        GetStarted.screenId: (context) => GetStarted(),
        EnterPhone.screenId: (context) => EnterPhone(),
        Verification.screenId: (context) => Verification(),
        DashboardPage.screenId: (context) => DashboardPage(),
        CartPage.screenId: (context) => CartPage(),
        CheckoutPage.screenId: (context) => CheckoutPage(),
        ItemsPage.screenId: (context) => ItemsPage(),
        FilterPage.screenId: (context) => FilterPage(),
        ProductPage.screenId: (context) => ProductPage(),
        ProfilePage.screenId: (context) => ProfilePage(),
      },
      debugShowCheckedModeBanner: false,
      theme: MyThemes.lighTheme,
      themeMode: ThemeMode.system,
      darkTheme: MyThemes.darkTheme,
    );
  }
}

class MyThemes {
  static final darkTheme = ThemeData(
      fontFamily: 'SF-Pro-Text',
      splashColor: Colors.transparent,
      primaryColor: Colors.grey.shade900,
      primaryColorDark: Colors.black87,
      colorScheme: ColorScheme.dark(),
      bottomAppBarColor: Colors.grey.shade900,
      scaffoldBackgroundColor: Colors.grey.shade900);

  static final lighTheme = ThemeData(
      splashColor: Colors.transparent,
      colorScheme: ColorScheme.light(),
      primaryColor: Colors.white,
      scaffoldBackgroundColor: Colors.white);
}
