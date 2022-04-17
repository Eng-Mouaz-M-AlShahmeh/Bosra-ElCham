// Developed by Eng Mouaz M Shahmeh 2022

import 'dart:async';
import 'package:bosra_elcham/src/home/data/database.dart';
import 'package:bosra_elcham/src/home/domain/user_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // create user obj based on FirebaseUser
  UserModel? _userFromFirebaseUser(User user) {
    return UserModel(uid: user.uid);
  }

  // Listen to auth changes
  Stream<User?> get userAuth => _auth.authStateChanges();

  // sign in anon
  Future signInAnon() async {
    try {
      var result = await _auth.signInAnonymously();
      User? userAuth = result.user;
      return _userFromFirebaseUser(userAuth!);
    } catch (e) {
      // print(e.toString());
      return null;
    }
  }

  // sign in with email and password
  Future signInWithEmailAndPassword(String email, String password) async {
    try {
      var result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      User? user = result.user;
      return _userFromFirebaseUser(user!);
    } catch (e) {
      // print(e.toString());
      return null;
    }
  }

  // register with email and password
  Future registerWithEmailAndPassword(String email, String password) async {
    try {
      var result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      User? user = result.user;

      // create a new document for the user with the uid
      DateTime _now = DateTime.now();
      await DatabaseService(uid: user!.uid).updateUserData(
        result.user!.email,
        Timestamp.fromDate(_now),
        // 'new member registered'
      );

      return _userFromFirebaseUser(user);
    } catch (e) {
      // print(e.toString());
      return null;
    }
  }

  // sign out
  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch (e) {
      // print(e.toString());
      return null;
    }
  }
}