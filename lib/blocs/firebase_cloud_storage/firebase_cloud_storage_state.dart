part of 'firebase_cloud_storage_cubit.dart';

@freezed
class FirebaseCloudStorageState with _$FirebaseCloudStorageState {
  const factory FirebaseCloudStorageState.initial() = _initial;
  const factory FirebaseCloudStorageState.loaded(String url) = _loaded;
}