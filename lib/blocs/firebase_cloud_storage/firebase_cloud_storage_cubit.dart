import 'dart:async';
import 'dart:io';

import 'package:firebase_auth_study/blocs/blocs.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:path_provider/path_provider.dart';

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

    // Directory appDocDir = await getApplicationDocumentsDirectory();
    // String filep

    File file = File(filePath);
    await mountainsRef.putFile(file);

    // try {
    // } catch (e)
    // {
    //   print(e);
    // }
  }

  Future<void> downloadFile() async {
    // emit(FirebaseCloudStorageState.loaded(
    //     "https://firebasestorage.googleapis.com/v0/b/fir-study-3ef93.appspot.com/o/users%2F48SqUhPPvKYt4sYZf29I96n877V2%2Fimages%2Fmountains.jps?alt=media&token=ca061929-f4ca-4e2e-8554-a951998d2ec7"));
    // return;
    final _uid = "48SqUhPPvKYt4sYZf29I96n877V2";

    if (_uid == null) return;
    final storageRef = _storage.ref();

    // print(_uid);

    final pathReference = storageRef.child("users/$_uid/images/mountains.jps");

    final url = await pathReference.getDownloadURL();
    print(url);

    emit(FirebaseCloudStorageState.loaded(url));
  }
}
