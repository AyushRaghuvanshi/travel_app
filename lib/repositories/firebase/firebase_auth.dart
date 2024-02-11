import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthHelper extends ChangeNotifier{
  final FirebaseAuth _auth = FirebaseAuth.instance;

  UserCredential? userCredential;
  
  Future<void> login(String email,String password)async{
    try{
      userCredential = await _auth.signInWithEmailAndPassword(email: email, password: password);
      notifyListeners();
    }catch(e){
      return Future.error(e.toString());
    }
  }

    Future<void> signup(String email,String password)async{
    try{
      userCredential = await _auth.createUserWithEmailAndPassword(email: email, password: password);
      notifyListeners();
    }catch(e){
      return Future.error(e.toString());
    }
  }

  bool get isLoggedIn =>
     _auth.currentUser?.uid != null;
  
}