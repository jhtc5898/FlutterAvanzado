import 'package:flutter/material.dart';

class ButtonGreen extends StatefulWidget {

  
  final String text;
  double width = 0.0;
  double height = 0.0;
  //Variable que guarda una funcion que se ejecutara al presionar el boton
  final VoidCallback onPressed;
  ButtonGreen({Key key,@required this.text,@required this.onPressed, this.width,  this.height});

  @override
  State<StatefulWidget> createState() {
    return _ButtonGreen();
  }
}

class _ButtonGreen extends State<ButtonGreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return InkWell(
      //"widget" permite obtener informacion de la vista en la que estamos trabajando
      onTap: widget.onPressed,
      child: Container(
        margin: EdgeInsets.only(
            top: 30.0,
            left: 20.0,
            right: 20.0
        ),
        height: widget.height,
        width: widget.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            gradient: LinearGradient(
              colors: [
                Color(0xFFa7ff84),
                Color(0xFF1cbb78)
              ],
              begin: FractionalOffset(0.2, 0.0),
              end: FractionalOffset(1.0, 0.6),
              stops: [0.0, 0.6],
              tileMode: TileMode.clamp

            )

        ),

        child: Center(
          child: Text(
            widget.text,
            style: TextStyle(
              fontSize: 15.0,
              fontFamily: "Lato",
              color: Colors.white,
              fontWeight: FontWeight.bold,
              
            ),
          ),
        ),

      ),
    );
  }
}
