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

  FirebaseCloudStorageCubit({required FirebaseLoginCubit loginCubit}) : super(const FirebaseCloudStorageState.initial()) {
    _storage = FirebaseStorage.instance;
  }


  Future<void> uploadFile(String filePath) async {
    final storageRef = _storage.ref();

    final mountainsRef = storageRef.child("images/mountains.jps");


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
    final storageRef = _storage.ref();

    final pathReference = storageRef.child("images/mountains.jps");

    final url = await pathReference.getDownloadURL();

    emit(FirebaseCloudStorageState.loaded(url));
  }
}
