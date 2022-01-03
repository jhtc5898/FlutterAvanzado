import 'package:firebase_auth/firebase_auth.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:platzi_trips_app/Place/model/place.dart';
import 'package:platzi_trips_app/User/repository/auth_repository.dart';
import 'package:platzi_trips_app/User/repository/cloud_firestore_repository.dart';
import 'package:platzi_trips_app/User/model/user.dart' as Model;

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



  //Registrar usuario en base de datos
  final _cloudFirestoreRepository = CloudFirestoreRepository();
  
  void updateUserDataFireStore (Model.Users user) =>
      _cloudFirestoreRepository.updateUserDataFirestore(user);

  Future<void> updatePlaceData(Place place) =>
      _cloudFirestoreRepository.updatePlaceData(place);

  @override
  void dispose() {}
}
