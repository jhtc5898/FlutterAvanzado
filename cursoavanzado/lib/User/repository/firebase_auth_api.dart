import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_core/firebase_core.dart';

class FirebaseAuthApi {
  //Trae todo sobre la consola de Firebase
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  //Trae todo sobre GoogleSignIn
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  //Trae todo sobre FirebaseAuth
  //Todo lo que se quiera ejecutar en segundo plano es mediante async
  Future<User> signInWithGoogle() async {
    final GoogleSignInAccount googleUser = await _googleSignIn.signIn();
    final GoogleSignInAuthentication googleAuth =
        await googleUser.authentication;
    final AuthCredential credential = GoogleAuthProvider.getCredential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );
    
    final User user = (await _firebaseAuth.signInWithCredential(credential)).user;
    print("signed in " + user.displayName);
    return user;
  }

  void signOutGoogle() async {
    await _googleSignIn.signOut();
    print("User Sign Out");
  }
} 
