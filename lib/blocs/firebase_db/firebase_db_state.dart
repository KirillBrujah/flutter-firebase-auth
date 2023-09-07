part of 'firebase_db_cubit.dart';

@freezed
class FirebaseDbState with _$FirebaseDbState {
  const factory FirebaseDbState.initial() = _initial;


  const factory FirebaseDbState.loaded(Map data) = _loaded;
}