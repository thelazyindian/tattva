// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'authentication_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthenticationEventTearOff {
  const _$AuthenticationEventTearOff();

  _SetFormType setFormType(AuthFormType authFormType) {
    return _SetFormType(
      authFormType,
    );
  }

  _OnEmailChanged onEmailChanged(String value) {
    return _OnEmailChanged(
      value,
    );
  }

  _OnNameChanged onNameChanged(String value) {
    return _OnNameChanged(
      value,
    );
  }

  _OnPasswordChanged onPasswordChanged(String value) {
    return _OnPasswordChanged(
      value,
    );
  }

  _AuthCheckRequested authCheckRequested() {
    return const _AuthCheckRequested();
  }

  _UpdatedUser updatedUser({required User user}) {
    return _UpdatedUser(
      user: user,
    );
  }

  _LoginWithEmail loginWithEmail() {
    return const _LoginWithEmail();
  }

  _RegisterWithEmail registerWithEmail() {
    return const _RegisterWithEmail();
  }

  _LoginWithGoogle loginWithGoogle() {
    return const _LoginWithGoogle();
  }

  _LoginWithFacebook loginWithFacebook() {
    return const _LoginWithFacebook();
  }

  _ResetPassword resetPassword() {
    return const _ResetPassword();
  }

  _UpdateUserToken updateUserToken(String? token) {
    return _UpdateUserToken(
      token,
    );
  }
}

/// @nodoc
const $AuthenticationEvent = _$AuthenticationEventTearOff();

/// @nodoc
mixin _$AuthenticationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthFormType authFormType) setFormType,
    required TResult Function(String value) onEmailChanged,
    required TResult Function(String value) onNameChanged,
    required TResult Function(String value) onPasswordChanged,
    required TResult Function() authCheckRequested,
    required TResult Function(User user) updatedUser,
    required TResult Function() loginWithEmail,
    required TResult Function() registerWithEmail,
    required TResult Function() loginWithGoogle,
    required TResult Function() loginWithFacebook,
    required TResult Function() resetPassword,
    required TResult Function(String? token) updateUserToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthFormType authFormType)? setFormType,
    TResult Function(String value)? onEmailChanged,
    TResult Function(String value)? onNameChanged,
    TResult Function(String value)? onPasswordChanged,
    TResult Function()? authCheckRequested,
    TResult Function(User user)? updatedUser,
    TResult Function()? loginWithEmail,
    TResult Function()? registerWithEmail,
    TResult Function()? loginWithGoogle,
    TResult Function()? loginWithFacebook,
    TResult Function()? resetPassword,
    TResult Function(String? token)? updateUserToken,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetFormType value) setFormType,
    required TResult Function(_OnEmailChanged value) onEmailChanged,
    required TResult Function(_OnNameChanged value) onNameChanged,
    required TResult Function(_OnPasswordChanged value) onPasswordChanged,
    required TResult Function(_AuthCheckRequested value) authCheckRequested,
    required TResult Function(_UpdatedUser value) updatedUser,
    required TResult Function(_LoginWithEmail value) loginWithEmail,
    required TResult Function(_RegisterWithEmail value) registerWithEmail,
    required TResult Function(_LoginWithGoogle value) loginWithGoogle,
    required TResult Function(_LoginWithFacebook value) loginWithFacebook,
    required TResult Function(_ResetPassword value) resetPassword,
    required TResult Function(_UpdateUserToken value) updateUserToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetFormType value)? setFormType,
    TResult Function(_OnEmailChanged value)? onEmailChanged,
    TResult Function(_OnNameChanged value)? onNameChanged,
    TResult Function(_OnPasswordChanged value)? onPasswordChanged,
    TResult Function(_AuthCheckRequested value)? authCheckRequested,
    TResult Function(_UpdatedUser value)? updatedUser,
    TResult Function(_LoginWithEmail value)? loginWithEmail,
    TResult Function(_RegisterWithEmail value)? registerWithEmail,
    TResult Function(_LoginWithGoogle value)? loginWithGoogle,
    TResult Function(_LoginWithFacebook value)? loginWithFacebook,
    TResult Function(_ResetPassword value)? resetPassword,
    TResult Function(_UpdateUserToken value)? updateUserToken,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationEventCopyWith<$Res> {
  factory $AuthenticationEventCopyWith(
          AuthenticationEvent value, $Res Function(AuthenticationEvent) then) =
      _$AuthenticationEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthenticationEventCopyWithImpl<$Res>
    implements $AuthenticationEventCopyWith<$Res> {
  _$AuthenticationEventCopyWithImpl(this._value, this._then);

  final AuthenticationEvent _value;
  // ignore: unused_field
  final $Res Function(AuthenticationEvent) _then;
}

/// @nodoc
abstract class _$SetFormTypeCopyWith<$Res> {
  factory _$SetFormTypeCopyWith(
          _SetFormType value, $Res Function(_SetFormType) then) =
      __$SetFormTypeCopyWithImpl<$Res>;
  $Res call({AuthFormType authFormType});

  $AuthFormTypeCopyWith<$Res> get authFormType;
}

/// @nodoc
class __$SetFormTypeCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements _$SetFormTypeCopyWith<$Res> {
  __$SetFormTypeCopyWithImpl(
      _SetFormType _value, $Res Function(_SetFormType) _then)
      : super(_value, (v) => _then(v as _SetFormType));

  @override
  _SetFormType get _value => super._value as _SetFormType;

  @override
  $Res call({
    Object? authFormType = freezed,
  }) {
    return _then(_SetFormType(
      authFormType == freezed
          ? _value.authFormType
          : authFormType // ignore: cast_nullable_to_non_nullable
              as AuthFormType,
    ));
  }

  @override
  $AuthFormTypeCopyWith<$Res> get authFormType {
    return $AuthFormTypeCopyWith<$Res>(_value.authFormType, (value) {
      return _then(_value.copyWith(authFormType: value));
    });
  }
}

/// @nodoc
class _$_SetFormType implements _SetFormType {
  const _$_SetFormType(this.authFormType);

  @override
  final AuthFormType authFormType;

  @override
  String toString() {
    return 'AuthenticationEvent.setFormType(authFormType: $authFormType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SetFormType &&
            (identical(other.authFormType, authFormType) ||
                const DeepCollectionEquality()
                    .equals(other.authFormType, authFormType)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(authFormType);

  @JsonKey(ignore: true)
  @override
  _$SetFormTypeCopyWith<_SetFormType> get copyWith =>
      __$SetFormTypeCopyWithImpl<_SetFormType>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthFormType authFormType) setFormType,
    required TResult Function(String value) onEmailChanged,
    required TResult Function(String value) onNameChanged,
    required TResult Function(String value) onPasswordChanged,
    required TResult Function() authCheckRequested,
    required TResult Function(User user) updatedUser,
    required TResult Function() loginWithEmail,
    required TResult Function() registerWithEmail,
    required TResult Function() loginWithGoogle,
    required TResult Function() loginWithFacebook,
    required TResult Function() resetPassword,
    required TResult Function(String? token) updateUserToken,
  }) {
    return setFormType(authFormType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthFormType authFormType)? setFormType,
    TResult Function(String value)? onEmailChanged,
    TResult Function(String value)? onNameChanged,
    TResult Function(String value)? onPasswordChanged,
    TResult Function()? authCheckRequested,
    TResult Function(User user)? updatedUser,
    TResult Function()? loginWithEmail,
    TResult Function()? registerWithEmail,
    TResult Function()? loginWithGoogle,
    TResult Function()? loginWithFacebook,
    TResult Function()? resetPassword,
    TResult Function(String? token)? updateUserToken,
    required TResult orElse(),
  }) {
    if (setFormType != null) {
      return setFormType(authFormType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetFormType value) setFormType,
    required TResult Function(_OnEmailChanged value) onEmailChanged,
    required TResult Function(_OnNameChanged value) onNameChanged,
    required TResult Function(_OnPasswordChanged value) onPasswordChanged,
    required TResult Function(_AuthCheckRequested value) authCheckRequested,
    required TResult Function(_UpdatedUser value) updatedUser,
    required TResult Function(_LoginWithEmail value) loginWithEmail,
    required TResult Function(_RegisterWithEmail value) registerWithEmail,
    required TResult Function(_LoginWithGoogle value) loginWithGoogle,
    required TResult Function(_LoginWithFacebook value) loginWithFacebook,
    required TResult Function(_ResetPassword value) resetPassword,
    required TResult Function(_UpdateUserToken value) updateUserToken,
  }) {
    return setFormType(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetFormType value)? setFormType,
    TResult Function(_OnEmailChanged value)? onEmailChanged,
    TResult Function(_OnNameChanged value)? onNameChanged,
    TResult Function(_OnPasswordChanged value)? onPasswordChanged,
    TResult Function(_AuthCheckRequested value)? authCheckRequested,
    TResult Function(_UpdatedUser value)? updatedUser,
    TResult Function(_LoginWithEmail value)? loginWithEmail,
    TResult Function(_RegisterWithEmail value)? registerWithEmail,
    TResult Function(_LoginWithGoogle value)? loginWithGoogle,
    TResult Function(_LoginWithFacebook value)? loginWithFacebook,
    TResult Function(_ResetPassword value)? resetPassword,
    TResult Function(_UpdateUserToken value)? updateUserToken,
    required TResult orElse(),
  }) {
    if (setFormType != null) {
      return setFormType(this);
    }
    return orElse();
  }
}

abstract class _SetFormType implements AuthenticationEvent {
  const factory _SetFormType(AuthFormType authFormType) = _$_SetFormType;

  AuthFormType get authFormType => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SetFormTypeCopyWith<_SetFormType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$OnEmailChangedCopyWith<$Res> {
  factory _$OnEmailChangedCopyWith(
          _OnEmailChanged value, $Res Function(_OnEmailChanged) then) =
      __$OnEmailChangedCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class __$OnEmailChangedCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements _$OnEmailChangedCopyWith<$Res> {
  __$OnEmailChangedCopyWithImpl(
      _OnEmailChanged _value, $Res Function(_OnEmailChanged) _then)
      : super(_value, (v) => _then(v as _OnEmailChanged));

  @override
  _OnEmailChanged get _value => super._value as _OnEmailChanged;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_OnEmailChanged(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_OnEmailChanged implements _OnEmailChanged {
  const _$_OnEmailChanged(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'AuthenticationEvent.onEmailChanged(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OnEmailChanged &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  _$OnEmailChangedCopyWith<_OnEmailChanged> get copyWith =>
      __$OnEmailChangedCopyWithImpl<_OnEmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthFormType authFormType) setFormType,
    required TResult Function(String value) onEmailChanged,
    required TResult Function(String value) onNameChanged,
    required TResult Function(String value) onPasswordChanged,
    required TResult Function() authCheckRequested,
    required TResult Function(User user) updatedUser,
    required TResult Function() loginWithEmail,
    required TResult Function() registerWithEmail,
    required TResult Function() loginWithGoogle,
    required TResult Function() loginWithFacebook,
    required TResult Function() resetPassword,
    required TResult Function(String? token) updateUserToken,
  }) {
    return onEmailChanged(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthFormType authFormType)? setFormType,
    TResult Function(String value)? onEmailChanged,
    TResult Function(String value)? onNameChanged,
    TResult Function(String value)? onPasswordChanged,
    TResult Function()? authCheckRequested,
    TResult Function(User user)? updatedUser,
    TResult Function()? loginWithEmail,
    TResult Function()? registerWithEmail,
    TResult Function()? loginWithGoogle,
    TResult Function()? loginWithFacebook,
    TResult Function()? resetPassword,
    TResult Function(String? token)? updateUserToken,
    required TResult orElse(),
  }) {
    if (onEmailChanged != null) {
      return onEmailChanged(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetFormType value) setFormType,
    required TResult Function(_OnEmailChanged value) onEmailChanged,
    required TResult Function(_OnNameChanged value) onNameChanged,
    required TResult Function(_OnPasswordChanged value) onPasswordChanged,
    required TResult Function(_AuthCheckRequested value) authCheckRequested,
    required TResult Function(_UpdatedUser value) updatedUser,
    required TResult Function(_LoginWithEmail value) loginWithEmail,
    required TResult Function(_RegisterWithEmail value) registerWithEmail,
    required TResult Function(_LoginWithGoogle value) loginWithGoogle,
    required TResult Function(_LoginWithFacebook value) loginWithFacebook,
    required TResult Function(_ResetPassword value) resetPassword,
    required TResult Function(_UpdateUserToken value) updateUserToken,
  }) {
    return onEmailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetFormType value)? setFormType,
    TResult Function(_OnEmailChanged value)? onEmailChanged,
    TResult Function(_OnNameChanged value)? onNameChanged,
    TResult Function(_OnPasswordChanged value)? onPasswordChanged,
    TResult Function(_AuthCheckRequested value)? authCheckRequested,
    TResult Function(_UpdatedUser value)? updatedUser,
    TResult Function(_LoginWithEmail value)? loginWithEmail,
    TResult Function(_RegisterWithEmail value)? registerWithEmail,
    TResult Function(_LoginWithGoogle value)? loginWithGoogle,
    TResult Function(_LoginWithFacebook value)? loginWithFacebook,
    TResult Function(_ResetPassword value)? resetPassword,
    TResult Function(_UpdateUserToken value)? updateUserToken,
    required TResult orElse(),
  }) {
    if (onEmailChanged != null) {
      return onEmailChanged(this);
    }
    return orElse();
  }
}

abstract class _OnEmailChanged implements AuthenticationEvent {
  const factory _OnEmailChanged(String value) = _$_OnEmailChanged;

  String get value => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$OnEmailChangedCopyWith<_OnEmailChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$OnNameChangedCopyWith<$Res> {
  factory _$OnNameChangedCopyWith(
          _OnNameChanged value, $Res Function(_OnNameChanged) then) =
      __$OnNameChangedCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class __$OnNameChangedCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements _$OnNameChangedCopyWith<$Res> {
  __$OnNameChangedCopyWithImpl(
      _OnNameChanged _value, $Res Function(_OnNameChanged) _then)
      : super(_value, (v) => _then(v as _OnNameChanged));

  @override
  _OnNameChanged get _value => super._value as _OnNameChanged;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_OnNameChanged(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_OnNameChanged implements _OnNameChanged {
  const _$_OnNameChanged(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'AuthenticationEvent.onNameChanged(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OnNameChanged &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  _$OnNameChangedCopyWith<_OnNameChanged> get copyWith =>
      __$OnNameChangedCopyWithImpl<_OnNameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthFormType authFormType) setFormType,
    required TResult Function(String value) onEmailChanged,
    required TResult Function(String value) onNameChanged,
    required TResult Function(String value) onPasswordChanged,
    required TResult Function() authCheckRequested,
    required TResult Function(User user) updatedUser,
    required TResult Function() loginWithEmail,
    required TResult Function() registerWithEmail,
    required TResult Function() loginWithGoogle,
    required TResult Function() loginWithFacebook,
    required TResult Function() resetPassword,
    required TResult Function(String? token) updateUserToken,
  }) {
    return onNameChanged(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthFormType authFormType)? setFormType,
    TResult Function(String value)? onEmailChanged,
    TResult Function(String value)? onNameChanged,
    TResult Function(String value)? onPasswordChanged,
    TResult Function()? authCheckRequested,
    TResult Function(User user)? updatedUser,
    TResult Function()? loginWithEmail,
    TResult Function()? registerWithEmail,
    TResult Function()? loginWithGoogle,
    TResult Function()? loginWithFacebook,
    TResult Function()? resetPassword,
    TResult Function(String? token)? updateUserToken,
    required TResult orElse(),
  }) {
    if (onNameChanged != null) {
      return onNameChanged(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetFormType value) setFormType,
    required TResult Function(_OnEmailChanged value) onEmailChanged,
    required TResult Function(_OnNameChanged value) onNameChanged,
    required TResult Function(_OnPasswordChanged value) onPasswordChanged,
    required TResult Function(_AuthCheckRequested value) authCheckRequested,
    required TResult Function(_UpdatedUser value) updatedUser,
    required TResult Function(_LoginWithEmail value) loginWithEmail,
    required TResult Function(_RegisterWithEmail value) registerWithEmail,
    required TResult Function(_LoginWithGoogle value) loginWithGoogle,
    required TResult Function(_LoginWithFacebook value) loginWithFacebook,
    required TResult Function(_ResetPassword value) resetPassword,
    required TResult Function(_UpdateUserToken value) updateUserToken,
  }) {
    return onNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetFormType value)? setFormType,
    TResult Function(_OnEmailChanged value)? onEmailChanged,
    TResult Function(_OnNameChanged value)? onNameChanged,
    TResult Function(_OnPasswordChanged value)? onPasswordChanged,
    TResult Function(_AuthCheckRequested value)? authCheckRequested,
    TResult Function(_UpdatedUser value)? updatedUser,
    TResult Function(_LoginWithEmail value)? loginWithEmail,
    TResult Function(_RegisterWithEmail value)? registerWithEmail,
    TResult Function(_LoginWithGoogle value)? loginWithGoogle,
    TResult Function(_LoginWithFacebook value)? loginWithFacebook,
    TResult Function(_ResetPassword value)? resetPassword,
    TResult Function(_UpdateUserToken value)? updateUserToken,
    required TResult orElse(),
  }) {
    if (onNameChanged != null) {
      return onNameChanged(this);
    }
    return orElse();
  }
}

abstract class _OnNameChanged implements AuthenticationEvent {
  const factory _OnNameChanged(String value) = _$_OnNameChanged;

  String get value => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$OnNameChangedCopyWith<_OnNameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$OnPasswordChangedCopyWith<$Res> {
  factory _$OnPasswordChangedCopyWith(
          _OnPasswordChanged value, $Res Function(_OnPasswordChanged) then) =
      __$OnPasswordChangedCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class __$OnPasswordChangedCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements _$OnPasswordChangedCopyWith<$Res> {
  __$OnPasswordChangedCopyWithImpl(
      _OnPasswordChanged _value, $Res Function(_OnPasswordChanged) _then)
      : super(_value, (v) => _then(v as _OnPasswordChanged));

  @override
  _OnPasswordChanged get _value => super._value as _OnPasswordChanged;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_OnPasswordChanged(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_OnPasswordChanged implements _OnPasswordChanged {
  const _$_OnPasswordChanged(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'AuthenticationEvent.onPasswordChanged(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OnPasswordChanged &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  _$OnPasswordChangedCopyWith<_OnPasswordChanged> get copyWith =>
      __$OnPasswordChangedCopyWithImpl<_OnPasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthFormType authFormType) setFormType,
    required TResult Function(String value) onEmailChanged,
    required TResult Function(String value) onNameChanged,
    required TResult Function(String value) onPasswordChanged,
    required TResult Function() authCheckRequested,
    required TResult Function(User user) updatedUser,
    required TResult Function() loginWithEmail,
    required TResult Function() registerWithEmail,
    required TResult Function() loginWithGoogle,
    required TResult Function() loginWithFacebook,
    required TResult Function() resetPassword,
    required TResult Function(String? token) updateUserToken,
  }) {
    return onPasswordChanged(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthFormType authFormType)? setFormType,
    TResult Function(String value)? onEmailChanged,
    TResult Function(String value)? onNameChanged,
    TResult Function(String value)? onPasswordChanged,
    TResult Function()? authCheckRequested,
    TResult Function(User user)? updatedUser,
    TResult Function()? loginWithEmail,
    TResult Function()? registerWithEmail,
    TResult Function()? loginWithGoogle,
    TResult Function()? loginWithFacebook,
    TResult Function()? resetPassword,
    TResult Function(String? token)? updateUserToken,
    required TResult orElse(),
  }) {
    if (onPasswordChanged != null) {
      return onPasswordChanged(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetFormType value) setFormType,
    required TResult Function(_OnEmailChanged value) onEmailChanged,
    required TResult Function(_OnNameChanged value) onNameChanged,
    required TResult Function(_OnPasswordChanged value) onPasswordChanged,
    required TResult Function(_AuthCheckRequested value) authCheckRequested,
    required TResult Function(_UpdatedUser value) updatedUser,
    required TResult Function(_LoginWithEmail value) loginWithEmail,
    required TResult Function(_RegisterWithEmail value) registerWithEmail,
    required TResult Function(_LoginWithGoogle value) loginWithGoogle,
    required TResult Function(_LoginWithFacebook value) loginWithFacebook,
    required TResult Function(_ResetPassword value) resetPassword,
    required TResult Function(_UpdateUserToken value) updateUserToken,
  }) {
    return onPasswordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetFormType value)? setFormType,
    TResult Function(_OnEmailChanged value)? onEmailChanged,
    TResult Function(_OnNameChanged value)? onNameChanged,
    TResult Function(_OnPasswordChanged value)? onPasswordChanged,
    TResult Function(_AuthCheckRequested value)? authCheckRequested,
    TResult Function(_UpdatedUser value)? updatedUser,
    TResult Function(_LoginWithEmail value)? loginWithEmail,
    TResult Function(_RegisterWithEmail value)? registerWithEmail,
    TResult Function(_LoginWithGoogle value)? loginWithGoogle,
    TResult Function(_LoginWithFacebook value)? loginWithFacebook,
    TResult Function(_ResetPassword value)? resetPassword,
    TResult Function(_UpdateUserToken value)? updateUserToken,
    required TResult orElse(),
  }) {
    if (onPasswordChanged != null) {
      return onPasswordChanged(this);
    }
    return orElse();
  }
}

abstract class _OnPasswordChanged implements AuthenticationEvent {
  const factory _OnPasswordChanged(String value) = _$_OnPasswordChanged;

  String get value => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$OnPasswordChangedCopyWith<_OnPasswordChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AuthCheckRequestedCopyWith<$Res> {
  factory _$AuthCheckRequestedCopyWith(
          _AuthCheckRequested value, $Res Function(_AuthCheckRequested) then) =
      __$AuthCheckRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class __$AuthCheckRequestedCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements _$AuthCheckRequestedCopyWith<$Res> {
  __$AuthCheckRequestedCopyWithImpl(
      _AuthCheckRequested _value, $Res Function(_AuthCheckRequested) _then)
      : super(_value, (v) => _then(v as _AuthCheckRequested));

  @override
  _AuthCheckRequested get _value => super._value as _AuthCheckRequested;
}

/// @nodoc
class _$_AuthCheckRequested implements _AuthCheckRequested {
  const _$_AuthCheckRequested();

  @override
  String toString() {
    return 'AuthenticationEvent.authCheckRequested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _AuthCheckRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthFormType authFormType) setFormType,
    required TResult Function(String value) onEmailChanged,
    required TResult Function(String value) onNameChanged,
    required TResult Function(String value) onPasswordChanged,
    required TResult Function() authCheckRequested,
    required TResult Function(User user) updatedUser,
    required TResult Function() loginWithEmail,
    required TResult Function() registerWithEmail,
    required TResult Function() loginWithGoogle,
    required TResult Function() loginWithFacebook,
    required TResult Function() resetPassword,
    required TResult Function(String? token) updateUserToken,
  }) {
    return authCheckRequested();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthFormType authFormType)? setFormType,
    TResult Function(String value)? onEmailChanged,
    TResult Function(String value)? onNameChanged,
    TResult Function(String value)? onPasswordChanged,
    TResult Function()? authCheckRequested,
    TResult Function(User user)? updatedUser,
    TResult Function()? loginWithEmail,
    TResult Function()? registerWithEmail,
    TResult Function()? loginWithGoogle,
    TResult Function()? loginWithFacebook,
    TResult Function()? resetPassword,
    TResult Function(String? token)? updateUserToken,
    required TResult orElse(),
  }) {
    if (authCheckRequested != null) {
      return authCheckRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetFormType value) setFormType,
    required TResult Function(_OnEmailChanged value) onEmailChanged,
    required TResult Function(_OnNameChanged value) onNameChanged,
    required TResult Function(_OnPasswordChanged value) onPasswordChanged,
    required TResult Function(_AuthCheckRequested value) authCheckRequested,
    required TResult Function(_UpdatedUser value) updatedUser,
    required TResult Function(_LoginWithEmail value) loginWithEmail,
    required TResult Function(_RegisterWithEmail value) registerWithEmail,
    required TResult Function(_LoginWithGoogle value) loginWithGoogle,
    required TResult Function(_LoginWithFacebook value) loginWithFacebook,
    required TResult Function(_ResetPassword value) resetPassword,
    required TResult Function(_UpdateUserToken value) updateUserToken,
  }) {
    return authCheckRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetFormType value)? setFormType,
    TResult Function(_OnEmailChanged value)? onEmailChanged,
    TResult Function(_OnNameChanged value)? onNameChanged,
    TResult Function(_OnPasswordChanged value)? onPasswordChanged,
    TResult Function(_AuthCheckRequested value)? authCheckRequested,
    TResult Function(_UpdatedUser value)? updatedUser,
    TResult Function(_LoginWithEmail value)? loginWithEmail,
    TResult Function(_RegisterWithEmail value)? registerWithEmail,
    TResult Function(_LoginWithGoogle value)? loginWithGoogle,
    TResult Function(_LoginWithFacebook value)? loginWithFacebook,
    TResult Function(_ResetPassword value)? resetPassword,
    TResult Function(_UpdateUserToken value)? updateUserToken,
    required TResult orElse(),
  }) {
    if (authCheckRequested != null) {
      return authCheckRequested(this);
    }
    return orElse();
  }
}

abstract class _AuthCheckRequested implements AuthenticationEvent {
  const factory _AuthCheckRequested() = _$_AuthCheckRequested;
}

/// @nodoc
abstract class _$UpdatedUserCopyWith<$Res> {
  factory _$UpdatedUserCopyWith(
          _UpdatedUser value, $Res Function(_UpdatedUser) then) =
      __$UpdatedUserCopyWithImpl<$Res>;
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$UpdatedUserCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements _$UpdatedUserCopyWith<$Res> {
  __$UpdatedUserCopyWithImpl(
      _UpdatedUser _value, $Res Function(_UpdatedUser) _then)
      : super(_value, (v) => _then(v as _UpdatedUser));

  @override
  _UpdatedUser get _value => super._value as _UpdatedUser;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_UpdatedUser(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
class _$_UpdatedUser implements _UpdatedUser {
  const _$_UpdatedUser({required this.user});

  @override
  final User user;

  @override
  String toString() {
    return 'AuthenticationEvent.updatedUser(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdatedUser &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  _$UpdatedUserCopyWith<_UpdatedUser> get copyWith =>
      __$UpdatedUserCopyWithImpl<_UpdatedUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthFormType authFormType) setFormType,
    required TResult Function(String value) onEmailChanged,
    required TResult Function(String value) onNameChanged,
    required TResult Function(String value) onPasswordChanged,
    required TResult Function() authCheckRequested,
    required TResult Function(User user) updatedUser,
    required TResult Function() loginWithEmail,
    required TResult Function() registerWithEmail,
    required TResult Function() loginWithGoogle,
    required TResult Function() loginWithFacebook,
    required TResult Function() resetPassword,
    required TResult Function(String? token) updateUserToken,
  }) {
    return updatedUser(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthFormType authFormType)? setFormType,
    TResult Function(String value)? onEmailChanged,
    TResult Function(String value)? onNameChanged,
    TResult Function(String value)? onPasswordChanged,
    TResult Function()? authCheckRequested,
    TResult Function(User user)? updatedUser,
    TResult Function()? loginWithEmail,
    TResult Function()? registerWithEmail,
    TResult Function()? loginWithGoogle,
    TResult Function()? loginWithFacebook,
    TResult Function()? resetPassword,
    TResult Function(String? token)? updateUserToken,
    required TResult orElse(),
  }) {
    if (updatedUser != null) {
      return updatedUser(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetFormType value) setFormType,
    required TResult Function(_OnEmailChanged value) onEmailChanged,
    required TResult Function(_OnNameChanged value) onNameChanged,
    required TResult Function(_OnPasswordChanged value) onPasswordChanged,
    required TResult Function(_AuthCheckRequested value) authCheckRequested,
    required TResult Function(_UpdatedUser value) updatedUser,
    required TResult Function(_LoginWithEmail value) loginWithEmail,
    required TResult Function(_RegisterWithEmail value) registerWithEmail,
    required TResult Function(_LoginWithGoogle value) loginWithGoogle,
    required TResult Function(_LoginWithFacebook value) loginWithFacebook,
    required TResult Function(_ResetPassword value) resetPassword,
    required TResult Function(_UpdateUserToken value) updateUserToken,
  }) {
    return updatedUser(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetFormType value)? setFormType,
    TResult Function(_OnEmailChanged value)? onEmailChanged,
    TResult Function(_OnNameChanged value)? onNameChanged,
    TResult Function(_OnPasswordChanged value)? onPasswordChanged,
    TResult Function(_AuthCheckRequested value)? authCheckRequested,
    TResult Function(_UpdatedUser value)? updatedUser,
    TResult Function(_LoginWithEmail value)? loginWithEmail,
    TResult Function(_RegisterWithEmail value)? registerWithEmail,
    TResult Function(_LoginWithGoogle value)? loginWithGoogle,
    TResult Function(_LoginWithFacebook value)? loginWithFacebook,
    TResult Function(_ResetPassword value)? resetPassword,
    TResult Function(_UpdateUserToken value)? updateUserToken,
    required TResult orElse(),
  }) {
    if (updatedUser != null) {
      return updatedUser(this);
    }
    return orElse();
  }
}

abstract class _UpdatedUser implements AuthenticationEvent {
  const factory _UpdatedUser({required User user}) = _$_UpdatedUser;

  User get user => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$UpdatedUserCopyWith<_UpdatedUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoginWithEmailCopyWith<$Res> {
  factory _$LoginWithEmailCopyWith(
          _LoginWithEmail value, $Res Function(_LoginWithEmail) then) =
      __$LoginWithEmailCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoginWithEmailCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements _$LoginWithEmailCopyWith<$Res> {
  __$LoginWithEmailCopyWithImpl(
      _LoginWithEmail _value, $Res Function(_LoginWithEmail) _then)
      : super(_value, (v) => _then(v as _LoginWithEmail));

  @override
  _LoginWithEmail get _value => super._value as _LoginWithEmail;
}

/// @nodoc
class _$_LoginWithEmail implements _LoginWithEmail {
  const _$_LoginWithEmail();

  @override
  String toString() {
    return 'AuthenticationEvent.loginWithEmail()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoginWithEmail);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthFormType authFormType) setFormType,
    required TResult Function(String value) onEmailChanged,
    required TResult Function(String value) onNameChanged,
    required TResult Function(String value) onPasswordChanged,
    required TResult Function() authCheckRequested,
    required TResult Function(User user) updatedUser,
    required TResult Function() loginWithEmail,
    required TResult Function() registerWithEmail,
    required TResult Function() loginWithGoogle,
    required TResult Function() loginWithFacebook,
    required TResult Function() resetPassword,
    required TResult Function(String? token) updateUserToken,
  }) {
    return loginWithEmail();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthFormType authFormType)? setFormType,
    TResult Function(String value)? onEmailChanged,
    TResult Function(String value)? onNameChanged,
    TResult Function(String value)? onPasswordChanged,
    TResult Function()? authCheckRequested,
    TResult Function(User user)? updatedUser,
    TResult Function()? loginWithEmail,
    TResult Function()? registerWithEmail,
    TResult Function()? loginWithGoogle,
    TResult Function()? loginWithFacebook,
    TResult Function()? resetPassword,
    TResult Function(String? token)? updateUserToken,
    required TResult orElse(),
  }) {
    if (loginWithEmail != null) {
      return loginWithEmail();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetFormType value) setFormType,
    required TResult Function(_OnEmailChanged value) onEmailChanged,
    required TResult Function(_OnNameChanged value) onNameChanged,
    required TResult Function(_OnPasswordChanged value) onPasswordChanged,
    required TResult Function(_AuthCheckRequested value) authCheckRequested,
    required TResult Function(_UpdatedUser value) updatedUser,
    required TResult Function(_LoginWithEmail value) loginWithEmail,
    required TResult Function(_RegisterWithEmail value) registerWithEmail,
    required TResult Function(_LoginWithGoogle value) loginWithGoogle,
    required TResult Function(_LoginWithFacebook value) loginWithFacebook,
    required TResult Function(_ResetPassword value) resetPassword,
    required TResult Function(_UpdateUserToken value) updateUserToken,
  }) {
    return loginWithEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetFormType value)? setFormType,
    TResult Function(_OnEmailChanged value)? onEmailChanged,
    TResult Function(_OnNameChanged value)? onNameChanged,
    TResult Function(_OnPasswordChanged value)? onPasswordChanged,
    TResult Function(_AuthCheckRequested value)? authCheckRequested,
    TResult Function(_UpdatedUser value)? updatedUser,
    TResult Function(_LoginWithEmail value)? loginWithEmail,
    TResult Function(_RegisterWithEmail value)? registerWithEmail,
    TResult Function(_LoginWithGoogle value)? loginWithGoogle,
    TResult Function(_LoginWithFacebook value)? loginWithFacebook,
    TResult Function(_ResetPassword value)? resetPassword,
    TResult Function(_UpdateUserToken value)? updateUserToken,
    required TResult orElse(),
  }) {
    if (loginWithEmail != null) {
      return loginWithEmail(this);
    }
    return orElse();
  }
}

abstract class _LoginWithEmail implements AuthenticationEvent {
  const factory _LoginWithEmail() = _$_LoginWithEmail;
}

/// @nodoc
abstract class _$RegisterWithEmailCopyWith<$Res> {
  factory _$RegisterWithEmailCopyWith(
          _RegisterWithEmail value, $Res Function(_RegisterWithEmail) then) =
      __$RegisterWithEmailCopyWithImpl<$Res>;
}

/// @nodoc
class __$RegisterWithEmailCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements _$RegisterWithEmailCopyWith<$Res> {
  __$RegisterWithEmailCopyWithImpl(
      _RegisterWithEmail _value, $Res Function(_RegisterWithEmail) _then)
      : super(_value, (v) => _then(v as _RegisterWithEmail));

  @override
  _RegisterWithEmail get _value => super._value as _RegisterWithEmail;
}

/// @nodoc
class _$_RegisterWithEmail implements _RegisterWithEmail {
  const _$_RegisterWithEmail();

  @override
  String toString() {
    return 'AuthenticationEvent.registerWithEmail()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _RegisterWithEmail);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthFormType authFormType) setFormType,
    required TResult Function(String value) onEmailChanged,
    required TResult Function(String value) onNameChanged,
    required TResult Function(String value) onPasswordChanged,
    required TResult Function() authCheckRequested,
    required TResult Function(User user) updatedUser,
    required TResult Function() loginWithEmail,
    required TResult Function() registerWithEmail,
    required TResult Function() loginWithGoogle,
    required TResult Function() loginWithFacebook,
    required TResult Function() resetPassword,
    required TResult Function(String? token) updateUserToken,
  }) {
    return registerWithEmail();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthFormType authFormType)? setFormType,
    TResult Function(String value)? onEmailChanged,
    TResult Function(String value)? onNameChanged,
    TResult Function(String value)? onPasswordChanged,
    TResult Function()? authCheckRequested,
    TResult Function(User user)? updatedUser,
    TResult Function()? loginWithEmail,
    TResult Function()? registerWithEmail,
    TResult Function()? loginWithGoogle,
    TResult Function()? loginWithFacebook,
    TResult Function()? resetPassword,
    TResult Function(String? token)? updateUserToken,
    required TResult orElse(),
  }) {
    if (registerWithEmail != null) {
      return registerWithEmail();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetFormType value) setFormType,
    required TResult Function(_OnEmailChanged value) onEmailChanged,
    required TResult Function(_OnNameChanged value) onNameChanged,
    required TResult Function(_OnPasswordChanged value) onPasswordChanged,
    required TResult Function(_AuthCheckRequested value) authCheckRequested,
    required TResult Function(_UpdatedUser value) updatedUser,
    required TResult Function(_LoginWithEmail value) loginWithEmail,
    required TResult Function(_RegisterWithEmail value) registerWithEmail,
    required TResult Function(_LoginWithGoogle value) loginWithGoogle,
    required TResult Function(_LoginWithFacebook value) loginWithFacebook,
    required TResult Function(_ResetPassword value) resetPassword,
    required TResult Function(_UpdateUserToken value) updateUserToken,
  }) {
    return registerWithEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetFormType value)? setFormType,
    TResult Function(_OnEmailChanged value)? onEmailChanged,
    TResult Function(_OnNameChanged value)? onNameChanged,
    TResult Function(_OnPasswordChanged value)? onPasswordChanged,
    TResult Function(_AuthCheckRequested value)? authCheckRequested,
    TResult Function(_UpdatedUser value)? updatedUser,
    TResult Function(_LoginWithEmail value)? loginWithEmail,
    TResult Function(_RegisterWithEmail value)? registerWithEmail,
    TResult Function(_LoginWithGoogle value)? loginWithGoogle,
    TResult Function(_LoginWithFacebook value)? loginWithFacebook,
    TResult Function(_ResetPassword value)? resetPassword,
    TResult Function(_UpdateUserToken value)? updateUserToken,
    required TResult orElse(),
  }) {
    if (registerWithEmail != null) {
      return registerWithEmail(this);
    }
    return orElse();
  }
}

abstract class _RegisterWithEmail implements AuthenticationEvent {
  const factory _RegisterWithEmail() = _$_RegisterWithEmail;
}

/// @nodoc
abstract class _$LoginWithGoogleCopyWith<$Res> {
  factory _$LoginWithGoogleCopyWith(
          _LoginWithGoogle value, $Res Function(_LoginWithGoogle) then) =
      __$LoginWithGoogleCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoginWithGoogleCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements _$LoginWithGoogleCopyWith<$Res> {
  __$LoginWithGoogleCopyWithImpl(
      _LoginWithGoogle _value, $Res Function(_LoginWithGoogle) _then)
      : super(_value, (v) => _then(v as _LoginWithGoogle));

  @override
  _LoginWithGoogle get _value => super._value as _LoginWithGoogle;
}

/// @nodoc
class _$_LoginWithGoogle implements _LoginWithGoogle {
  const _$_LoginWithGoogle();

  @override
  String toString() {
    return 'AuthenticationEvent.loginWithGoogle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoginWithGoogle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthFormType authFormType) setFormType,
    required TResult Function(String value) onEmailChanged,
    required TResult Function(String value) onNameChanged,
    required TResult Function(String value) onPasswordChanged,
    required TResult Function() authCheckRequested,
    required TResult Function(User user) updatedUser,
    required TResult Function() loginWithEmail,
    required TResult Function() registerWithEmail,
    required TResult Function() loginWithGoogle,
    required TResult Function() loginWithFacebook,
    required TResult Function() resetPassword,
    required TResult Function(String? token) updateUserToken,
  }) {
    return loginWithGoogle();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthFormType authFormType)? setFormType,
    TResult Function(String value)? onEmailChanged,
    TResult Function(String value)? onNameChanged,
    TResult Function(String value)? onPasswordChanged,
    TResult Function()? authCheckRequested,
    TResult Function(User user)? updatedUser,
    TResult Function()? loginWithEmail,
    TResult Function()? registerWithEmail,
    TResult Function()? loginWithGoogle,
    TResult Function()? loginWithFacebook,
    TResult Function()? resetPassword,
    TResult Function(String? token)? updateUserToken,
    required TResult orElse(),
  }) {
    if (loginWithGoogle != null) {
      return loginWithGoogle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetFormType value) setFormType,
    required TResult Function(_OnEmailChanged value) onEmailChanged,
    required TResult Function(_OnNameChanged value) onNameChanged,
    required TResult Function(_OnPasswordChanged value) onPasswordChanged,
    required TResult Function(_AuthCheckRequested value) authCheckRequested,
    required TResult Function(_UpdatedUser value) updatedUser,
    required TResult Function(_LoginWithEmail value) loginWithEmail,
    required TResult Function(_RegisterWithEmail value) registerWithEmail,
    required TResult Function(_LoginWithGoogle value) loginWithGoogle,
    required TResult Function(_LoginWithFacebook value) loginWithFacebook,
    required TResult Function(_ResetPassword value) resetPassword,
    required TResult Function(_UpdateUserToken value) updateUserToken,
  }) {
    return loginWithGoogle(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetFormType value)? setFormType,
    TResult Function(_OnEmailChanged value)? onEmailChanged,
    TResult Function(_OnNameChanged value)? onNameChanged,
    TResult Function(_OnPasswordChanged value)? onPasswordChanged,
    TResult Function(_AuthCheckRequested value)? authCheckRequested,
    TResult Function(_UpdatedUser value)? updatedUser,
    TResult Function(_LoginWithEmail value)? loginWithEmail,
    TResult Function(_RegisterWithEmail value)? registerWithEmail,
    TResult Function(_LoginWithGoogle value)? loginWithGoogle,
    TResult Function(_LoginWithFacebook value)? loginWithFacebook,
    TResult Function(_ResetPassword value)? resetPassword,
    TResult Function(_UpdateUserToken value)? updateUserToken,
    required TResult orElse(),
  }) {
    if (loginWithGoogle != null) {
      return loginWithGoogle(this);
    }
    return orElse();
  }
}

abstract class _LoginWithGoogle implements AuthenticationEvent {
  const factory _LoginWithGoogle() = _$_LoginWithGoogle;
}

/// @nodoc
abstract class _$LoginWithFacebookCopyWith<$Res> {
  factory _$LoginWithFacebookCopyWith(
          _LoginWithFacebook value, $Res Function(_LoginWithFacebook) then) =
      __$LoginWithFacebookCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoginWithFacebookCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements _$LoginWithFacebookCopyWith<$Res> {
  __$LoginWithFacebookCopyWithImpl(
      _LoginWithFacebook _value, $Res Function(_LoginWithFacebook) _then)
      : super(_value, (v) => _then(v as _LoginWithFacebook));

  @override
  _LoginWithFacebook get _value => super._value as _LoginWithFacebook;
}

/// @nodoc
class _$_LoginWithFacebook implements _LoginWithFacebook {
  const _$_LoginWithFacebook();

  @override
  String toString() {
    return 'AuthenticationEvent.loginWithFacebook()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoginWithFacebook);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthFormType authFormType) setFormType,
    required TResult Function(String value) onEmailChanged,
    required TResult Function(String value) onNameChanged,
    required TResult Function(String value) onPasswordChanged,
    required TResult Function() authCheckRequested,
    required TResult Function(User user) updatedUser,
    required TResult Function() loginWithEmail,
    required TResult Function() registerWithEmail,
    required TResult Function() loginWithGoogle,
    required TResult Function() loginWithFacebook,
    required TResult Function() resetPassword,
    required TResult Function(String? token) updateUserToken,
  }) {
    return loginWithFacebook();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthFormType authFormType)? setFormType,
    TResult Function(String value)? onEmailChanged,
    TResult Function(String value)? onNameChanged,
    TResult Function(String value)? onPasswordChanged,
    TResult Function()? authCheckRequested,
    TResult Function(User user)? updatedUser,
    TResult Function()? loginWithEmail,
    TResult Function()? registerWithEmail,
    TResult Function()? loginWithGoogle,
    TResult Function()? loginWithFacebook,
    TResult Function()? resetPassword,
    TResult Function(String? token)? updateUserToken,
    required TResult orElse(),
  }) {
    if (loginWithFacebook != null) {
      return loginWithFacebook();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetFormType value) setFormType,
    required TResult Function(_OnEmailChanged value) onEmailChanged,
    required TResult Function(_OnNameChanged value) onNameChanged,
    required TResult Function(_OnPasswordChanged value) onPasswordChanged,
    required TResult Function(_AuthCheckRequested value) authCheckRequested,
    required TResult Function(_UpdatedUser value) updatedUser,
    required TResult Function(_LoginWithEmail value) loginWithEmail,
    required TResult Function(_RegisterWithEmail value) registerWithEmail,
    required TResult Function(_LoginWithGoogle value) loginWithGoogle,
    required TResult Function(_LoginWithFacebook value) loginWithFacebook,
    required TResult Function(_ResetPassword value) resetPassword,
    required TResult Function(_UpdateUserToken value) updateUserToken,
  }) {
    return loginWithFacebook(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetFormType value)? setFormType,
    TResult Function(_OnEmailChanged value)? onEmailChanged,
    TResult Function(_OnNameChanged value)? onNameChanged,
    TResult Function(_OnPasswordChanged value)? onPasswordChanged,
    TResult Function(_AuthCheckRequested value)? authCheckRequested,
    TResult Function(_UpdatedUser value)? updatedUser,
    TResult Function(_LoginWithEmail value)? loginWithEmail,
    TResult Function(_RegisterWithEmail value)? registerWithEmail,
    TResult Function(_LoginWithGoogle value)? loginWithGoogle,
    TResult Function(_LoginWithFacebook value)? loginWithFacebook,
    TResult Function(_ResetPassword value)? resetPassword,
    TResult Function(_UpdateUserToken value)? updateUserToken,
    required TResult orElse(),
  }) {
    if (loginWithFacebook != null) {
      return loginWithFacebook(this);
    }
    return orElse();
  }
}

abstract class _LoginWithFacebook implements AuthenticationEvent {
  const factory _LoginWithFacebook() = _$_LoginWithFacebook;
}

/// @nodoc
abstract class _$ResetPasswordCopyWith<$Res> {
  factory _$ResetPasswordCopyWith(
          _ResetPassword value, $Res Function(_ResetPassword) then) =
      __$ResetPasswordCopyWithImpl<$Res>;
}

/// @nodoc
class __$ResetPasswordCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements _$ResetPasswordCopyWith<$Res> {
  __$ResetPasswordCopyWithImpl(
      _ResetPassword _value, $Res Function(_ResetPassword) _then)
      : super(_value, (v) => _then(v as _ResetPassword));

  @override
  _ResetPassword get _value => super._value as _ResetPassword;
}

/// @nodoc
class _$_ResetPassword implements _ResetPassword {
  const _$_ResetPassword();

  @override
  String toString() {
    return 'AuthenticationEvent.resetPassword()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ResetPassword);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthFormType authFormType) setFormType,
    required TResult Function(String value) onEmailChanged,
    required TResult Function(String value) onNameChanged,
    required TResult Function(String value) onPasswordChanged,
    required TResult Function() authCheckRequested,
    required TResult Function(User user) updatedUser,
    required TResult Function() loginWithEmail,
    required TResult Function() registerWithEmail,
    required TResult Function() loginWithGoogle,
    required TResult Function() loginWithFacebook,
    required TResult Function() resetPassword,
    required TResult Function(String? token) updateUserToken,
  }) {
    return resetPassword();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthFormType authFormType)? setFormType,
    TResult Function(String value)? onEmailChanged,
    TResult Function(String value)? onNameChanged,
    TResult Function(String value)? onPasswordChanged,
    TResult Function()? authCheckRequested,
    TResult Function(User user)? updatedUser,
    TResult Function()? loginWithEmail,
    TResult Function()? registerWithEmail,
    TResult Function()? loginWithGoogle,
    TResult Function()? loginWithFacebook,
    TResult Function()? resetPassword,
    TResult Function(String? token)? updateUserToken,
    required TResult orElse(),
  }) {
    if (resetPassword != null) {
      return resetPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetFormType value) setFormType,
    required TResult Function(_OnEmailChanged value) onEmailChanged,
    required TResult Function(_OnNameChanged value) onNameChanged,
    required TResult Function(_OnPasswordChanged value) onPasswordChanged,
    required TResult Function(_AuthCheckRequested value) authCheckRequested,
    required TResult Function(_UpdatedUser value) updatedUser,
    required TResult Function(_LoginWithEmail value) loginWithEmail,
    required TResult Function(_RegisterWithEmail value) registerWithEmail,
    required TResult Function(_LoginWithGoogle value) loginWithGoogle,
    required TResult Function(_LoginWithFacebook value) loginWithFacebook,
    required TResult Function(_ResetPassword value) resetPassword,
    required TResult Function(_UpdateUserToken value) updateUserToken,
  }) {
    return resetPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetFormType value)? setFormType,
    TResult Function(_OnEmailChanged value)? onEmailChanged,
    TResult Function(_OnNameChanged value)? onNameChanged,
    TResult Function(_OnPasswordChanged value)? onPasswordChanged,
    TResult Function(_AuthCheckRequested value)? authCheckRequested,
    TResult Function(_UpdatedUser value)? updatedUser,
    TResult Function(_LoginWithEmail value)? loginWithEmail,
    TResult Function(_RegisterWithEmail value)? registerWithEmail,
    TResult Function(_LoginWithGoogle value)? loginWithGoogle,
    TResult Function(_LoginWithFacebook value)? loginWithFacebook,
    TResult Function(_ResetPassword value)? resetPassword,
    TResult Function(_UpdateUserToken value)? updateUserToken,
    required TResult orElse(),
  }) {
    if (resetPassword != null) {
      return resetPassword(this);
    }
    return orElse();
  }
}

abstract class _ResetPassword implements AuthenticationEvent {
  const factory _ResetPassword() = _$_ResetPassword;
}

/// @nodoc
abstract class _$UpdateUserTokenCopyWith<$Res> {
  factory _$UpdateUserTokenCopyWith(
          _UpdateUserToken value, $Res Function(_UpdateUserToken) then) =
      __$UpdateUserTokenCopyWithImpl<$Res>;
  $Res call({String? token});
}

/// @nodoc
class __$UpdateUserTokenCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements _$UpdateUserTokenCopyWith<$Res> {
  __$UpdateUserTokenCopyWithImpl(
      _UpdateUserToken _value, $Res Function(_UpdateUserToken) _then)
      : super(_value, (v) => _then(v as _UpdateUserToken));

  @override
  _UpdateUserToken get _value => super._value as _UpdateUserToken;

  @override
  $Res call({
    Object? token = freezed,
  }) {
    return _then(_UpdateUserToken(
      token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
class _$_UpdateUserToken implements _UpdateUserToken {
  const _$_UpdateUserToken(this.token);

  @override
  final String? token;

  @override
  String toString() {
    return 'AuthenticationEvent.updateUserToken(token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateUserToken &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(token);

  @JsonKey(ignore: true)
  @override
  _$UpdateUserTokenCopyWith<_UpdateUserToken> get copyWith =>
      __$UpdateUserTokenCopyWithImpl<_UpdateUserToken>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthFormType authFormType) setFormType,
    required TResult Function(String value) onEmailChanged,
    required TResult Function(String value) onNameChanged,
    required TResult Function(String value) onPasswordChanged,
    required TResult Function() authCheckRequested,
    required TResult Function(User user) updatedUser,
    required TResult Function() loginWithEmail,
    required TResult Function() registerWithEmail,
    required TResult Function() loginWithGoogle,
    required TResult Function() loginWithFacebook,
    required TResult Function() resetPassword,
    required TResult Function(String? token) updateUserToken,
  }) {
    return updateUserToken(token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthFormType authFormType)? setFormType,
    TResult Function(String value)? onEmailChanged,
    TResult Function(String value)? onNameChanged,
    TResult Function(String value)? onPasswordChanged,
    TResult Function()? authCheckRequested,
    TResult Function(User user)? updatedUser,
    TResult Function()? loginWithEmail,
    TResult Function()? registerWithEmail,
    TResult Function()? loginWithGoogle,
    TResult Function()? loginWithFacebook,
    TResult Function()? resetPassword,
    TResult Function(String? token)? updateUserToken,
    required TResult orElse(),
  }) {
    if (updateUserToken != null) {
      return updateUserToken(token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetFormType value) setFormType,
    required TResult Function(_OnEmailChanged value) onEmailChanged,
    required TResult Function(_OnNameChanged value) onNameChanged,
    required TResult Function(_OnPasswordChanged value) onPasswordChanged,
    required TResult Function(_AuthCheckRequested value) authCheckRequested,
    required TResult Function(_UpdatedUser value) updatedUser,
    required TResult Function(_LoginWithEmail value) loginWithEmail,
    required TResult Function(_RegisterWithEmail value) registerWithEmail,
    required TResult Function(_LoginWithGoogle value) loginWithGoogle,
    required TResult Function(_LoginWithFacebook value) loginWithFacebook,
    required TResult Function(_ResetPassword value) resetPassword,
    required TResult Function(_UpdateUserToken value) updateUserToken,
  }) {
    return updateUserToken(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetFormType value)? setFormType,
    TResult Function(_OnEmailChanged value)? onEmailChanged,
    TResult Function(_OnNameChanged value)? onNameChanged,
    TResult Function(_OnPasswordChanged value)? onPasswordChanged,
    TResult Function(_AuthCheckRequested value)? authCheckRequested,
    TResult Function(_UpdatedUser value)? updatedUser,
    TResult Function(_LoginWithEmail value)? loginWithEmail,
    TResult Function(_RegisterWithEmail value)? registerWithEmail,
    TResult Function(_LoginWithGoogle value)? loginWithGoogle,
    TResult Function(_LoginWithFacebook value)? loginWithFacebook,
    TResult Function(_ResetPassword value)? resetPassword,
    TResult Function(_UpdateUserToken value)? updateUserToken,
    required TResult orElse(),
  }) {
    if (updateUserToken != null) {
      return updateUserToken(this);
    }
    return orElse();
  }
}

abstract class _UpdateUserToken implements AuthenticationEvent {
  const factory _UpdateUserToken(String? token) = _$_UpdateUserToken;

  String? get token => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$UpdateUserTokenCopyWith<_UpdateUserToken> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$AuthenticationStateTearOff {
  const _$AuthenticationStateTearOff();

  _AuthenticationState call(
      {required AuthFormType authFormType,
      required Name name,
      required Email email,
      required Password password,
      required FormzStatus status,
      required bool showErrorMessage,
      required bool checkingAuthStatus,
      required bool loadingGoogleSignIn,
      required bool loadingFacebookSignIn,
      required Option<Either<AuthFailure, User>> authFailureOrSuccessOption,
      required Option<Either<AuthFailure, User>>
          updateProfileFailureOrSuccessOption,
      required Option<Either<AuthFailure, Unit>>
          resetPasswordFailureOrSuccessOption,
      String? userToken}) {
    return _AuthenticationState(
      authFormType: authFormType,
      name: name,
      email: email,
      password: password,
      status: status,
      showErrorMessage: showErrorMessage,
      checkingAuthStatus: checkingAuthStatus,
      loadingGoogleSignIn: loadingGoogleSignIn,
      loadingFacebookSignIn: loadingFacebookSignIn,
      authFailureOrSuccessOption: authFailureOrSuccessOption,
      updateProfileFailureOrSuccessOption: updateProfileFailureOrSuccessOption,
      resetPasswordFailureOrSuccessOption: resetPasswordFailureOrSuccessOption,
      userToken: userToken,
    );
  }
}

/// @nodoc
const $AuthenticationState = _$AuthenticationStateTearOff();

/// @nodoc
mixin _$AuthenticationState {
  AuthFormType get authFormType => throw _privateConstructorUsedError;
  Name get name => throw _privateConstructorUsedError;
  Email get email => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;
  FormzStatus get status => throw _privateConstructorUsedError;
  bool get showErrorMessage => throw _privateConstructorUsedError;
  bool get checkingAuthStatus => throw _privateConstructorUsedError;
  bool get loadingGoogleSignIn => throw _privateConstructorUsedError;
  bool get loadingFacebookSignIn => throw _privateConstructorUsedError;
  Option<Either<AuthFailure, User>> get authFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  Option<Either<AuthFailure, User>> get updateProfileFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  Option<Either<AuthFailure, Unit>> get resetPasswordFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  String? get userToken => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthenticationStateCopyWith<AuthenticationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationStateCopyWith<$Res> {
  factory $AuthenticationStateCopyWith(
          AuthenticationState value, $Res Function(AuthenticationState) then) =
      _$AuthenticationStateCopyWithImpl<$Res>;
  $Res call(
      {AuthFormType authFormType,
      Name name,
      Email email,
      Password password,
      FormzStatus status,
      bool showErrorMessage,
      bool checkingAuthStatus,
      bool loadingGoogleSignIn,
      bool loadingFacebookSignIn,
      Option<Either<AuthFailure, User>> authFailureOrSuccessOption,
      Option<Either<AuthFailure, User>> updateProfileFailureOrSuccessOption,
      Option<Either<AuthFailure, Unit>> resetPasswordFailureOrSuccessOption,
      String? userToken});

  $AuthFormTypeCopyWith<$Res> get authFormType;
}

/// @nodoc
class _$AuthenticationStateCopyWithImpl<$Res>
    implements $AuthenticationStateCopyWith<$Res> {
  _$AuthenticationStateCopyWithImpl(this._value, this._then);

  final AuthenticationState _value;
  // ignore: unused_field
  final $Res Function(AuthenticationState) _then;

  @override
  $Res call({
    Object? authFormType = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? status = freezed,
    Object? showErrorMessage = freezed,
    Object? checkingAuthStatus = freezed,
    Object? loadingGoogleSignIn = freezed,
    Object? loadingFacebookSignIn = freezed,
    Object? authFailureOrSuccessOption = freezed,
    Object? updateProfileFailureOrSuccessOption = freezed,
    Object? resetPasswordFailureOrSuccessOption = freezed,
    Object? userToken = freezed,
  }) {
    return _then(_value.copyWith(
      authFormType: authFormType == freezed
          ? _value.authFormType
          : authFormType // ignore: cast_nullable_to_non_nullable
              as AuthFormType,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      showErrorMessage: showErrorMessage == freezed
          ? _value.showErrorMessage
          : showErrorMessage // ignore: cast_nullable_to_non_nullable
              as bool,
      checkingAuthStatus: checkingAuthStatus == freezed
          ? _value.checkingAuthStatus
          : checkingAuthStatus // ignore: cast_nullable_to_non_nullable
              as bool,
      loadingGoogleSignIn: loadingGoogleSignIn == freezed
          ? _value.loadingGoogleSignIn
          : loadingGoogleSignIn // ignore: cast_nullable_to_non_nullable
              as bool,
      loadingFacebookSignIn: loadingFacebookSignIn == freezed
          ? _value.loadingFacebookSignIn
          : loadingFacebookSignIn // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, User>>,
      updateProfileFailureOrSuccessOption: updateProfileFailureOrSuccessOption ==
              freezed
          ? _value.updateProfileFailureOrSuccessOption
          : updateProfileFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, User>>,
      resetPasswordFailureOrSuccessOption: resetPasswordFailureOrSuccessOption ==
              freezed
          ? _value.resetPasswordFailureOrSuccessOption
          : resetPasswordFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
      userToken: userToken == freezed
          ? _value.userToken
          : userToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $AuthFormTypeCopyWith<$Res> get authFormType {
    return $AuthFormTypeCopyWith<$Res>(_value.authFormType, (value) {
      return _then(_value.copyWith(authFormType: value));
    });
  }
}

/// @nodoc
abstract class _$AuthenticationStateCopyWith<$Res>
    implements $AuthenticationStateCopyWith<$Res> {
  factory _$AuthenticationStateCopyWith(_AuthenticationState value,
          $Res Function(_AuthenticationState) then) =
      __$AuthenticationStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {AuthFormType authFormType,
      Name name,
      Email email,
      Password password,
      FormzStatus status,
      bool showErrorMessage,
      bool checkingAuthStatus,
      bool loadingGoogleSignIn,
      bool loadingFacebookSignIn,
      Option<Either<AuthFailure, User>> authFailureOrSuccessOption,
      Option<Either<AuthFailure, User>> updateProfileFailureOrSuccessOption,
      Option<Either<AuthFailure, Unit>> resetPasswordFailureOrSuccessOption,
      String? userToken});

  @override
  $AuthFormTypeCopyWith<$Res> get authFormType;
}

/// @nodoc
class __$AuthenticationStateCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements _$AuthenticationStateCopyWith<$Res> {
  __$AuthenticationStateCopyWithImpl(
      _AuthenticationState _value, $Res Function(_AuthenticationState) _then)
      : super(_value, (v) => _then(v as _AuthenticationState));

  @override
  _AuthenticationState get _value => super._value as _AuthenticationState;

  @override
  $Res call({
    Object? authFormType = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? status = freezed,
    Object? showErrorMessage = freezed,
    Object? checkingAuthStatus = freezed,
    Object? loadingGoogleSignIn = freezed,
    Object? loadingFacebookSignIn = freezed,
    Object? authFailureOrSuccessOption = freezed,
    Object? updateProfileFailureOrSuccessOption = freezed,
    Object? resetPasswordFailureOrSuccessOption = freezed,
    Object? userToken = freezed,
  }) {
    return _then(_AuthenticationState(
      authFormType: authFormType == freezed
          ? _value.authFormType
          : authFormType // ignore: cast_nullable_to_non_nullable
              as AuthFormType,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      showErrorMessage: showErrorMessage == freezed
          ? _value.showErrorMessage
          : showErrorMessage // ignore: cast_nullable_to_non_nullable
              as bool,
      checkingAuthStatus: checkingAuthStatus == freezed
          ? _value.checkingAuthStatus
          : checkingAuthStatus // ignore: cast_nullable_to_non_nullable
              as bool,
      loadingGoogleSignIn: loadingGoogleSignIn == freezed
          ? _value.loadingGoogleSignIn
          : loadingGoogleSignIn // ignore: cast_nullable_to_non_nullable
              as bool,
      loadingFacebookSignIn: loadingFacebookSignIn == freezed
          ? _value.loadingFacebookSignIn
          : loadingFacebookSignIn // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, User>>,
      updateProfileFailureOrSuccessOption: updateProfileFailureOrSuccessOption ==
              freezed
          ? _value.updateProfileFailureOrSuccessOption
          : updateProfileFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, User>>,
      resetPasswordFailureOrSuccessOption: resetPasswordFailureOrSuccessOption ==
              freezed
          ? _value.resetPasswordFailureOrSuccessOption
          : resetPasswordFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
      userToken: userToken == freezed
          ? _value.userToken
          : userToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
class _$_AuthenticationState implements _AuthenticationState {
  const _$_AuthenticationState(
      {required this.authFormType,
      required this.name,
      required this.email,
      required this.password,
      required this.status,
      required this.showErrorMessage,
      required this.checkingAuthStatus,
      required this.loadingGoogleSignIn,
      required this.loadingFacebookSignIn,
      required this.authFailureOrSuccessOption,
      required this.updateProfileFailureOrSuccessOption,
      required this.resetPasswordFailureOrSuccessOption,
      this.userToken});

  @override
  final AuthFormType authFormType;
  @override
  final Name name;
  @override
  final Email email;
  @override
  final Password password;
  @override
  final FormzStatus status;
  @override
  final bool showErrorMessage;
  @override
  final bool checkingAuthStatus;
  @override
  final bool loadingGoogleSignIn;
  @override
  final bool loadingFacebookSignIn;
  @override
  final Option<Either<AuthFailure, User>> authFailureOrSuccessOption;
  @override
  final Option<Either<AuthFailure, User>> updateProfileFailureOrSuccessOption;
  @override
  final Option<Either<AuthFailure, Unit>> resetPasswordFailureOrSuccessOption;
  @override
  final String? userToken;

  @override
  String toString() {
    return 'AuthenticationState(authFormType: $authFormType, name: $name, email: $email, password: $password, status: $status, showErrorMessage: $showErrorMessage, checkingAuthStatus: $checkingAuthStatus, loadingGoogleSignIn: $loadingGoogleSignIn, loadingFacebookSignIn: $loadingFacebookSignIn, authFailureOrSuccessOption: $authFailureOrSuccessOption, updateProfileFailureOrSuccessOption: $updateProfileFailureOrSuccessOption, resetPasswordFailureOrSuccessOption: $resetPasswordFailureOrSuccessOption, userToken: $userToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AuthenticationState &&
            (identical(other.authFormType, authFormType) ||
                const DeepCollectionEquality()
                    .equals(other.authFormType, authFormType)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.showErrorMessage, showErrorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessage, showErrorMessage)) &&
            (identical(other.checkingAuthStatus, checkingAuthStatus) ||
                const DeepCollectionEquality()
                    .equals(other.checkingAuthStatus, checkingAuthStatus)) &&
            (identical(other.loadingGoogleSignIn, loadingGoogleSignIn) ||
                const DeepCollectionEquality()
                    .equals(other.loadingGoogleSignIn, loadingGoogleSignIn)) &&
            (identical(other.loadingFacebookSignIn, loadingFacebookSignIn) ||
                const DeepCollectionEquality().equals(
                    other.loadingFacebookSignIn, loadingFacebookSignIn)) &&
            (identical(other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption)) &&
            (identical(other.updateProfileFailureOrSuccessOption,
                    updateProfileFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.updateProfileFailureOrSuccessOption,
                    updateProfileFailureOrSuccessOption)) &&
            (identical(other.resetPasswordFailureOrSuccessOption,
                    resetPasswordFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.resetPasswordFailureOrSuccessOption,
                    resetPasswordFailureOrSuccessOption)) &&
            (identical(other.userToken, userToken) ||
                const DeepCollectionEquality()
                    .equals(other.userToken, userToken)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(authFormType) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(showErrorMessage) ^
      const DeepCollectionEquality().hash(checkingAuthStatus) ^
      const DeepCollectionEquality().hash(loadingGoogleSignIn) ^
      const DeepCollectionEquality().hash(loadingFacebookSignIn) ^
      const DeepCollectionEquality().hash(authFailureOrSuccessOption) ^
      const DeepCollectionEquality().hash(updateProfileFailureOrSuccessOption) ^
      const DeepCollectionEquality().hash(resetPasswordFailureOrSuccessOption) ^
      const DeepCollectionEquality().hash(userToken);

  @JsonKey(ignore: true)
  @override
  _$AuthenticationStateCopyWith<_AuthenticationState> get copyWith =>
      __$AuthenticationStateCopyWithImpl<_AuthenticationState>(
          this, _$identity);
}

abstract class _AuthenticationState implements AuthenticationState {
  const factory _AuthenticationState(
      {required AuthFormType authFormType,
      required Name name,
      required Email email,
      required Password password,
      required FormzStatus status,
      required bool showErrorMessage,
      required bool checkingAuthStatus,
      required bool loadingGoogleSignIn,
      required bool loadingFacebookSignIn,
      required Option<Either<AuthFailure, User>> authFailureOrSuccessOption,
      required Option<Either<AuthFailure, User>>
          updateProfileFailureOrSuccessOption,
      required Option<Either<AuthFailure, Unit>>
          resetPasswordFailureOrSuccessOption,
      String? userToken}) = _$_AuthenticationState;

  @override
  AuthFormType get authFormType => throw _privateConstructorUsedError;
  @override
  Name get name => throw _privateConstructorUsedError;
  @override
  Email get email => throw _privateConstructorUsedError;
  @override
  Password get password => throw _privateConstructorUsedError;
  @override
  FormzStatus get status => throw _privateConstructorUsedError;
  @override
  bool get showErrorMessage => throw _privateConstructorUsedError;
  @override
  bool get checkingAuthStatus => throw _privateConstructorUsedError;
  @override
  bool get loadingGoogleSignIn => throw _privateConstructorUsedError;
  @override
  bool get loadingFacebookSignIn => throw _privateConstructorUsedError;
  @override
  Option<Either<AuthFailure, User>> get authFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  Option<Either<AuthFailure, User>> get updateProfileFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  Option<Either<AuthFailure, Unit>> get resetPasswordFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  String? get userToken => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AuthenticationStateCopyWith<_AuthenticationState> get copyWith =>
      throw _privateConstructorUsedError;
}
