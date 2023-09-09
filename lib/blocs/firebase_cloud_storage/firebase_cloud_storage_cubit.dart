import 'dart:async';
import 'dart:io';

import 'package:firebase_auth_study/blocs/blocs.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'firebase_cloud_storage_state.dart';

part 'firebase_cloud_storage_cubit.freezed.dart';

class FirebaseCloudStorageCubit extends Cubit<FirebaseCloudStorageState> {
  late final FirebaseStorage _storage;

  FirebaseCloudStorageCubit({required FirebaseLoginCubit loginCubit})
      : super(const FirebaseCloudStorageState.initial()) {
    _storage = FirebaseStorage.instance;

    authStream = loginCubit.stream.listen(_loginListener);
  }

  String? _uid;
  StreamSubscription? authStream;

  void _loginListener(FirebaseLoginState state) {
    state.when(
      notAuthorized: () {
        emit(const FirebaseCloudStorageState.initial());
      },
      authorized: (user) {
        _uid = user.uid;
        downloadFile();
      },
    );
  }

  Future<void> uploadFile(String filePath) async {
    if (_uid == null) return;
    final storageRef = _storage.ref();

    final mountainsRef = storageRef.child("users/$_uid/images/mountains.jps");

    File file = File(filePath);
    await mountainsRef.putFile(file);
  }

  Future<void> downloadFile() async {
    if (_uid == null) return;
    final storageRef = _storage.ref();

    final pathReference = storageRef.child("users/$_uid/images/mountains.jps");

    final url = await pathReference.getDownloadURL();

    emit(FirebaseCloudStorageState.loaded(url));
  }
}
