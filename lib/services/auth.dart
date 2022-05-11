import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthService {
  // stream that listens to changes to firebase user and reacts accordingly
  final userStream = FirebaseAuth.instance.authStateChanges();
  // used for when a user clicks on a button and you need to check their auth statement for that moment
  final user = FirebaseAuth.instance.currentUser;

  // Anonymous Firebase Login
  Future<void> anonLogin() async {
    try {
      await FirebaseAuth.instance.signInAnonymously();
    } on FirebaseAuthException catch(e) {
      //handle error
    }
  }

  // Sign Out
  Future<void> signOut() async {
    await FirebaseAuth.instance.signOut();
  }

  //Google Auth
  Future<void> googleLogin() async {
    try{
      final googleUser = await GoogleSignIn().signIn();
      if (googleUser == null) return;

      final googleAuth = await googleUser.authentication;
      final authCredential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      await FirebaseAuth.instance.signInWithCredential(authCredential);

    } on FirebaseAuthException catch (e) {
      //handle error
    }
    
  }

}