import 'dart:io';

import 'package:flutter/material.dart';
import 'package:platzi_trips_app/Place/model/place.dart';

class Users {
  final String uid; //Identificador unico de usuario
  final String name;
  final String email;
  final String imageUrl;
  final List<Place> myplaces;
  final List<Place> myFavoritePlaces;

  Users(
      {Key key,
      @required this.uid,
      @required this.name,
      @required this.email,
      @required this.imageUrl,
      this.myplaces,
       this.myFavoritePlaces});
}
