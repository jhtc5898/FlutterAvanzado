import 'package:flutter/material.dart';
import 'package:platzi_trips_app/User/bloc/bloc_user.dart';
import 'package:platzi_trips_app/widgets/gradient_back.dart';
import '../../../platzi_trips_cupertino.dart';
import 'package:platzi_trips_app/widgets/button_green.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  UserBloc userBloc;

  @override
  Widget build(BuildContext context) {
    userBloc = BlocProvider.of(context);
    //Retornamos el widget de gradiente

    return _handleCurrentSession();
  }

  Widget _handleCurrentSession() {
    return StreamBuilder(
      stream: userBloc.authStatus,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        //Si el snapshot tiene datos
        if(!snapshot.hasData || snapshot.hasError){
          return signinGoogleUI();
        } else {
          print("Data"+snapshot.data.toString());
          print(userBloc.authStatus.toString());
          return PlatziTripsCupertino();
        }
      },
    );
  }

  Widget signinGoogleUI() {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          GradientBack("Weconnect", null),
          Container(
            alignment: Alignment.topCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  '"La creatividad es hurgar en lo mundano para encontrar lo maravilloso"',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25.0,
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.bold),
                  //Centrar el texto
                  textAlign: TextAlign.center,
                ),
                Text("Bill Moyers",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 30.0,
                ),
                ButtonGreen(
                    text: "LOGIN CON GOOGLE",
                    onPressed: () {
                      userBloc.signIn().then((User user) =>
                          print("El usuario es: ${user.toString()}"));
                    },
                    width: 300.0,
                    height: 50.0),
                // ButtonLogin(),
                //Logo()
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
        color: Color(0xFF51B4DC),
        child: Text(
          'Login con Google',
          style: TextStyle(
            color: Colors.white,
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
