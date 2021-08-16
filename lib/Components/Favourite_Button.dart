import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';

class FavouriteButton extends StatelessWidget {
  const FavouriteButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(top: 105, left: 130),
      color: Colors.white,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.white70),
        borderRadius: BorderRadius.circular(70),
      ),
      child: Container(
        width: 30,
        height: 30,
        child: FavoriteButton(
            isFavorite: false,
            iconColor: Color(0xFFE7B944),
            iconSize: 26,
            valueChanged: (value) {
              value = true;
              print(value);
            }),
      ),
    );
  }
}
