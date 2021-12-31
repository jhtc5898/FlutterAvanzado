import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:platzi_trips_app/User/repository/firebase_auth_api.dart';

class AuthRepository 
{
  final _firebaseAuthAPI = FirebaseAuthApi();

  Future<User> signInFirebase() => _firebaseAuthAPI.signInWithGoogle();

  signOut() => _firebaseAuthAPI.signOutGoogle();




}
