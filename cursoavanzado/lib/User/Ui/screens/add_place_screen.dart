import 'dart:io';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:platzi_trips_app/Place/Ui/widgets/card_image.dart';
import 'package:platzi_trips_app/Place/Ui/widgets/title_input_location.dart';
import 'package:platzi_trips_app/Place/model/place.dart';
import 'package:platzi_trips_app/User/bloc/bloc_user.dart';
import 'package:platzi_trips_app/widgets/button_purple.dart';
import 'package:platzi_trips_app/widgets/gradient_back.dart';
import 'package:platzi_trips_app/widgets/text_input.dart';
import 'package:platzi_trips_app/widgets/title_header.dart';

class AddPlaceScreen extends StatefulWidget {
  String image;

  AddPlaceScreen({Key key, this.image}) : super(key: key);

  @override
  State createState() {
    return _AddPlaceScreen();
  }
}

class _AddPlaceScreen extends State<AddPlaceScreen> {
  
  @override
  Widget build(BuildContext context) {
    UserBloc userBloc = BlocProvider.of<UserBloc>(context);
    final _controllerTitlePlace = TextEditingController();
    final _controllerDescriptionPlace = TextEditingController();
    final _controllerLocation = TextEditingController();

    // TODO: implement build
    return Scaffold(
      body: Stack(
        children: <Widget>[
          GradientBack(
            height: 300.0,
          ),
          Row(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 25.0, left: 5.0),
                child: SizedBox(
                  height: 45.0,
                  width: 45.0,
                  child: IconButton(
                      icon: Icon(
                        Icons.keyboard_arrow_left,
                        color: Colors.white,
                        size: 45,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 45.0, left: 20.0),
                child: TitleHeader(title: "Add a new place"),
              ),
            ],
          ),
          Container(
              margin: EdgeInsets.only(top: 120.0, bottom: 20.0),
              child: ListView(
                children: <Widget>[
                  Container(
                      alignment: Alignment.center,
                      child: CardImageWidthFabIcon(
                        pathImage: "assets/img/mountain.jpeg",
                        iconData: Icons.camera_alt,
                        width: 350.0,
                        height: 250.0,
                        onPressFabIcon: () {},
                      )),
                  Container(
                    margin: EdgeInsets.only(top: 20.0),
                    child: TextInput(
                      hintText: "Place Name",
                      inputType: TextInputType.text,
                      controller: _controllerTitlePlace,
                    ),
                  ),
                  TextInput(
                      hintText: "Description",
                      inputType: TextInputType.multiline,
                      controller: _controllerDescriptionPlace,
                      maxLines: 4),
                  Container(
                    margin: EdgeInsets.only(top: 20.0),
                    child: TextInputLocation(
                      hintText: "Location",
                      controller: _controllerLocation,
                      iconData: Icons.location_on,
                    ),
                  ),
                 Container(
                    width: 70.0,
                    child: ButtonPurple(
                      buttonText: "Add Place",
                      onPressed: () {
                        userBloc.updatePlaceData(Place(
                          name: _controllerTitlePlace.text,
                          description: _controllerDescriptionPlace.text,
                          likes: 0
                        )).whenComplete(() => print("Termino"));
                        Navigator.pop(context);
                        //Envio del formulario
                      },
                    ),
                  )
                ],
              ))
        ],
      ),
    );
  }
}
