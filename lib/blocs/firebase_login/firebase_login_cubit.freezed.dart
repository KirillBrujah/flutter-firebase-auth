// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'firebase_login_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FirebaseLoginState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notAuthorized,
    required TResult Function(User user) authorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notAuthorized,
    TResult? Function(User user)? authorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notAuthorized,
    TResult Function(User user)? authorized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_notAuthorized value) notAuthorized,
    required TResult Function(_authorized value) authorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_notAuthorized value)? notAuthorized,
    TResult? Function(_authorized value)? authorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_notAuthorized value)? notAuthorized,
    TResult Function(_authorized value)? authorized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirebaseLoginStateCopyWith<$Res> {
  factory $FirebaseLoginStateCopyWith(
          FirebaseLoginState value, $Res Function(FirebaseLoginState) then) =
      _$FirebaseLoginStateCopyWithImpl<$Res, FirebaseLoginState>;
}

/// @nodoc
class _$FirebaseLoginStateCopyWithImpl<$Res, $Val extends FirebaseLoginState>
    implements $FirebaseLoginStateCopyWith<$Res> {
  _$FirebaseLoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_notAuthorizedCopyWith<$Res> {
  factory _$$_notAuthorizedCopyWith(
          _$_notAuthorized value, $Res Function(_$_notAuthorized) then) =
      __$$_notAuthorizedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_notAuthorizedCopyWithImpl<$Res>
    extends _$FirebaseLoginStateCopyWithImpl<$Res, _$_notAuthorized>
    implements _$$_notAuthorizedCopyWith<$Res> {
  __$$_notAuthorizedCopyWithImpl(
      _$_notAuthorized _value, $Res Function(_$_notAuthorized) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_notAuthorized implements _notAuthorized {
  const _$_notAuthorized();

  @override
  String toString() {
    return 'FirebaseLoginState.notAuthorized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_notAuthorized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notAuthorized,
    required TResult Function(User user) authorized,
  }) {
    return notAuthorized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notAuthorized,
    TResult? Function(User user)? authorized,
  }) {
    return notAuthorized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notAuthorized,
    TResult Function(User user)? authorized,
    required TResult orElse(),
  }) {
    if (notAuthorized != null) {
      return notAuthorized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_notAuthorized value) notAuthorized,
    required TResult Function(_authorized value) authorized,
  }) {
    return notAuthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_notAuthorized value)? notAuthorized,
    TResult? Function(_authorized value)? authorized,
  }) {
    return notAuthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_notAuthorized value)? notAuthorized,
    TResult Function(_authorized value)? authorized,
    required TResult orElse(),
  }) {
    if (notAuthorized != null) {
      return notAuthorized(this);
    }
    return orElse();
  }
}

abstract class _notAuthorized implements FirebaseLoginState {
  const factory _notAuthorized() = _$_notAuthorized;
}

/// @nodoc
abstract class _$$_authorizedCopyWith<$Res> {
  factory _$$_authorizedCopyWith(
          _$_authorized value, $Res Function(_$_authorized) then) =
      __$$_authorizedCopyWithImpl<$Res>;
  @useResult
  $Res call({User user});
}

/// @nodoc
class __$$_authorizedCopyWithImpl<$Res>
    extends _$FirebaseLoginStateCopyWithImpl<$Res, _$_authorized>
    implements _$$_authorizedCopyWith<$Res> {
  __$$_authorizedCopyWithImpl(
      _$_authorized _value, $Res Function(_$_authorized) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$_authorized(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$_authorized implements _authorized {
  const _$_authorized(this.user);

  @override
  final User user;

  @override
  String toString() {
    return 'FirebaseLoginState.authorized(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_authorized &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_authorizedCopyWith<_$_authorized> get copyWith =>
      __$$_authorizedCopyWithImpl<_$_authorized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notAuthorized,
    required TResult Function(User user) authorized,
  }) {
    return authorized(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notAuthorized,
    TResult? Function(User user)? authorized,
  }) {
    return authorized?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notAuthorized,
    TResult Function(User user)? authorized,
    required TResult orElse(),
  }) {
    if (authorized != null) {
      return authorized(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_notAuthorized value) notAuthorized,
    required TResult Function(_authorized value) authorized,
  }) {
    return authorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_notAuthorized value)? notAuthorized,
    TResult? Function(_authorized value)? authorized,
  }) {
    return authorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_notAuthorized value)? notAuthorized,
    TResult Function(_authorized value)? authorized,
    required TResult orElse(),
  }) {
    if (authorized != null) {
      return authorized(this);
    }
    return orElse();
  }
}

abstract class _authorized implements FirebaseLoginState {
  const factory _authorized(final User user) = _$_authorized;

  User get user;
  @JsonKey(ignore: true)
  _$$_authorizedCopyWith<_$_authorized> get copyWith =>
      throw _privateConstructorUsedError;
}
