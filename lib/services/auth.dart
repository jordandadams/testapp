import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

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

}