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

  String? _uid;

  void _loginListener(FirebaseLoginState state) {
    state.when(
      notAuthorized: () {
        emit(const FirebaseDbState.initial());
      },
      authorized: (user) {
        _uid = user.uid;
        _getData();
      },
    );
  }

  Future<void> _getData() async {
    emit(const FirebaseDbState.initial());
    final snapshot = await _database.ref("users/$_uid").get();

    if (snapshot.exists) {
      // print(snapshot.value as Map);
      emit(FirebaseDbState.loaded(snapshot.value as Map));
    }
  }

  Future<void> createUser() async {
    final ref = _database.ref("users/$_uid");
    await ref.set({
      "name": "Brujah_$_uid",
    });
    _getData();
  }
}
