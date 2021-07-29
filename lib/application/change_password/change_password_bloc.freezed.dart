// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'change_password_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ChangePasswordEventTearOff {
  const _$ChangePasswordEventTearOff();

  _OnPasswordChanged onPasswordChanged(String value) {
    return _OnPasswordChanged(
      value,
    );
  }

  _OnLoginPasswordChanged onLoginPasswordChanged(String value) {
    return _OnLoginPasswordChanged(
      value,
    );
  }

  _UpdatePassword updatePassword() {
    return const _UpdatePassword();
  }

  _LoginWithPassword loginWithPassword() {
    return const _LoginWithPassword();
  }

  _Reset reset() {
    return const _Reset();
  }

  _ResetLoginForm resetLoginForm() {
    return const _ResetLoginForm();
  }
}

/// @nodoc
const $ChangePasswordEvent = _$ChangePasswordEventTearOff();

/// @nodoc
mixin _$ChangePasswordEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) onPasswordChanged,
    required TResult Function(String value) onLoginPasswordChanged,
    required TResult Function() updatePassword,
    required TResult Function() loginWithPassword,
    required TResult Function() reset,
    required TResult Function() resetLoginForm,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? onPasswordChanged,
    TResult Function(String value)? onLoginPasswordChanged,
    TResult Function()? updatePassword,
    TResult Function()? loginWithPassword,
    TResult Function()? reset,
    TResult Function()? resetLoginForm,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnPasswordChanged value) onPasswordChanged,
    required TResult Function(_OnLoginPasswordChanged value)
        onLoginPasswordChanged,
    required TResult Function(_UpdatePassword value) updatePassword,
    required TResult Function(_LoginWithPassword value) loginWithPassword,
    required TResult Function(_Reset value) reset,
    required TResult Function(_ResetLoginForm value) resetLoginForm,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnPasswordChanged value)? onPasswordChanged,
    TResult Function(_OnLoginPasswordChanged value)? onLoginPasswordChanged,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_LoginWithPassword value)? loginWithPassword,
    TResult Function(_Reset value)? reset,
    TResult Function(_ResetLoginForm value)? resetLoginForm,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangePasswordEventCopyWith<$Res> {
  factory $ChangePasswordEventCopyWith(
          ChangePasswordEvent value, $Res Function(ChangePasswordEvent) then) =
      _$ChangePasswordEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChangePasswordEventCopyWithImpl<$Res>
    implements $ChangePasswordEventCopyWith<$Res> {
  _$ChangePasswordEventCopyWithImpl(this._value, this._then);

  final ChangePasswordEvent _value;
  // ignore: unused_field
  final $Res Function(ChangePasswordEvent) _then;
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
    extends _$ChangePasswordEventCopyWithImpl<$Res>
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
    return 'ChangePasswordEvent.onPasswordChanged(value: $value)';
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
    required TResult Function(String value) onPasswordChanged,
    required TResult Function(String value) onLoginPasswordChanged,
    required TResult Function() updatePassword,
    required TResult Function() loginWithPassword,
    required TResult Function() reset,
    required TResult Function() resetLoginForm,
  }) {
    return onPasswordChanged(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? onPasswordChanged,
    TResult Function(String value)? onLoginPasswordChanged,
    TResult Function()? updatePassword,
    TResult Function()? loginWithPassword,
    TResult Function()? reset,
    TResult Function()? resetLoginForm,
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
    required TResult Function(_OnPasswordChanged value) onPasswordChanged,
    required TResult Function(_OnLoginPasswordChanged value)
        onLoginPasswordChanged,
    required TResult Function(_UpdatePassword value) updatePassword,
    required TResult Function(_LoginWithPassword value) loginWithPassword,
    required TResult Function(_Reset value) reset,
    required TResult Function(_ResetLoginForm value) resetLoginForm,
  }) {
    return onPasswordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnPasswordChanged value)? onPasswordChanged,
    TResult Function(_OnLoginPasswordChanged value)? onLoginPasswordChanged,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_LoginWithPassword value)? loginWithPassword,
    TResult Function(_Reset value)? reset,
    TResult Function(_ResetLoginForm value)? resetLoginForm,
    required TResult orElse(),
  }) {
    if (onPasswordChanged != null) {
      return onPasswordChanged(this);
    }
    return orElse();
  }
}

abstract class _OnPasswordChanged implements ChangePasswordEvent {
  const factory _OnPasswordChanged(String value) = _$_OnPasswordChanged;

  String get value => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$OnPasswordChangedCopyWith<_OnPasswordChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$OnLoginPasswordChangedCopyWith<$Res> {
  factory _$OnLoginPasswordChangedCopyWith(_OnLoginPasswordChanged value,
          $Res Function(_OnLoginPasswordChanged) then) =
      __$OnLoginPasswordChangedCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class __$OnLoginPasswordChangedCopyWithImpl<$Res>
    extends _$ChangePasswordEventCopyWithImpl<$Res>
    implements _$OnLoginPasswordChangedCopyWith<$Res> {
  __$OnLoginPasswordChangedCopyWithImpl(_OnLoginPasswordChanged _value,
      $Res Function(_OnLoginPasswordChanged) _then)
      : super(_value, (v) => _then(v as _OnLoginPasswordChanged));

  @override
  _OnLoginPasswordChanged get _value => super._value as _OnLoginPasswordChanged;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_OnLoginPasswordChanged(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_OnLoginPasswordChanged implements _OnLoginPasswordChanged {
  const _$_OnLoginPasswordChanged(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'ChangePasswordEvent.onLoginPasswordChanged(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OnLoginPasswordChanged &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  _$OnLoginPasswordChangedCopyWith<_OnLoginPasswordChanged> get copyWith =>
      __$OnLoginPasswordChangedCopyWithImpl<_OnLoginPasswordChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) onPasswordChanged,
    required TResult Function(String value) onLoginPasswordChanged,
    required TResult Function() updatePassword,
    required TResult Function() loginWithPassword,
    required TResult Function() reset,
    required TResult Function() resetLoginForm,
  }) {
    return onLoginPasswordChanged(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? onPasswordChanged,
    TResult Function(String value)? onLoginPasswordChanged,
    TResult Function()? updatePassword,
    TResult Function()? loginWithPassword,
    TResult Function()? reset,
    TResult Function()? resetLoginForm,
    required TResult orElse(),
  }) {
    if (onLoginPasswordChanged != null) {
      return onLoginPasswordChanged(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnPasswordChanged value) onPasswordChanged,
    required TResult Function(_OnLoginPasswordChanged value)
        onLoginPasswordChanged,
    required TResult Function(_UpdatePassword value) updatePassword,
    required TResult Function(_LoginWithPassword value) loginWithPassword,
    required TResult Function(_Reset value) reset,
    required TResult Function(_ResetLoginForm value) resetLoginForm,
  }) {
    return onLoginPasswordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnPasswordChanged value)? onPasswordChanged,
    TResult Function(_OnLoginPasswordChanged value)? onLoginPasswordChanged,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_LoginWithPassword value)? loginWithPassword,
    TResult Function(_Reset value)? reset,
    TResult Function(_ResetLoginForm value)? resetLoginForm,
    required TResult orElse(),
  }) {
    if (onLoginPasswordChanged != null) {
      return onLoginPasswordChanged(this);
    }
    return orElse();
  }
}

abstract class _OnLoginPasswordChanged implements ChangePasswordEvent {
  const factory _OnLoginPasswordChanged(String value) =
      _$_OnLoginPasswordChanged;

  String get value => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$OnLoginPasswordChangedCopyWith<_OnLoginPasswordChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UpdatePasswordCopyWith<$Res> {
  factory _$UpdatePasswordCopyWith(
          _UpdatePassword value, $Res Function(_UpdatePassword) then) =
      __$UpdatePasswordCopyWithImpl<$Res>;
}

/// @nodoc
class __$UpdatePasswordCopyWithImpl<$Res>
    extends _$ChangePasswordEventCopyWithImpl<$Res>
    implements _$UpdatePasswordCopyWith<$Res> {
  __$UpdatePasswordCopyWithImpl(
      _UpdatePassword _value, $Res Function(_UpdatePassword) _then)
      : super(_value, (v) => _then(v as _UpdatePassword));

  @override
  _UpdatePassword get _value => super._value as _UpdatePassword;
}

/// @nodoc
class _$_UpdatePassword implements _UpdatePassword {
  const _$_UpdatePassword();

  @override
  String toString() {
    return 'ChangePasswordEvent.updatePassword()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _UpdatePassword);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) onPasswordChanged,
    required TResult Function(String value) onLoginPasswordChanged,
    required TResult Function() updatePassword,
    required TResult Function() loginWithPassword,
    required TResult Function() reset,
    required TResult Function() resetLoginForm,
  }) {
    return updatePassword();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? onPasswordChanged,
    TResult Function(String value)? onLoginPasswordChanged,
    TResult Function()? updatePassword,
    TResult Function()? loginWithPassword,
    TResult Function()? reset,
    TResult Function()? resetLoginForm,
    required TResult orElse(),
  }) {
    if (updatePassword != null) {
      return updatePassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnPasswordChanged value) onPasswordChanged,
    required TResult Function(_OnLoginPasswordChanged value)
        onLoginPasswordChanged,
    required TResult Function(_UpdatePassword value) updatePassword,
    required TResult Function(_LoginWithPassword value) loginWithPassword,
    required TResult Function(_Reset value) reset,
    required TResult Function(_ResetLoginForm value) resetLoginForm,
  }) {
    return updatePassword(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnPasswordChanged value)? onPasswordChanged,
    TResult Function(_OnLoginPasswordChanged value)? onLoginPasswordChanged,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_LoginWithPassword value)? loginWithPassword,
    TResult Function(_Reset value)? reset,
    TResult Function(_ResetLoginForm value)? resetLoginForm,
    required TResult orElse(),
  }) {
    if (updatePassword != null) {
      return updatePassword(this);
    }
    return orElse();
  }
}

abstract class _UpdatePassword implements ChangePasswordEvent {
  const factory _UpdatePassword() = _$_UpdatePassword;
}

/// @nodoc
abstract class _$LoginWithPasswordCopyWith<$Res> {
  factory _$LoginWithPasswordCopyWith(
          _LoginWithPassword value, $Res Function(_LoginWithPassword) then) =
      __$LoginWithPasswordCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoginWithPasswordCopyWithImpl<$Res>
    extends _$ChangePasswordEventCopyWithImpl<$Res>
    implements _$LoginWithPasswordCopyWith<$Res> {
  __$LoginWithPasswordCopyWithImpl(
      _LoginWithPassword _value, $Res Function(_LoginWithPassword) _then)
      : super(_value, (v) => _then(v as _LoginWithPassword));

  @override
  _LoginWithPassword get _value => super._value as _LoginWithPassword;
}

/// @nodoc
class _$_LoginWithPassword implements _LoginWithPassword {
  const _$_LoginWithPassword();

  @override
  String toString() {
    return 'ChangePasswordEvent.loginWithPassword()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoginWithPassword);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) onPasswordChanged,
    required TResult Function(String value) onLoginPasswordChanged,
    required TResult Function() updatePassword,
    required TResult Function() loginWithPassword,
    required TResult Function() reset,
    required TResult Function() resetLoginForm,
  }) {
    return loginWithPassword();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? onPasswordChanged,
    TResult Function(String value)? onLoginPasswordChanged,
    TResult Function()? updatePassword,
    TResult Function()? loginWithPassword,
    TResult Function()? reset,
    TResult Function()? resetLoginForm,
    required TResult orElse(),
  }) {
    if (loginWithPassword != null) {
      return loginWithPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnPasswordChanged value) onPasswordChanged,
    required TResult Function(_OnLoginPasswordChanged value)
        onLoginPasswordChanged,
    required TResult Function(_UpdatePassword value) updatePassword,
    required TResult Function(_LoginWithPassword value) loginWithPassword,
    required TResult Function(_Reset value) reset,
    required TResult Function(_ResetLoginForm value) resetLoginForm,
  }) {
    return loginWithPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnPasswordChanged value)? onPasswordChanged,
    TResult Function(_OnLoginPasswordChanged value)? onLoginPasswordChanged,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_LoginWithPassword value)? loginWithPassword,
    TResult Function(_Reset value)? reset,
    TResult Function(_ResetLoginForm value)? resetLoginForm,
    required TResult orElse(),
  }) {
    if (loginWithPassword != null) {
      return loginWithPassword(this);
    }
    return orElse();
  }
}

abstract class _LoginWithPassword implements ChangePasswordEvent {
  const factory _LoginWithPassword() = _$_LoginWithPassword;
}

/// @nodoc
abstract class _$ResetCopyWith<$Res> {
  factory _$ResetCopyWith(_Reset value, $Res Function(_Reset) then) =
      __$ResetCopyWithImpl<$Res>;
}

/// @nodoc
class __$ResetCopyWithImpl<$Res> extends _$ChangePasswordEventCopyWithImpl<$Res>
    implements _$ResetCopyWith<$Res> {
  __$ResetCopyWithImpl(_Reset _value, $Res Function(_Reset) _then)
      : super(_value, (v) => _then(v as _Reset));

  @override
  _Reset get _value => super._value as _Reset;
}

/// @nodoc
class _$_Reset implements _Reset {
  const _$_Reset();

  @override
  String toString() {
    return 'ChangePasswordEvent.reset()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Reset);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) onPasswordChanged,
    required TResult Function(String value) onLoginPasswordChanged,
    required TResult Function() updatePassword,
    required TResult Function() loginWithPassword,
    required TResult Function() reset,
    required TResult Function() resetLoginForm,
  }) {
    return reset();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? onPasswordChanged,
    TResult Function(String value)? onLoginPasswordChanged,
    TResult Function()? updatePassword,
    TResult Function()? loginWithPassword,
    TResult Function()? reset,
    TResult Function()? resetLoginForm,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnPasswordChanged value) onPasswordChanged,
    required TResult Function(_OnLoginPasswordChanged value)
        onLoginPasswordChanged,
    required TResult Function(_UpdatePassword value) updatePassword,
    required TResult Function(_LoginWithPassword value) loginWithPassword,
    required TResult Function(_Reset value) reset,
    required TResult Function(_ResetLoginForm value) resetLoginForm,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnPasswordChanged value)? onPasswordChanged,
    TResult Function(_OnLoginPasswordChanged value)? onLoginPasswordChanged,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_LoginWithPassword value)? loginWithPassword,
    TResult Function(_Reset value)? reset,
    TResult Function(_ResetLoginForm value)? resetLoginForm,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class _Reset implements ChangePasswordEvent {
  const factory _Reset() = _$_Reset;
}

/// @nodoc
abstract class _$ResetLoginFormCopyWith<$Res> {
  factory _$ResetLoginFormCopyWith(
          _ResetLoginForm value, $Res Function(_ResetLoginForm) then) =
      __$ResetLoginFormCopyWithImpl<$Res>;
}

/// @nodoc
class __$ResetLoginFormCopyWithImpl<$Res>
    extends _$ChangePasswordEventCopyWithImpl<$Res>
    implements _$ResetLoginFormCopyWith<$Res> {
  __$ResetLoginFormCopyWithImpl(
      _ResetLoginForm _value, $Res Function(_ResetLoginForm) _then)
      : super(_value, (v) => _then(v as _ResetLoginForm));

  @override
  _ResetLoginForm get _value => super._value as _ResetLoginForm;
}

/// @nodoc
class _$_ResetLoginForm implements _ResetLoginForm {
  const _$_ResetLoginForm();

  @override
  String toString() {
    return 'ChangePasswordEvent.resetLoginForm()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ResetLoginForm);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) onPasswordChanged,
    required TResult Function(String value) onLoginPasswordChanged,
    required TResult Function() updatePassword,
    required TResult Function() loginWithPassword,
    required TResult Function() reset,
    required TResult Function() resetLoginForm,
  }) {
    return resetLoginForm();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? onPasswordChanged,
    TResult Function(String value)? onLoginPasswordChanged,
    TResult Function()? updatePassword,
    TResult Function()? loginWithPassword,
    TResult Function()? reset,
    TResult Function()? resetLoginForm,
    required TResult orElse(),
  }) {
    if (resetLoginForm != null) {
      return resetLoginForm();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnPasswordChanged value) onPasswordChanged,
    required TResult Function(_OnLoginPasswordChanged value)
        onLoginPasswordChanged,
    required TResult Function(_UpdatePassword value) updatePassword,
    required TResult Function(_LoginWithPassword value) loginWithPassword,
    required TResult Function(_Reset value) reset,
    required TResult Function(_ResetLoginForm value) resetLoginForm,
  }) {
    return resetLoginForm(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnPasswordChanged value)? onPasswordChanged,
    TResult Function(_OnLoginPasswordChanged value)? onLoginPasswordChanged,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_LoginWithPassword value)? loginWithPassword,
    TResult Function(_Reset value)? reset,
    TResult Function(_ResetLoginForm value)? resetLoginForm,
    required TResult orElse(),
  }) {
    if (resetLoginForm != null) {
      return resetLoginForm(this);
    }
    return orElse();
  }
}

abstract class _ResetLoginForm implements ChangePasswordEvent {
  const factory _ResetLoginForm() = _$_ResetLoginForm;
}

/// @nodoc
class _$ChangePasswordStateTearOff {
  const _$ChangePasswordStateTearOff();

  _ChangePasswordState call(
      {required Password password,
      required Password loginPassword,
      required FormzStatus status,
      required FormzStatus statusLogin,
      required bool showErrorMessage,
      required bool showLoginErrorMessage,
      required Option<Either<AuthFailure, Unit>>
          changePasswordFailureOrSuccessOption}) {
    return _ChangePasswordState(
      password: password,
      loginPassword: loginPassword,
      status: status,
      statusLogin: statusLogin,
      showErrorMessage: showErrorMessage,
      showLoginErrorMessage: showLoginErrorMessage,
      changePasswordFailureOrSuccessOption:
          changePasswordFailureOrSuccessOption,
    );
  }
}

/// @nodoc
const $ChangePasswordState = _$ChangePasswordStateTearOff();

/// @nodoc
mixin _$ChangePasswordState {
  Password get password => throw _privateConstructorUsedError;
  Password get loginPassword => throw _privateConstructorUsedError;
  FormzStatus get status => throw _privateConstructorUsedError;
  FormzStatus get statusLogin => throw _privateConstructorUsedError;
  bool get showErrorMessage => throw _privateConstructorUsedError;
  bool get showLoginErrorMessage => throw _privateConstructorUsedError;
  Option<Either<AuthFailure, Unit>> get changePasswordFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChangePasswordStateCopyWith<ChangePasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangePasswordStateCopyWith<$Res> {
  factory $ChangePasswordStateCopyWith(
          ChangePasswordState value, $Res Function(ChangePasswordState) then) =
      _$ChangePasswordStateCopyWithImpl<$Res>;
  $Res call(
      {Password password,
      Password loginPassword,
      FormzStatus status,
      FormzStatus statusLogin,
      bool showErrorMessage,
      bool showLoginErrorMessage,
      Option<Either<AuthFailure, Unit>> changePasswordFailureOrSuccessOption});
}

/// @nodoc
class _$ChangePasswordStateCopyWithImpl<$Res>
    implements $ChangePasswordStateCopyWith<$Res> {
  _$ChangePasswordStateCopyWithImpl(this._value, this._then);

  final ChangePasswordState _value;
  // ignore: unused_field
  final $Res Function(ChangePasswordState) _then;

  @override
  $Res call({
    Object? password = freezed,
    Object? loginPassword = freezed,
    Object? status = freezed,
    Object? statusLogin = freezed,
    Object? showErrorMessage = freezed,
    Object? showLoginErrorMessage = freezed,
    Object? changePasswordFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      loginPassword: loginPassword == freezed
          ? _value.loginPassword
          : loginPassword // ignore: cast_nullable_to_non_nullable
              as Password,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      statusLogin: statusLogin == freezed
          ? _value.statusLogin
          : statusLogin // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      showErrorMessage: showErrorMessage == freezed
          ? _value.showErrorMessage
          : showErrorMessage // ignore: cast_nullable_to_non_nullable
              as bool,
      showLoginErrorMessage: showLoginErrorMessage == freezed
          ? _value.showLoginErrorMessage
          : showLoginErrorMessage // ignore: cast_nullable_to_non_nullable
              as bool,
      changePasswordFailureOrSuccessOption: changePasswordFailureOrSuccessOption ==
              freezed
          ? _value.changePasswordFailureOrSuccessOption
          : changePasswordFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$ChangePasswordStateCopyWith<$Res>
    implements $ChangePasswordStateCopyWith<$Res> {
  factory _$ChangePasswordStateCopyWith(_ChangePasswordState value,
          $Res Function(_ChangePasswordState) then) =
      __$ChangePasswordStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Password password,
      Password loginPassword,
      FormzStatus status,
      FormzStatus statusLogin,
      bool showErrorMessage,
      bool showLoginErrorMessage,
      Option<Either<AuthFailure, Unit>> changePasswordFailureOrSuccessOption});
}

/// @nodoc
class __$ChangePasswordStateCopyWithImpl<$Res>
    extends _$ChangePasswordStateCopyWithImpl<$Res>
    implements _$ChangePasswordStateCopyWith<$Res> {
  __$ChangePasswordStateCopyWithImpl(
      _ChangePasswordState _value, $Res Function(_ChangePasswordState) _then)
      : super(_value, (v) => _then(v as _ChangePasswordState));

  @override
  _ChangePasswordState get _value => super._value as _ChangePasswordState;

  @override
  $Res call({
    Object? password = freezed,
    Object? loginPassword = freezed,
    Object? status = freezed,
    Object? statusLogin = freezed,
    Object? showErrorMessage = freezed,
    Object? showLoginErrorMessage = freezed,
    Object? changePasswordFailureOrSuccessOption = freezed,
  }) {
    return _then(_ChangePasswordState(
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      loginPassword: loginPassword == freezed
          ? _value.loginPassword
          : loginPassword // ignore: cast_nullable_to_non_nullable
              as Password,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      statusLogin: statusLogin == freezed
          ? _value.statusLogin
          : statusLogin // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      showErrorMessage: showErrorMessage == freezed
          ? _value.showErrorMessage
          : showErrorMessage // ignore: cast_nullable_to_non_nullable
              as bool,
      showLoginErrorMessage: showLoginErrorMessage == freezed
          ? _value.showLoginErrorMessage
          : showLoginErrorMessage // ignore: cast_nullable_to_non_nullable
              as bool,
      changePasswordFailureOrSuccessOption: changePasswordFailureOrSuccessOption ==
              freezed
          ? _value.changePasswordFailureOrSuccessOption
          : changePasswordFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc
class _$_ChangePasswordState implements _ChangePasswordState {
  const _$_ChangePasswordState(
      {required this.password,
      required this.loginPassword,
      required this.status,
      required this.statusLogin,
      required this.showErrorMessage,
      required this.showLoginErrorMessage,
      required this.changePasswordFailureOrSuccessOption});

  @override
  final Password password;
  @override
  final Password loginPassword;
  @override
  final FormzStatus status;
  @override
  final FormzStatus statusLogin;
  @override
  final bool showErrorMessage;
  @override
  final bool showLoginErrorMessage;
  @override
  final Option<Either<AuthFailure, Unit>> changePasswordFailureOrSuccessOption;

  @override
  String toString() {
    return 'ChangePasswordState(password: $password, loginPassword: $loginPassword, status: $status, statusLogin: $statusLogin, showErrorMessage: $showErrorMessage, showLoginErrorMessage: $showLoginErrorMessage, changePasswordFailureOrSuccessOption: $changePasswordFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangePasswordState &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.loginPassword, loginPassword) ||
                const DeepCollectionEquality()
                    .equals(other.loginPassword, loginPassword)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.statusLogin, statusLogin) ||
                const DeepCollectionEquality()
                    .equals(other.statusLogin, statusLogin)) &&
            (identical(other.showErrorMessage, showErrorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessage, showErrorMessage)) &&
            (identical(other.showLoginErrorMessage, showLoginErrorMessage) ||
                const DeepCollectionEquality().equals(
                    other.showLoginErrorMessage, showLoginErrorMessage)) &&
            (identical(other.changePasswordFailureOrSuccessOption,
                    changePasswordFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.changePasswordFailureOrSuccessOption,
                    changePasswordFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(loginPassword) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(statusLogin) ^
      const DeepCollectionEquality().hash(showErrorMessage) ^
      const DeepCollectionEquality().hash(showLoginErrorMessage) ^
      const DeepCollectionEquality().hash(changePasswordFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$ChangePasswordStateCopyWith<_ChangePasswordState> get copyWith =>
      __$ChangePasswordStateCopyWithImpl<_ChangePasswordState>(
          this, _$identity);
}

abstract class _ChangePasswordState implements ChangePasswordState {
  const factory _ChangePasswordState(
      {required Password password,
      required Password loginPassword,
      required FormzStatus status,
      required FormzStatus statusLogin,
      required bool showErrorMessage,
      required bool showLoginErrorMessage,
      required Option<Either<AuthFailure, Unit>>
          changePasswordFailureOrSuccessOption}) = _$_ChangePasswordState;

  @override
  Password get password => throw _privateConstructorUsedError;
  @override
  Password get loginPassword => throw _privateConstructorUsedError;
  @override
  FormzStatus get status => throw _privateConstructorUsedError;
  @override
  FormzStatus get statusLogin => throw _privateConstructorUsedError;
  @override
  bool get showErrorMessage => throw _privateConstructorUsedError;
  @override
  bool get showLoginErrorMessage => throw _privateConstructorUsedError;
  @override
  Option<Either<AuthFailure, Unit>> get changePasswordFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ChangePasswordStateCopyWith<_ChangePasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}
