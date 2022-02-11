import 'package:findme/models/userAuth.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
//private firebase instance
  final FirebaseAuth _auth = FirebaseAuth.instance;
  // create user obj based on firebase user
  userAuth _userFromFirebaseUser(User user) {
    return user != null ? userAuth(uid: user.uid) : null;
  }


// auth change user stream
  Stream<userAuth> get user {

    return _auth.authStateChanges()
    //.map((User user) => _userFromFirebaseUser(user));
    .map(_userFromFirebaseUser);

  }


  // sign in with email and password
  Future signInWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(email: email.trim(), password: password);
      User user = result.user;
      return user;
    } catch (error) {
      print(error.toString());
      return null;
    }
  }


  // register with email and password
  Future registerWithNameEmailPhoneAndPass(String name,String Email,String phone,String pass)async
  {
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(email: Email.trim(), password: pass);
      User user = result.user;
      return _userFromFirebaseUser(user);
    } catch (error) {
      print(error.toString());
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


  // sign in anon
  Future signInAnon() async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      User user = result.user;
      return user;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
