import 'dart:async';

import 'package:firebase_auth_study/blocs/blocs.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:firebase_database/firebase_database.dart';

part 'firebase_db_cubit.freezed.dart';

part 'firebase_db_state.dart';

class FirebaseDbCubit extends Cubit<FirebaseDbState> {
  late final FirebaseDatabase _database;

  StreamSubscription? authStream;

  FirebaseDbCubit({required FirebaseLoginCubit loginCubit})
      : super(const FirebaseDbState.initial()) {
    _database = FirebaseDatabase.instance;

    authStream = loginCubit.stream.listen(_loginListener);
  }

  void _loginListener(FirebaseLoginState state) {
    state.when(
      notAuthorized: () {
        emit(const FirebaseDbState.initial());
      },
      authorized: (user) {
        // _createUser(user.uid);
        _getData(user.uid);
      },
    );
  }

  Future<void> _getData(String uid) async {
    emit(const FirebaseDbState.initial());
    final snapshot = await _database.ref("users/$uid").get();

    if (snapshot.exists) {
      // print(snapshot.value as Map);
      emit(FirebaseDbState.loaded(snapshot.value as Map));
    }
  }

  Future<void> _createUser(String uid) async {
    final ref = _database.ref("users/$uid");
    await ref.set({
      "name": "Brujah_$uid",
    });
  }
}
