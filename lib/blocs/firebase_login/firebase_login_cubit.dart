import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'firebase_login_state.dart';

part 'firebase_login_cubit.freezed.dart';

class FirebaseLoginCubit extends Cubit<FirebaseLoginState> {
  late final FirebaseAuth _auth;

  FirebaseLoginCubit() : super(const FirebaseLoginState.notAuthorized()) {
    _auth = FirebaseAuth.instance;

    _auth.authStateChanges().listen((User? user) {
      if (user == null) {
        emit(const FirebaseLoginState.notAuthorized());
        return;
      }

      emit(FirebaseLoginState.authorized(user));
    });
  }

  Future<void> login() async {
    if (_auth.currentUser != null) {
      return;
    }

    await _auth.signInWithEmailAndPassword(
      email: "test@gmail.com",
      password: "testpassword",
    );
  }

  Future<void> register() async {
    await _auth.createUserWithEmailAndPassword(
      email: "test@gmail.com",
      password: "testpassword",
    );
  }

  Future<void> logout() async {
    if (_auth.currentUser == null) {
      return;
    }
    await _auth.signOut();
  }
}
