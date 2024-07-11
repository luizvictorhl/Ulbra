import 'dart:async';

import 'package:apiflutter/models/userModel.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

import '../../../utils/results.dart';

class FirebaseAuthService {
  FirebaseAuth _auth = FirebaseAuth.instance;

  Stream<UserModel> get user {
    return _auth.authStateChanges().map((user) {
      return UserModel(email: user?.email ?? "");
    });
  }

  final StreamController<Results> _resultsLogin = StreamController<Results>.broadcast();

  Stream<Results> get resultsLogin => _resultsLogin.stream;

  signIn(String email, String password) async {
    _resultsLogin.add(LoadingResult());
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      _resultsLogin.add(SucessResult());
    } on FirebaseAuthException catch (exception, e) {
      _resultsLogin.add(ErrorResult(code: exception.code));
      debugPrint(e.toString());
    }
  }

  register(String email, String password) async{
    try{
      _auth.createUserWithEmailAndPassword(email: email, password: password);
    }catch(e){
      debugPrint(e.toString());
    }
  }

  void signOut() async {
    await _auth.signOut();
  }
}
