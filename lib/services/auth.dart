import 'package:firebase_auth/firebase_auth.dart';
import 'package:login/model/user.dart';

class AuthMethod {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  User _userFromFirebaseUser(FirebaseUser user){
    return user != null ? User(userId: user.uid) : null;
  }
  Future signInWithEmailAndPassword(String email , String password) async {

    try{
      AuthResult result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      FirebaseUser firebaseUser = result.user;
      return _userFromFirebaseUser(firebaseUser);
    }
    catch(e){
      print(e.toString());
    }
  }


  Future resetPassword(String email) async {
    try{
      return await _auth.sendPasswordResetEmail(
          email: email);
    }
    catch(e){
      print(e.toString());
    }
  }

  Future signOut() async {
    return await _auth.signOut();
  }
}