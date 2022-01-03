import 'package:flutter/material.dart';
import '../../../widgets/floating_action_button_green.dart';

class CardImageWidthFabIcon extends StatelessWidget {
  //Todo lo que sea requerido es final y no puede ser modificado
  final double height;
  final double width;
  final String pathImage;
  final VoidCallback onPressFabIcon;
  final IconData iconData;

  CardImageWidthFabIcon(
      {Key key,
      @required this.height,
      @required this.width,
      @required this.pathImage,
      @required this.onPressFabIcon,
      @required this.iconData});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final card = Container(
      height: height,
      width: width,
      margin: EdgeInsets.only(
        top: 80.0,
        left: 9,
      ),
      decoration: BoxDecoration(
          image:
              DecorationImage(fit: BoxFit.cover, image: AssetImage(pathImage)),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          shape: BoxShape.rectangle,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black38,
                blurRadius: 15.0,
                offset: Offset(0.0, 7.0))
          ]),
    );

    return Stack(
      alignment: Alignment(0.9, 1.1),
      children: <Widget>[
        card,
        FloatingActionButtonGreen(
          iconData: iconData,
          onPressed: onPressFabIcon,
        )
      ],
    );
  }
}
