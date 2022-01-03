import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {
  final String hintText;
  final TextInputType inputType;
  final TextEditingController controller;
  int maxLines = 1;

  TextInput({Key key, @required this.hintText,  @required this.inputType, @required this.controller,this.maxLines});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets .only(left: 10, right: 10, top: 10, bottom: 10),
      child: TextField(
        maxLines: maxLines,
        keyboardType: inputType,
        controller: controller,
        style: TextStyle(
          fontSize: 18,
          fontFamily: "Lato",
          color: Colors.blueGrey,
        ),
        decoration:  InputDecoration(
         filled: true,
          fillColor: Colors.white,
          border: InputBorder.none,
          hintText: hintText,
          //Antes de ingresar texto 
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(9.0)),
            borderSide: BorderSide(color: Color(0xFFE5E5E5)),
          ),
          //cuando ingresa los textos se enfoca 
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(9.0)),
            borderSide: BorderSide(color: Color(0xFFE5E5E5)),
          ),
        ),
        ),
      );
  }
}
