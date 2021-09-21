import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:food_app/User.dart';

class AuthService {
  final auth.FirebaseAuth _auth = auth.FirebaseAuth.instance;
  User? _userfromFirebase(auth.User? user) {
    return user != null ? User(uid: user.uid) : null;
  }

  Stream<User?>? get user {
    return _auth.authStateChanges().map(_userfromFirebase);
  }

  Future<User?> signInWithEmailAndPassword(
      String email, String password) async {
    try {
      final credential = await _auth.signInWithEmailAndPassword(
          email: email, password: password);

      return _userfromFirebase(credential.user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  Future<User?> registerWithEmailAndPassword(
      String email, String password) async {
    try {
      final credential = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);

      return _userfromFirebase(credential.user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  Future<void> signOut() async {
    return await _auth.signOut();
  }
}