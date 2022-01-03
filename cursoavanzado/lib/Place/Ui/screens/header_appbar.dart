import 'package:flutter/material.dart';
import '../../../widgets/gradient_back.dart';
import '../widgets/card_image_list.dart';

class HeaderAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: <Widget>[
        //No se puede poner null para que agarre el tamaño del contenedor
        GradientBack(height: 250.0),
        CardImageList()
      ],
    );
  }

}