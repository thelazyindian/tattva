// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
class _$UserTearOff {
  const _$UserTearOff();

  _User call(
      {String? uid,
      required String displayName,
      required String email,
      bool emailVerified = false,
      @TimestampConverter() required DateTime creationTime,
      @TimestampConverter() required DateTime lastSignInTime,
      String? photoURL}) {
    return _User(
      uid: uid,
      displayName: displayName,
      email: email,
      emailVerified: emailVerified,
      creationTime: creationTime,
      lastSignInTime: lastSignInTime,
      photoURL: photoURL,
    );
  }

  User fromJson(Map<String, Object> json) {
    return User.fromJson(json);
  }
}

/// @nodoc
const $User = _$UserTearOff();

/// @nodoc
mixin _$User {
  String? get uid => throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  bool get emailVerified => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime get creationTime => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime get lastSignInTime => throw _privateConstructorUsedError;
  String? get photoURL => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call(
      {String? uid,
      String displayName,
      String email,
      bool emailVerified,
      @TimestampConverter() DateTime creationTime,
      @TimestampConverter() DateTime lastSignInTime,
      String? photoURL});
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object? uid = freezed,
    Object? displayName = freezed,
    Object? email = freezed,
    Object? emailVerified = freezed,
    Object? creationTime = freezed,
    Object? lastSignInTime = freezed,
    Object? photoURL = freezed,
  }) {
    return _then(_value.copyWith(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      emailVerified: emailVerified == freezed
          ? _value.emailVerified
          : emailVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      creationTime: creationTime == freezed
          ? _value.creationTime
          : creationTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastSignInTime: lastSignInTime == freezed
          ? _value.lastSignInTime
          : lastSignInTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      photoURL: photoURL == freezed
          ? _value.photoURL
          : photoURL // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? uid,
      String displayName,
      String email,
      bool emailVerified,
      @TimestampConverter() DateTime creationTime,
      @TimestampConverter() DateTime lastSignInTime,
      String? photoURL});
}

/// @nodoc
class __$UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then)
      : super(_value, (v) => _then(v as _User));

  @override
  _User get _value => super._value as _User;

  @override
  $Res call({
    Object? uid = freezed,
    Object? displayName = freezed,
    Object? email = freezed,
    Object? emailVerified = freezed,
    Object? creationTime = freezed,
    Object? lastSignInTime = freezed,
    Object? photoURL = freezed,
  }) {
    return _then(_User(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      emailVerified: emailVerified == freezed
          ? _value.emailVerified
          : emailVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      creationTime: creationTime == freezed
          ? _value.creationTime
          : creationTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastSignInTime: lastSignInTime == freezed
          ? _value.lastSignInTime
          : lastSignInTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      photoURL: photoURL == freezed
          ? _value.photoURL
          : photoURL // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_User implements _User {
  const _$_User(
      {this.uid,
      required this.displayName,
      required this.email,
      this.emailVerified = false,
      @TimestampConverter() required this.creationTime,
      @TimestampConverter() required this.lastSignInTime,
      this.photoURL});

  factory _$_User.fromJson(Map<String, dynamic> json) =>
      _$_$_UserFromJson(json);

  @override
  final String? uid;
  @override
  final String displayName;
  @override
  final String email;
  @JsonKey(defaultValue: false)
  @override
  final bool emailVerified;
  @override
  @TimestampConverter()
  final DateTime creationTime;
  @override
  @TimestampConverter()
  final DateTime lastSignInTime;
  @override
  final String? photoURL;

  @override
  String toString() {
    return 'User(uid: $uid, displayName: $displayName, email: $email, emailVerified: $emailVerified, creationTime: $creationTime, lastSignInTime: $lastSignInTime, photoURL: $photoURL)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _User &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.displayName, displayName) ||
                const DeepCollectionEquality()
                    .equals(other.displayName, displayName)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.emailVerified, emailVerified) ||
                const DeepCollectionEquality()
                    .equals(other.emailVerified, emailVerified)) &&
            (identical(other.creationTime, creationTime) ||
                const DeepCollectionEquality()
                    .equals(other.creationTime, creationTime)) &&
            (identical(other.lastSignInTime, lastSignInTime) ||
                const DeepCollectionEquality()
                    .equals(other.lastSignInTime, lastSignInTime)) &&
            (identical(other.photoURL, photoURL) ||
                const DeepCollectionEquality()
                    .equals(other.photoURL, photoURL)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(displayName) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(emailVerified) ^
      const DeepCollectionEquality().hash(creationTime) ^
      const DeepCollectionEquality().hash(lastSignInTime) ^
      const DeepCollectionEquality().hash(photoURL);

  @JsonKey(ignore: true)
  @override
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserToJson(this);
  }
}

abstract class _User implements User {
  const factory _User(
      {String? uid,
      required String displayName,
      required String email,
      bool emailVerified,
      @TimestampConverter() required DateTime creationTime,
      @TimestampConverter() required DateTime lastSignInTime,
      String? photoURL}) = _$_User;

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  String? get uid => throw _privateConstructorUsedError;
  @override
  String get displayName => throw _privateConstructorUsedError;
  @override
  String get email => throw _privateConstructorUsedError;
  @override
  bool get emailVerified => throw _privateConstructorUsedError;
  @override
  @TimestampConverter()
  DateTime get creationTime => throw _privateConstructorUsedError;
  @override
  @TimestampConverter()
  DateTime get lastSignInTime => throw _privateConstructorUsedError;
  @override
  String? get photoURL => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserCopyWith<_User> get copyWith => throw _privateConstructorUsedError;
}
