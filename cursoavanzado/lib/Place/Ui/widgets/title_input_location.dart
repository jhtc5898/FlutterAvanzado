import 'package:flutter/material.dart';

class TextInputLocation extends StatelessWidget {
  
  final String hintText;
  final TextEditingController controller;
  final IconData iconData;

  TextInputLocation({Key key,
    @required this.hintText,
    @required this.controller,
    @required this.iconData,
  });

  @override
  Widget build(BuildContext context) {
    
    return Container(
      margin: EdgeInsets.only(right: 20.0, left: 20.0, top: 10.0),
      child: TextField(
        controller: controller,
        style: TextStyle(
          fontSize: 15.0,
          fontFamily: "Lato",
          color: Colors.blueGrey,
          fontWeight: FontWeight.bold
        ),
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
            fontSize: 15.0,
            fontFamily: "Lato",
            color: Colors.blueGrey,
            fontWeight: FontWeight.bold
          ),
          prefixIcon: Icon(iconData, color: Colors.blueGrey,),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(
              color: Colors.blueGrey,
              width: 1.0
            )
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(
              color: Colors.blueGrey,
              width: 1.0
            )
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(
              color: Colors.blueGrey,
              width: 1.0
            )
          )
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.white,
        boxShadow:<BoxShadow> [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 6.0,
            offset: Offset(0, 7.0)
          )
        ]
      ),
    );
  }

}
