// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'auth_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthFailureTearOff {
  const _$AuthFailureTearOff();

  _InvalidEmailOrPassword invalidEmailOrPassword(
      {String? msg = 'Invalid Email or Password.'}) {
    return _InvalidEmailOrPassword(
      msg: msg,
    );
  }

  _InvalidEmail invalidEmail({String? msg = 'Invalid Email.'}) {
    return _InvalidEmail(
      msg: msg,
    );
  }

  _AccountAlreadyExists accountAlreadyExists(
      {String? msg = 'Account already exists.'}) {
    return _AccountAlreadyExists(
      msg: msg,
    );
  }

  _AccountExistsWithDifferentCredential accountExistsWithDifferentCredential(
      {String? msg = 'Account exists with different sign in methods.'}) {
    return _AccountExistsWithDifferentCredential(
      msg: msg,
    );
  }

  _WeakPassword weakPassword({String? msg = 'Password is too weak.'}) {
    return _WeakPassword(
      msg: msg,
    );
  }

  _AccountDoesnotExist accountDoesnotExist(
      {String? msg = "Account doesn't exist."}) {
    return _AccountDoesnotExist(
      msg: msg,
    );
  }

  _ServerError serverError({String? msg = 'Server Error Occured.'}) {
    return _ServerError(
      msg: msg,
    );
  }
}

/// @nodoc
const $AuthFailure = _$AuthFailureTearOff();

/// @nodoc
mixin _$AuthFailure {
  String? get msg => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? msg) invalidEmailOrPassword,
    required TResult Function(String? msg) invalidEmail,
    required TResult Function(String? msg) accountAlreadyExists,
    required TResult Function(String? msg) accountExistsWithDifferentCredential,
    required TResult Function(String? msg) weakPassword,
    required TResult Function(String? msg) accountDoesnotExist,
    required TResult Function(String? msg) serverError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? msg)? invalidEmailOrPassword,
    TResult Function(String? msg)? invalidEmail,
    TResult Function(String? msg)? accountAlreadyExists,
    TResult Function(String? msg)? accountExistsWithDifferentCredential,
    TResult Function(String? msg)? weakPassword,
    TResult Function(String? msg)? accountDoesnotExist,
    TResult Function(String? msg)? serverError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InvalidEmailOrPassword value)
        invalidEmailOrPassword,
    required TResult Function(_InvalidEmail value) invalidEmail,
    required TResult Function(_AccountAlreadyExists value) accountAlreadyExists,
    required TResult Function(_AccountExistsWithDifferentCredential value)
        accountExistsWithDifferentCredential,
    required TResult Function(_WeakPassword value) weakPassword,
    required TResult Function(_AccountDoesnotExist value) accountDoesnotExist,
    required TResult Function(_ServerError value) serverError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InvalidEmailOrPassword value)? invalidEmailOrPassword,
    TResult Function(_InvalidEmail value)? invalidEmail,
    TResult Function(_AccountAlreadyExists value)? accountAlreadyExists,
    TResult Function(_AccountExistsWithDifferentCredential value)?
        accountExistsWithDifferentCredential,
    TResult Function(_WeakPassword value)? weakPassword,
    TResult Function(_AccountDoesnotExist value)? accountDoesnotExist,
    TResult Function(_ServerError value)? serverError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthFailureCopyWith<AuthFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthFailureCopyWith<$Res> {
  factory $AuthFailureCopyWith(
          AuthFailure value, $Res Function(AuthFailure) then) =
      _$AuthFailureCopyWithImpl<$Res>;
  $Res call({String? msg});
}

/// @nodoc
class _$AuthFailureCopyWithImpl<$Res> implements $AuthFailureCopyWith<$Res> {
  _$AuthFailureCopyWithImpl(this._value, this._then);

  final AuthFailure _value;
  // ignore: unused_field
  final $Res Function(AuthFailure) _then;

  @override
  $Res call({
    Object? msg = freezed,
  }) {
    return _then(_value.copyWith(
      msg: msg == freezed
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$InvalidEmailOrPasswordCopyWith<$Res>
    implements $AuthFailureCopyWith<$Res> {
  factory _$InvalidEmailOrPasswordCopyWith(_InvalidEmailOrPassword value,
          $Res Function(_InvalidEmailOrPassword) then) =
      __$InvalidEmailOrPasswordCopyWithImpl<$Res>;
  @override
  $Res call({String? msg});
}

/// @nodoc
class __$InvalidEmailOrPasswordCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements _$InvalidEmailOrPasswordCopyWith<$Res> {
  __$InvalidEmailOrPasswordCopyWithImpl(_InvalidEmailOrPassword _value,
      $Res Function(_InvalidEmailOrPassword) _then)
      : super(_value, (v) => _then(v as _InvalidEmailOrPassword));

  @override
  _InvalidEmailOrPassword get _value => super._value as _InvalidEmailOrPassword;

  @override
  $Res call({
    Object? msg = freezed,
  }) {
    return _then(_InvalidEmailOrPassword(
      msg: msg == freezed
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
class _$_InvalidEmailOrPassword implements _InvalidEmailOrPassword {
  const _$_InvalidEmailOrPassword({this.msg = 'Invalid Email or Password.'});

  @JsonKey(defaultValue: 'Invalid Email or Password.')
  @override
  final String? msg;

  @override
  String toString() {
    return 'AuthFailure.invalidEmailOrPassword(msg: $msg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InvalidEmailOrPassword &&
            (identical(other.msg, msg) ||
                const DeepCollectionEquality().equals(other.msg, msg)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(msg);

  @JsonKey(ignore: true)
  @override
  _$InvalidEmailOrPasswordCopyWith<_InvalidEmailOrPassword> get copyWith =>
      __$InvalidEmailOrPasswordCopyWithImpl<_InvalidEmailOrPassword>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? msg) invalidEmailOrPassword,
    required TResult Function(String? msg) invalidEmail,
    required TResult Function(String? msg) accountAlreadyExists,
    required TResult Function(String? msg) accountExistsWithDifferentCredential,
    required TResult Function(String? msg) weakPassword,
    required TResult Function(String? msg) accountDoesnotExist,
    required TResult Function(String? msg) serverError,
  }) {
    return invalidEmailOrPassword(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? msg)? invalidEmailOrPassword,
    TResult Function(String? msg)? invalidEmail,
    TResult Function(String? msg)? accountAlreadyExists,
    TResult Function(String? msg)? accountExistsWithDifferentCredential,
    TResult Function(String? msg)? weakPassword,
    TResult Function(String? msg)? accountDoesnotExist,
    TResult Function(String? msg)? serverError,
    required TResult orElse(),
  }) {
    if (invalidEmailOrPassword != null) {
      return invalidEmailOrPassword(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InvalidEmailOrPassword value)
        invalidEmailOrPassword,
    required TResult Function(_InvalidEmail value) invalidEmail,
    required TResult Function(_AccountAlreadyExists value) accountAlreadyExists,
    required TResult Function(_AccountExistsWithDifferentCredential value)
        accountExistsWithDifferentCredential,
    required TResult Function(_WeakPassword value) weakPassword,
    required TResult Function(_AccountDoesnotExist value) accountDoesnotExist,
    required TResult Function(_ServerError value) serverError,
  }) {
    return invalidEmailOrPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InvalidEmailOrPassword value)? invalidEmailOrPassword,
    TResult Function(_InvalidEmail value)? invalidEmail,
    TResult Function(_AccountAlreadyExists value)? accountAlreadyExists,
    TResult Function(_AccountExistsWithDifferentCredential value)?
        accountExistsWithDifferentCredential,
    TResult Function(_WeakPassword value)? weakPassword,
    TResult Function(_AccountDoesnotExist value)? accountDoesnotExist,
    TResult Function(_ServerError value)? serverError,
    required TResult orElse(),
  }) {
    if (invalidEmailOrPassword != null) {
      return invalidEmailOrPassword(this);
    }
    return orElse();
  }
}

abstract class _InvalidEmailOrPassword implements AuthFailure {
  const factory _InvalidEmailOrPassword({String? msg}) =
      _$_InvalidEmailOrPassword;

  @override
  String? get msg => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$InvalidEmailOrPasswordCopyWith<_InvalidEmailOrPassword> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$InvalidEmailCopyWith<$Res>
    implements $AuthFailureCopyWith<$Res> {
  factory _$InvalidEmailCopyWith(
          _InvalidEmail value, $Res Function(_InvalidEmail) then) =
      __$InvalidEmailCopyWithImpl<$Res>;
  @override
  $Res call({String? msg});
}

/// @nodoc
class __$InvalidEmailCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements _$InvalidEmailCopyWith<$Res> {
  __$InvalidEmailCopyWithImpl(
      _InvalidEmail _value, $Res Function(_InvalidEmail) _then)
      : super(_value, (v) => _then(v as _InvalidEmail));

  @override
  _InvalidEmail get _value => super._value as _InvalidEmail;

  @override
  $Res call({
    Object? msg = freezed,
  }) {
    return _then(_InvalidEmail(
      msg: msg == freezed
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
class _$_InvalidEmail implements _InvalidEmail {
  const _$_InvalidEmail({this.msg = 'Invalid Email.'});

  @JsonKey(defaultValue: 'Invalid Email.')
  @override
  final String? msg;

  @override
  String toString() {
    return 'AuthFailure.invalidEmail(msg: $msg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InvalidEmail &&
            (identical(other.msg, msg) ||
                const DeepCollectionEquality().equals(other.msg, msg)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(msg);

  @JsonKey(ignore: true)
  @override
  _$InvalidEmailCopyWith<_InvalidEmail> get copyWith =>
      __$InvalidEmailCopyWithImpl<_InvalidEmail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? msg) invalidEmailOrPassword,
    required TResult Function(String? msg) invalidEmail,
    required TResult Function(String? msg) accountAlreadyExists,
    required TResult Function(String? msg) accountExistsWithDifferentCredential,
    required TResult Function(String? msg) weakPassword,
    required TResult Function(String? msg) accountDoesnotExist,
    required TResult Function(String? msg) serverError,
  }) {
    return invalidEmail(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? msg)? invalidEmailOrPassword,
    TResult Function(String? msg)? invalidEmail,
    TResult Function(String? msg)? accountAlreadyExists,
    TResult Function(String? msg)? accountExistsWithDifferentCredential,
    TResult Function(String? msg)? weakPassword,
    TResult Function(String? msg)? accountDoesnotExist,
    TResult Function(String? msg)? serverError,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InvalidEmailOrPassword value)
        invalidEmailOrPassword,
    required TResult Function(_InvalidEmail value) invalidEmail,
    required TResult Function(_AccountAlreadyExists value) accountAlreadyExists,
    required TResult Function(_AccountExistsWithDifferentCredential value)
        accountExistsWithDifferentCredential,
    required TResult Function(_WeakPassword value) weakPassword,
    required TResult Function(_AccountDoesnotExist value) accountDoesnotExist,
    required TResult Function(_ServerError value) serverError,
  }) {
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InvalidEmailOrPassword value)? invalidEmailOrPassword,
    TResult Function(_InvalidEmail value)? invalidEmail,
    TResult Function(_AccountAlreadyExists value)? accountAlreadyExists,
    TResult Function(_AccountExistsWithDifferentCredential value)?
        accountExistsWithDifferentCredential,
    TResult Function(_WeakPassword value)? weakPassword,
    TResult Function(_AccountDoesnotExist value)? accountDoesnotExist,
    TResult Function(_ServerError value)? serverError,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class _InvalidEmail implements AuthFailure {
  const factory _InvalidEmail({String? msg}) = _$_InvalidEmail;

  @override
  String? get msg => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$InvalidEmailCopyWith<_InvalidEmail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AccountAlreadyExistsCopyWith<$Res>
    implements $AuthFailureCopyWith<$Res> {
  factory _$AccountAlreadyExistsCopyWith(_AccountAlreadyExists value,
          $Res Function(_AccountAlreadyExists) then) =
      __$AccountAlreadyExistsCopyWithImpl<$Res>;
  @override
  $Res call({String? msg});
}

/// @nodoc
class __$AccountAlreadyExistsCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements _$AccountAlreadyExistsCopyWith<$Res> {
  __$AccountAlreadyExistsCopyWithImpl(
      _AccountAlreadyExists _value, $Res Function(_AccountAlreadyExists) _then)
      : super(_value, (v) => _then(v as _AccountAlreadyExists));

  @override
  _AccountAlreadyExists get _value => super._value as _AccountAlreadyExists;

  @override
  $Res call({
    Object? msg = freezed,
  }) {
    return _then(_AccountAlreadyExists(
      msg: msg == freezed
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
class _$_AccountAlreadyExists implements _AccountAlreadyExists {
  const _$_AccountAlreadyExists({this.msg = 'Account already exists.'});

  @JsonKey(defaultValue: 'Account already exists.')
  @override
  final String? msg;

  @override
  String toString() {
    return 'AuthFailure.accountAlreadyExists(msg: $msg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AccountAlreadyExists &&
            (identical(other.msg, msg) ||
                const DeepCollectionEquality().equals(other.msg, msg)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(msg);

  @JsonKey(ignore: true)
  @override
  _$AccountAlreadyExistsCopyWith<_AccountAlreadyExists> get copyWith =>
      __$AccountAlreadyExistsCopyWithImpl<_AccountAlreadyExists>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? msg) invalidEmailOrPassword,
    required TResult Function(String? msg) invalidEmail,
    required TResult Function(String? msg) accountAlreadyExists,
    required TResult Function(String? msg) accountExistsWithDifferentCredential,
    required TResult Function(String? msg) weakPassword,
    required TResult Function(String? msg) accountDoesnotExist,
    required TResult Function(String? msg) serverError,
  }) {
    return accountAlreadyExists(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? msg)? invalidEmailOrPassword,
    TResult Function(String? msg)? invalidEmail,
    TResult Function(String? msg)? accountAlreadyExists,
    TResult Function(String? msg)? accountExistsWithDifferentCredential,
    TResult Function(String? msg)? weakPassword,
    TResult Function(String? msg)? accountDoesnotExist,
    TResult Function(String? msg)? serverError,
    required TResult orElse(),
  }) {
    if (accountAlreadyExists != null) {
      return accountAlreadyExists(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InvalidEmailOrPassword value)
        invalidEmailOrPassword,
    required TResult Function(_InvalidEmail value) invalidEmail,
    required TResult Function(_AccountAlreadyExists value) accountAlreadyExists,
    required TResult Function(_AccountExistsWithDifferentCredential value)
        accountExistsWithDifferentCredential,
    required TResult Function(_WeakPassword value) weakPassword,
    required TResult Function(_AccountDoesnotExist value) accountDoesnotExist,
    required TResult Function(_ServerError value) serverError,
  }) {
    return accountAlreadyExists(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InvalidEmailOrPassword value)? invalidEmailOrPassword,
    TResult Function(_InvalidEmail value)? invalidEmail,
    TResult Function(_AccountAlreadyExists value)? accountAlreadyExists,
    TResult Function(_AccountExistsWithDifferentCredential value)?
        accountExistsWithDifferentCredential,
    TResult Function(_WeakPassword value)? weakPassword,
    TResult Function(_AccountDoesnotExist value)? accountDoesnotExist,
    TResult Function(_ServerError value)? serverError,
    required TResult orElse(),
  }) {
    if (accountAlreadyExists != null) {
      return accountAlreadyExists(this);
    }
    return orElse();
  }
}

abstract class _AccountAlreadyExists implements AuthFailure {
  const factory _AccountAlreadyExists({String? msg}) = _$_AccountAlreadyExists;

  @override
  String? get msg => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AccountAlreadyExistsCopyWith<_AccountAlreadyExists> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AccountExistsWithDifferentCredentialCopyWith<$Res>
    implements $AuthFailureCopyWith<$Res> {
  factory _$AccountExistsWithDifferentCredentialCopyWith(
          _AccountExistsWithDifferentCredential value,
          $Res Function(_AccountExistsWithDifferentCredential) then) =
      __$AccountExistsWithDifferentCredentialCopyWithImpl<$Res>;
  @override
  $Res call({String? msg});
}

/// @nodoc
class __$AccountExistsWithDifferentCredentialCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements _$AccountExistsWithDifferentCredentialCopyWith<$Res> {
  __$AccountExistsWithDifferentCredentialCopyWithImpl(
      _AccountExistsWithDifferentCredential _value,
      $Res Function(_AccountExistsWithDifferentCredential) _then)
      : super(_value, (v) => _then(v as _AccountExistsWithDifferentCredential));

  @override
  _AccountExistsWithDifferentCredential get _value =>
      super._value as _AccountExistsWithDifferentCredential;

  @override
  $Res call({
    Object? msg = freezed,
  }) {
    return _then(_AccountExistsWithDifferentCredential(
      msg: msg == freezed
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
class _$_AccountExistsWithDifferentCredential
    implements _AccountExistsWithDifferentCredential {
  const _$_AccountExistsWithDifferentCredential(
      {this.msg = 'Account exists with different sign in methods.'});

  @JsonKey(defaultValue: 'Account exists with different sign in methods.')
  @override
  final String? msg;

  @override
  String toString() {
    return 'AuthFailure.accountExistsWithDifferentCredential(msg: $msg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AccountExistsWithDifferentCredential &&
            (identical(other.msg, msg) ||
                const DeepCollectionEquality().equals(other.msg, msg)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(msg);

  @JsonKey(ignore: true)
  @override
  _$AccountExistsWithDifferentCredentialCopyWith<
          _AccountExistsWithDifferentCredential>
      get copyWith => __$AccountExistsWithDifferentCredentialCopyWithImpl<
          _AccountExistsWithDifferentCredential>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? msg) invalidEmailOrPassword,
    required TResult Function(String? msg) invalidEmail,
    required TResult Function(String? msg) accountAlreadyExists,
    required TResult Function(String? msg) accountExistsWithDifferentCredential,
    required TResult Function(String? msg) weakPassword,
    required TResult Function(String? msg) accountDoesnotExist,
    required TResult Function(String? msg) serverError,
  }) {
    return accountExistsWithDifferentCredential(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? msg)? invalidEmailOrPassword,
    TResult Function(String? msg)? invalidEmail,
    TResult Function(String? msg)? accountAlreadyExists,
    TResult Function(String? msg)? accountExistsWithDifferentCredential,
    TResult Function(String? msg)? weakPassword,
    TResult Function(String? msg)? accountDoesnotExist,
    TResult Function(String? msg)? serverError,
    required TResult orElse(),
  }) {
    if (accountExistsWithDifferentCredential != null) {
      return accountExistsWithDifferentCredential(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InvalidEmailOrPassword value)
        invalidEmailOrPassword,
    required TResult Function(_InvalidEmail value) invalidEmail,
    required TResult Function(_AccountAlreadyExists value) accountAlreadyExists,
    required TResult Function(_AccountExistsWithDifferentCredential value)
        accountExistsWithDifferentCredential,
    required TResult Function(_WeakPassword value) weakPassword,
    required TResult Function(_AccountDoesnotExist value) accountDoesnotExist,
    required TResult Function(_ServerError value) serverError,
  }) {
    return accountExistsWithDifferentCredential(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InvalidEmailOrPassword value)? invalidEmailOrPassword,
    TResult Function(_InvalidEmail value)? invalidEmail,
    TResult Function(_AccountAlreadyExists value)? accountAlreadyExists,
    TResult Function(_AccountExistsWithDifferentCredential value)?
        accountExistsWithDifferentCredential,
    TResult Function(_WeakPassword value)? weakPassword,
    TResult Function(_AccountDoesnotExist value)? accountDoesnotExist,
    TResult Function(_ServerError value)? serverError,
    required TResult orElse(),
  }) {
    if (accountExistsWithDifferentCredential != null) {
      return accountExistsWithDifferentCredential(this);
    }
    return orElse();
  }
}

abstract class _AccountExistsWithDifferentCredential implements AuthFailure {
  const factory _AccountExistsWithDifferentCredential({String? msg}) =
      _$_AccountExistsWithDifferentCredential;

  @override
  String? get msg => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AccountExistsWithDifferentCredentialCopyWith<
          _AccountExistsWithDifferentCredential>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$WeakPasswordCopyWith<$Res>
    implements $AuthFailureCopyWith<$Res> {
  factory _$WeakPasswordCopyWith(
          _WeakPassword value, $Res Function(_WeakPassword) then) =
      __$WeakPasswordCopyWithImpl<$Res>;
  @override
  $Res call({String? msg});
}

/// @nodoc
class __$WeakPasswordCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements _$WeakPasswordCopyWith<$Res> {
  __$WeakPasswordCopyWithImpl(
      _WeakPassword _value, $Res Function(_WeakPassword) _then)
      : super(_value, (v) => _then(v as _WeakPassword));

  @override
  _WeakPassword get _value => super._value as _WeakPassword;

  @override
  $Res call({
    Object? msg = freezed,
  }) {
    return _then(_WeakPassword(
      msg: msg == freezed
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
class _$_WeakPassword implements _WeakPassword {
  const _$_WeakPassword({this.msg = 'Password is too weak.'});

  @JsonKey(defaultValue: 'Password is too weak.')
  @override
  final String? msg;

  @override
  String toString() {
    return 'AuthFailure.weakPassword(msg: $msg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WeakPassword &&
            (identical(other.msg, msg) ||
                const DeepCollectionEquality().equals(other.msg, msg)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(msg);

  @JsonKey(ignore: true)
  @override
  _$WeakPasswordCopyWith<_WeakPassword> get copyWith =>
      __$WeakPasswordCopyWithImpl<_WeakPassword>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? msg) invalidEmailOrPassword,
    required TResult Function(String? msg) invalidEmail,
    required TResult Function(String? msg) accountAlreadyExists,
    required TResult Function(String? msg) accountExistsWithDifferentCredential,
    required TResult Function(String? msg) weakPassword,
    required TResult Function(String? msg) accountDoesnotExist,
    required TResult Function(String? msg) serverError,
  }) {
    return weakPassword(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? msg)? invalidEmailOrPassword,
    TResult Function(String? msg)? invalidEmail,
    TResult Function(String? msg)? accountAlreadyExists,
    TResult Function(String? msg)? accountExistsWithDifferentCredential,
    TResult Function(String? msg)? weakPassword,
    TResult Function(String? msg)? accountDoesnotExist,
    TResult Function(String? msg)? serverError,
    required TResult orElse(),
  }) {
    if (weakPassword != null) {
      return weakPassword(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InvalidEmailOrPassword value)
        invalidEmailOrPassword,
    required TResult Function(_InvalidEmail value) invalidEmail,
    required TResult Function(_AccountAlreadyExists value) accountAlreadyExists,
    required TResult Function(_AccountExistsWithDifferentCredential value)
        accountExistsWithDifferentCredential,
    required TResult Function(_WeakPassword value) weakPassword,
    required TResult Function(_AccountDoesnotExist value) accountDoesnotExist,
    required TResult Function(_ServerError value) serverError,
  }) {
    return weakPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InvalidEmailOrPassword value)? invalidEmailOrPassword,
    TResult Function(_InvalidEmail value)? invalidEmail,
    TResult Function(_AccountAlreadyExists value)? accountAlreadyExists,
    TResult Function(_AccountExistsWithDifferentCredential value)?
        accountExistsWithDifferentCredential,
    TResult Function(_WeakPassword value)? weakPassword,
    TResult Function(_AccountDoesnotExist value)? accountDoesnotExist,
    TResult Function(_ServerError value)? serverError,
    required TResult orElse(),
  }) {
    if (weakPassword != null) {
      return weakPassword(this);
    }
    return orElse();
  }
}

abstract class _WeakPassword implements AuthFailure {
  const factory _WeakPassword({String? msg}) = _$_WeakPassword;

  @override
  String? get msg => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$WeakPasswordCopyWith<_WeakPassword> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AccountDoesnotExistCopyWith<$Res>
    implements $AuthFailureCopyWith<$Res> {
  factory _$AccountDoesnotExistCopyWith(_AccountDoesnotExist value,
          $Res Function(_AccountDoesnotExist) then) =
      __$AccountDoesnotExistCopyWithImpl<$Res>;
  @override
  $Res call({String? msg});
}

/// @nodoc
class __$AccountDoesnotExistCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements _$AccountDoesnotExistCopyWith<$Res> {
  __$AccountDoesnotExistCopyWithImpl(
      _AccountDoesnotExist _value, $Res Function(_AccountDoesnotExist) _then)
      : super(_value, (v) => _then(v as _AccountDoesnotExist));

  @override
  _AccountDoesnotExist get _value => super._value as _AccountDoesnotExist;

  @override
  $Res call({
    Object? msg = freezed,
  }) {
    return _then(_AccountDoesnotExist(
      msg: msg == freezed
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
class _$_AccountDoesnotExist implements _AccountDoesnotExist {
  const _$_AccountDoesnotExist({this.msg = "Account doesn't exist."});

  @JsonKey(defaultValue: "Account doesn't exist.")
  @override
  final String? msg;

  @override
  String toString() {
    return 'AuthFailure.accountDoesnotExist(msg: $msg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AccountDoesnotExist &&
            (identical(other.msg, msg) ||
                const DeepCollectionEquality().equals(other.msg, msg)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(msg);

  @JsonKey(ignore: true)
  @override
  _$AccountDoesnotExistCopyWith<_AccountDoesnotExist> get copyWith =>
      __$AccountDoesnotExistCopyWithImpl<_AccountDoesnotExist>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? msg) invalidEmailOrPassword,
    required TResult Function(String? msg) invalidEmail,
    required TResult Function(String? msg) accountAlreadyExists,
    required TResult Function(String? msg) accountExistsWithDifferentCredential,
    required TResult Function(String? msg) weakPassword,
    required TResult Function(String? msg) accountDoesnotExist,
    required TResult Function(String? msg) serverError,
  }) {
    return accountDoesnotExist(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? msg)? invalidEmailOrPassword,
    TResult Function(String? msg)? invalidEmail,
    TResult Function(String? msg)? accountAlreadyExists,
    TResult Function(String? msg)? accountExistsWithDifferentCredential,
    TResult Function(String? msg)? weakPassword,
    TResult Function(String? msg)? accountDoesnotExist,
    TResult Function(String? msg)? serverError,
    required TResult orElse(),
  }) {
    if (accountDoesnotExist != null) {
      return accountDoesnotExist(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InvalidEmailOrPassword value)
        invalidEmailOrPassword,
    required TResult Function(_InvalidEmail value) invalidEmail,
    required TResult Function(_AccountAlreadyExists value) accountAlreadyExists,
    required TResult Function(_AccountExistsWithDifferentCredential value)
        accountExistsWithDifferentCredential,
    required TResult Function(_WeakPassword value) weakPassword,
    required TResult Function(_AccountDoesnotExist value) accountDoesnotExist,
    required TResult Function(_ServerError value) serverError,
  }) {
    return accountDoesnotExist(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InvalidEmailOrPassword value)? invalidEmailOrPassword,
    TResult Function(_InvalidEmail value)? invalidEmail,
    TResult Function(_AccountAlreadyExists value)? accountAlreadyExists,
    TResult Function(_AccountExistsWithDifferentCredential value)?
        accountExistsWithDifferentCredential,
    TResult Function(_WeakPassword value)? weakPassword,
    TResult Function(_AccountDoesnotExist value)? accountDoesnotExist,
    TResult Function(_ServerError value)? serverError,
    required TResult orElse(),
  }) {
    if (accountDoesnotExist != null) {
      return accountDoesnotExist(this);
    }
    return orElse();
  }
}

abstract class _AccountDoesnotExist implements AuthFailure {
  const factory _AccountDoesnotExist({String? msg}) = _$_AccountDoesnotExist;

  @override
  String? get msg => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AccountDoesnotExistCopyWith<_AccountDoesnotExist> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ServerErrorCopyWith<$Res>
    implements $AuthFailureCopyWith<$Res> {
  factory _$ServerErrorCopyWith(
          _ServerError value, $Res Function(_ServerError) then) =
      __$ServerErrorCopyWithImpl<$Res>;
  @override
  $Res call({String? msg});
}

/// @nodoc
class __$ServerErrorCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements _$ServerErrorCopyWith<$Res> {
  __$ServerErrorCopyWithImpl(
      _ServerError _value, $Res Function(_ServerError) _then)
      : super(_value, (v) => _then(v as _ServerError));

  @override
  _ServerError get _value => super._value as _ServerError;

  @override
  $Res call({
    Object? msg = freezed,
  }) {
    return _then(_ServerError(
      msg: msg == freezed
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
class _$_ServerError implements _ServerError {
  const _$_ServerError({this.msg = 'Server Error Occured.'});

  @JsonKey(defaultValue: 'Server Error Occured.')
  @override
  final String? msg;

  @override
  String toString() {
    return 'AuthFailure.serverError(msg: $msg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ServerError &&
            (identical(other.msg, msg) ||
                const DeepCollectionEquality().equals(other.msg, msg)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(msg);

  @JsonKey(ignore: true)
  @override
  _$ServerErrorCopyWith<_ServerError> get copyWith =>
      __$ServerErrorCopyWithImpl<_ServerError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? msg) invalidEmailOrPassword,
    required TResult Function(String? msg) invalidEmail,
    required TResult Function(String? msg) accountAlreadyExists,
    required TResult Function(String? msg) accountExistsWithDifferentCredential,
    required TResult Function(String? msg) weakPassword,
    required TResult Function(String? msg) accountDoesnotExist,
    required TResult Function(String? msg) serverError,
  }) {
    return serverError(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? msg)? invalidEmailOrPassword,
    TResult Function(String? msg)? invalidEmail,
    TResult Function(String? msg)? accountAlreadyExists,
    TResult Function(String? msg)? accountExistsWithDifferentCredential,
    TResult Function(String? msg)? weakPassword,
    TResult Function(String? msg)? accountDoesnotExist,
    TResult Function(String? msg)? serverError,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InvalidEmailOrPassword value)
        invalidEmailOrPassword,
    required TResult Function(_InvalidEmail value) invalidEmail,
    required TResult Function(_AccountAlreadyExists value) accountAlreadyExists,
    required TResult Function(_AccountExistsWithDifferentCredential value)
        accountExistsWithDifferentCredential,
    required TResult Function(_WeakPassword value) weakPassword,
    required TResult Function(_AccountDoesnotExist value) accountDoesnotExist,
    required TResult Function(_ServerError value) serverError,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InvalidEmailOrPassword value)? invalidEmailOrPassword,
    TResult Function(_InvalidEmail value)? invalidEmail,
    TResult Function(_AccountAlreadyExists value)? accountAlreadyExists,
    TResult Function(_AccountExistsWithDifferentCredential value)?
        accountExistsWithDifferentCredential,
    TResult Function(_WeakPassword value)? weakPassword,
    TResult Function(_AccountDoesnotExist value)? accountDoesnotExist,
    TResult Function(_ServerError value)? serverError,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class _ServerError implements AuthFailure {
  const factory _ServerError({String? msg}) = _$_ServerError;

  @override
  String? get msg => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ServerErrorCopyWith<_ServerError> get copyWith =>
      throw _privateConstructorUsedError;
}
