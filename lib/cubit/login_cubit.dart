import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginCubit extends Cubit<LoginState> {
  final FirebaseAuth _firebaseAuth;

  LoginCubit(this._firebaseAuth) : super(LoginInitial());

  Future<void> login(String email, String password) async {
    emit(LoginLoading());
    try {
      UserCredential userCredential = await _firebaseAuth
          .signInWithEmailAndPassword(email: email, password: password);
      emit(LoginSuccess(userCredential.user));
    } catch (e) {
      if (e is FirebaseAuthException && e.code == 'user-not-found') {
        try {
          UserCredential userCredential = await _firebaseAuth
              .createUserWithEmailAndPassword(email: email, password: password);
          emit(LoginSuccess(userCredential.user));
          // Show a notification that a new user has been created
          showNewUserNotification();
        } catch (e) {
          emit(LoginError(e.toString()));
        }
      } else {
        emit(LoginError(e.toString()));
      }
    }
  }

  void logout() async {
    await _firebaseAuth.signOut();
    emit(LoginInitial());
  }

  void showNewUserNotification() {
    Fluttertoast.showToast(
        msg: "This is a new user",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
  }
}

abstract class LoginState {}

class LoginInitial extends LoginState {}

class LoginLoading extends LoginState {}

class LoginSuccess extends LoginState {
  final User? user;
  LoginSuccess(this.user);
}

class LoginError extends LoginState {
  final String message;
  LoginError(this.message);
}
