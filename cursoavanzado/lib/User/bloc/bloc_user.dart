import 'package:firebase_auth/firebase_auth.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:platzi_trips_app/User/repository/auth_repository.dart';

class UserBloc implements Bloc {
  final _authRepository = AuthRepository();
  //Casos uso 
  //1. SignIn a la aplicacion Google
  Future <User>signIn(){
    return _authRepository.signInFirebase();
  }

  @override
  void dispose() {}
}
