import 'package:flutter/material.dart';

class GetStartedCoverImage extends StatelessWidget {
  const GetStartedCoverImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 549,
      child: Container(
        color: Color(0xFF2A034B).withOpacity(0.3),
      ),
      margin: EdgeInsets.only(
        bottom: 230,
      ),
      // color: Colors.blue,
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage(
          'images/getstart.gif',
        ),
        fit: BoxFit.fill,
      )),
    );
  }
}
