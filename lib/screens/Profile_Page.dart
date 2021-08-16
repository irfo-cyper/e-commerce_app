import 'package:ecommerce_app/Constant/Constants.dart';
import 'package:ecommerce_app/model/Profile_Model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ProfilePage extends StatefulWidget {
  static String screenId = "/ProfilePage";

  ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, // transparent status bar
    ));
    return Scaffold(
      backgroundColor: Color(0xFFF4F3F4),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 30, top: 30),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(40),
                        child: Container(
                            color: Colors.amber,
                            width: 70,
                            height: 70,
                            child: Image.asset('images/olehprofile.png')),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Oleh Chabanov',
                              style: Constant.profileNameStyle,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              '+38 (099) 123 45 67',
                              style: Constant.profileNumberStyle,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                height: 146,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(
                          MediaQuery.of(context).size.height * 0.6),
                    ),
                    gradient: Constant.cardGradient),
              ),
              Positioned(
                width: MediaQuery.of(context).size.width * 0.17,
                height: MediaQuery.of(context).size.width * 0.17,
                // height: 58,
                top: MediaQuery.of(context).size.height * 0.1,
                // top: 80,
                left: MediaQuery.of(context).size.width * 0.77,
                // left: 330,
                child: Card(
                  elevation: 1,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      MediaQuery.of(context).size.width * 0.6,
                    ),
                  ),
                  child: InkWell(
                    onTap: () {},
                    child: Icon(
                      Icons.colorize_outlined,
                      color: Color(0xFF34283E),
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Column(
              children: profileModel
                  .map(
                    (e) => Container(
                      height: MediaQuery.of(context).size.width * 0.18,
                      // height: 70,
                      child: Card(
                        color: Colors.white,
                        margin: EdgeInsets.only(
                            left: 20, right: 20, top: 2, bottom: 10),
                        elevation: 1,
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10.0)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  child: Image.asset(
                                e['image'],
                                height: 24,
                                width: 24,
                              )),
                              SizedBox(
                                width: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text(e['title'],
                                    style: Constant.profileCardTitleStyle),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                  .toList()),
          Container(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.width * 0.13, left: 17),
            alignment: Alignment.bottomLeft,
            child: TextButton(
              onPressed: () {},
              child: Text(
                'Privacy Policy',
                style: Constant.privacyPolicyStyle,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
