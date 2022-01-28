import 'package:findme/models/userAuth.dart' as a;
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
//private firebase instance
  final FirebaseAuth _auth = FirebaseAuth.instance;

  /*

  // create user obj based on firebase user
  a.User _userFromFirebaseUser(FirebaseUser user) {
    return user != null ? a.User(uid: user.uid) : null;
  }

  // auth change user stream
  Stream<User> get user {
    return _auth.onAuthStateChanged
    //.map((FirebaseUser user) => _userFromFirebaseUser(user));
        .map(_userFromFirebaseUser);
  }


  // sign in with email and password


  // register with email and password

    // sign in anon
  Future signInAnon() async {
    try {
      AuthResult result = await _auth.signInAnonymously();
      FirebaseUser user = result.user;
      return _userFromFirebaseUser(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }


  // sign out
  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch (error) {
      print(error.toString());
      return null;
    }
  }
*/
}
