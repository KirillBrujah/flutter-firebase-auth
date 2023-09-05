part of 'firebase_login_cubit.dart';

@freezed
class FirebaseLoginState with _$FirebaseLoginState {
  const factory FirebaseLoginState.notAuthorized() = _notAuthorized;

  const factory FirebaseLoginState.authorized(User user) = _authorized;
}