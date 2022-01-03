import 'package:flutter/material.dart';
import 'package:platzi_trips_app/User/bloc/bloc_user.dart';
import '../widgets/user_info.dart';
import '../widgets/button_bar.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

class ProfileHeader extends StatelessWidget {
  UserBloc userBloc;
  @override
  Widget build(BuildContext context) {
    userBloc = BlocProvider.of<UserBloc>(context);

    return StreamBuilder(
        stream: userBloc.streamFirebase,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.waiting:
              return CircularProgressIndicator();
            case ConnectionState.none:
              return CircularProgressIndicator();
            case ConnectionState.active:
              return showProfileData(snapshot);
            case ConnectionState.done:
              return showProfileData(snapshot);
            default:
              return CircularProgressIndicator();
          }
        });
  }

  Widget showProfileData (AsyncSnapshot snapshot) {
    if (!snapshot.hasData || snapshot.hasError) {
      print("Sin datos");
    } else {
    return Container(
      margin: EdgeInsets.only(
        top: 20.0,
        left: 20.0,
        right: 20.0
      ),
      child: Column(
        children: <Widget>[
          UserInfo(snapshot.data.photoURL.toString(),snapshot.data.displayName.toString(),snapshot.data.email.toString()),
          ButtonsBar()
        ],
      ),
    );
    }
    }
  }

