import 'package:flutter/material.dart';
import 'card_image.dart';

class CardImageList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 350.0,
      child: ListView(
        padding: EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CardImageWidthFabIcon(
            pathImage: "assets/img/beach.jpeg",
            iconData: Icons.favorite_border,
            width: 350.0,
            height: 250.0,
            onPressFabIcon: () {},
          ),
          CardImageWidthFabIcon(
            pathImage: "assets/img/mountain.jpeg",
            iconData: Icons.favorite_border,
            width: 350.0,
            height: 250.0,
            onPressFabIcon: () {},
          ),
          CardImageWidthFabIcon(
            pathImage: "assets/img/mountain_stars.jpeg",
            iconData: Icons.favorite_border,
            width: 350.0,
            height: 250.0,
            onPressFabIcon: () {},
          ),
          CardImageWidthFabIcon(
            pathImage: "assets/img/river.jpeg",
            iconData: Icons.favorite_border,
            width: 350.0,
            height: 250.0,
            onPressFabIcon: () {},
          ),
          CardImageWidthFabIcon(
            pathImage: "assets/img/sunset.jpeg",
            iconData: Icons.favorite_border,
            width: 350.0,
            height: 250.0,
            onPressFabIcon: () {},
          ),
        ],
      ),
    );
  }
}
