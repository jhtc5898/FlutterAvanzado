import 'package:flutter/material.dart';
import 'package:platzi_trips_app/widgets/gradient_back.dart';
import '../../../platzi_trips_cupertino.dart';



class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    //Retornamos el widget de gradiente
    return signinGoogleUI();
  }

  Widget signinGoogleUI() {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          GradientBack("Login", null),
          Container(
            alignment: Alignment.topCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Bienvenido a Weconnect',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 45.0,
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 30.0,
                ),
                ButtonLogin(),
                Logo()
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget ButtonLogin() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20.0),
      padding: EdgeInsets.symmetric(vertical: 15.0),
      width: double.infinity,
      child: RaisedButton(
        elevation: 5.0,
        onPressed: () {
          print("Login");
        },
        padding: EdgeInsets.all(15.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        color: Colors.white,
        child: Text(
          'Login with Google',
          style: TextStyle(
            color: Color(0xFF527DAA),
            letterSpacing: 1.5,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'OpenSans',
          ),
        ),
      ),
    );
  }

  Widget Logo() {
    return Container(
      margin: EdgeInsets.only(top: 100.0),
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        //Tamano del circulo
        radius: 25.0,
        child: Image.asset('assets/img/girl.jpg'),
      ),
    );
  }
}
