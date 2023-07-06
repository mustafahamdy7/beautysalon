import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:quickalert/models/quickalert_type.dart';
import 'package:quickalert/widgets/quickalert_dialog.dart';
import 'login_page.dart';
import 'package:ebook/screens/home_page.dart';

class Authentication {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  Stream<User?> get authStateChange => _auth.authStateChanges();


  Future<void> signInWithEmailAndPassword(
      String email, String password, BuildContext context) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      Navigator.push(
          context, MaterialPageRoute(builder: (context) =>  HomePage()));
    } catch (e) {
      await QuickAlert.show(
        confirmBtnColor: Colors.deepPurpleAccent,
        confirmBtnTextStyle: const TextStyle(
            fontFamily: '', fontSize: 40, color: Colors.white),
        customAsset: 'assets/images/xx.gif',
        context: context,
        type: QuickAlertType.error,
        title: ' Login Failed',
        text: 'Email Address or Password You Entered is Incorrect',
      );
    }
  }

  Future<void> signUpWithEmailAndPassword(
      String email, String password, BuildContext context) async {
    try {
      final newUser = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      if (newUser != null) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) =>  LoginScreen()),
        );
      }
    } catch (e) {
      await QuickAlert.show(
        confirmBtnColor: Colors.deepPurpleAccent,
        confirmBtnTextStyle: const TextStyle(
            fontFamily: '', fontSize: 40, color: Colors.white),
        customAsset: 'assets/images/gip.gif',
        context: context,
        type: QuickAlertType.warning,
        title: 'Register Failed',
        text: 'The Email You Entered is Already in Use',
      );
    }
  }

  Future<void> signOut(BuildContext context) async {
    await QuickAlert.show(
      confirmBtnColor: Colors.white,
      onConfirmBtnTap: () {
        _auth.signOut();
        Navigator.of(context).pop();
      },
      confirmBtnTextStyle: const TextStyle(
          fontFamily: '', fontSize: 20, color: Colors.deepPurpleAccent),
      cancelBtnTextStyle: const TextStyle(
          fontFamily: '', fontSize: 20, color: Colors.deepPurpleAccent),
      customAsset: 'assets/images/xx.gif',
      context: context,
      type: QuickAlertType.confirm,
      title: 'Are you sure you want to sign out?',
    );
  }
}
