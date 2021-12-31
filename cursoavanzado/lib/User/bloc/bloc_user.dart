import 'package:firebase_auth/firebase_auth.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:platzi_trips_app/User/repository/auth_repository.dart';

class UserBloc implements Bloc {
  final _authRepository = AuthRepository();

  //Uso del stream
  //Flujo de datos  - StreamController
  //El estado de la session se mantiene mediante streamFirebase
  Stream<User> streamFirebase = FirebaseAuth.instance.authStateChanges();
  //Mantiene un get del estado de la session
  Stream<User> get authStatus => streamFirebase;
  //Casos uso

  //1. SignIn a la aplicacion Google
  Future<User> signIn() {
    //nombre de la persona que se loguea

    return _authRepository.signInFirebase();
  }

  SigOut() {
    _authRepository.signOut();
  }

  DataUser() 
  {
    print("DAtasda"+_authRepository.toString());
    return authStatus.toString();
  }

  @override
  void dispose() {}
}
