// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'edit_profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$EditProfileEventTearOff {
  const _$EditProfileEventTearOff();

  _Started started() {
    return const _Started();
  }

  _Reset reset() {
    return const _Reset();
  }

  _OnNameChanged onNameChanged({required String value}) {
    return _OnNameChanged(
      value: value,
    );
  }

  _UpdatedProfile updatedProfile() {
    return const _UpdatedProfile();
  }

  _SendVerificationMail sendVerificationMail() {
    return const _SendVerificationMail();
  }
}

/// @nodoc
const $EditProfileEvent = _$EditProfileEventTearOff();

/// @nodoc
mixin _$EditProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() reset,
    required TResult Function(String value) onNameChanged,
    required TResult Function() updatedProfile,
    required TResult Function() sendVerificationMail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? reset,
    TResult Function(String value)? onNameChanged,
    TResult Function()? updatedProfile,
    TResult Function()? sendVerificationMail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Reset value) reset,
    required TResult Function(_OnNameChanged value) onNameChanged,
    required TResult Function(_UpdatedProfile value) updatedProfile,
    required TResult Function(_SendVerificationMail value) sendVerificationMail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Reset value)? reset,
    TResult Function(_OnNameChanged value)? onNameChanged,
    TResult Function(_UpdatedProfile value)? updatedProfile,
    TResult Function(_SendVerificationMail value)? sendVerificationMail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditProfileEventCopyWith<$Res> {
  factory $EditProfileEventCopyWith(
          EditProfileEvent value, $Res Function(EditProfileEvent) then) =
      _$EditProfileEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$EditProfileEventCopyWithImpl<$Res>
    implements $EditProfileEventCopyWith<$Res> {
  _$EditProfileEventCopyWithImpl(this._value, this._then);

  final EditProfileEvent _value;
  // ignore: unused_field
  final $Res Function(EditProfileEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$EditProfileEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;
}

/// @nodoc
class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'EditProfileEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() reset,
    required TResult Function(String value) onNameChanged,
    required TResult Function() updatedProfile,
    required TResult Function() sendVerificationMail,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? reset,
    TResult Function(String value)? onNameChanged,
    TResult Function()? updatedProfile,
    TResult Function()? sendVerificationMail,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Reset value) reset,
    required TResult Function(_OnNameChanged value) onNameChanged,
    required TResult Function(_UpdatedProfile value) updatedProfile,
    required TResult Function(_SendVerificationMail value) sendVerificationMail,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Reset value)? reset,
    TResult Function(_OnNameChanged value)? onNameChanged,
    TResult Function(_UpdatedProfile value)? updatedProfile,
    TResult Function(_SendVerificationMail value)? sendVerificationMail,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements EditProfileEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$ResetCopyWith<$Res> {
  factory _$ResetCopyWith(_Reset value, $Res Function(_Reset) then) =
      __$ResetCopyWithImpl<$Res>;
}

/// @nodoc
class __$ResetCopyWithImpl<$Res> extends _$EditProfileEventCopyWithImpl<$Res>
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
    return 'EditProfileEvent.reset()';
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
    required TResult Function() started,
    required TResult Function() reset,
    required TResult Function(String value) onNameChanged,
    required TResult Function() updatedProfile,
    required TResult Function() sendVerificationMail,
  }) {
    return reset();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? reset,
    TResult Function(String value)? onNameChanged,
    TResult Function()? updatedProfile,
    TResult Function()? sendVerificationMail,
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
    required TResult Function(_Started value) started,
    required TResult Function(_Reset value) reset,
    required TResult Function(_OnNameChanged value) onNameChanged,
    required TResult Function(_UpdatedProfile value) updatedProfile,
    required TResult Function(_SendVerificationMail value) sendVerificationMail,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Reset value)? reset,
    TResult Function(_OnNameChanged value)? onNameChanged,
    TResult Function(_UpdatedProfile value)? updatedProfile,
    TResult Function(_SendVerificationMail value)? sendVerificationMail,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class _Reset implements EditProfileEvent {
  const factory _Reset() = _$_Reset;
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
    extends _$EditProfileEventCopyWithImpl<$Res>
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
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_OnNameChanged implements _OnNameChanged {
  const _$_OnNameChanged({required this.value});

  @override
  final String value;

  @override
  String toString() {
    return 'EditProfileEvent.onNameChanged(value: $value)';
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
    required TResult Function() started,
    required TResult Function() reset,
    required TResult Function(String value) onNameChanged,
    required TResult Function() updatedProfile,
    required TResult Function() sendVerificationMail,
  }) {
    return onNameChanged(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? reset,
    TResult Function(String value)? onNameChanged,
    TResult Function()? updatedProfile,
    TResult Function()? sendVerificationMail,
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
    required TResult Function(_Started value) started,
    required TResult Function(_Reset value) reset,
    required TResult Function(_OnNameChanged value) onNameChanged,
    required TResult Function(_UpdatedProfile value) updatedProfile,
    required TResult Function(_SendVerificationMail value) sendVerificationMail,
  }) {
    return onNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Reset value)? reset,
    TResult Function(_OnNameChanged value)? onNameChanged,
    TResult Function(_UpdatedProfile value)? updatedProfile,
    TResult Function(_SendVerificationMail value)? sendVerificationMail,
    required TResult orElse(),
  }) {
    if (onNameChanged != null) {
      return onNameChanged(this);
    }
    return orElse();
  }
}

abstract class _OnNameChanged implements EditProfileEvent {
  const factory _OnNameChanged({required String value}) = _$_OnNameChanged;

  String get value => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$OnNameChangedCopyWith<_OnNameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UpdatedProfileCopyWith<$Res> {
  factory _$UpdatedProfileCopyWith(
          _UpdatedProfile value, $Res Function(_UpdatedProfile) then) =
      __$UpdatedProfileCopyWithImpl<$Res>;
}

/// @nodoc
class __$UpdatedProfileCopyWithImpl<$Res>
    extends _$EditProfileEventCopyWithImpl<$Res>
    implements _$UpdatedProfileCopyWith<$Res> {
  __$UpdatedProfileCopyWithImpl(
      _UpdatedProfile _value, $Res Function(_UpdatedProfile) _then)
      : super(_value, (v) => _then(v as _UpdatedProfile));

  @override
  _UpdatedProfile get _value => super._value as _UpdatedProfile;
}

/// @nodoc
class _$_UpdatedProfile implements _UpdatedProfile {
  const _$_UpdatedProfile();

  @override
  String toString() {
    return 'EditProfileEvent.updatedProfile()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _UpdatedProfile);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() reset,
    required TResult Function(String value) onNameChanged,
    required TResult Function() updatedProfile,
    required TResult Function() sendVerificationMail,
  }) {
    return updatedProfile();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? reset,
    TResult Function(String value)? onNameChanged,
    TResult Function()? updatedProfile,
    TResult Function()? sendVerificationMail,
    required TResult orElse(),
  }) {
    if (updatedProfile != null) {
      return updatedProfile();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Reset value) reset,
    required TResult Function(_OnNameChanged value) onNameChanged,
    required TResult Function(_UpdatedProfile value) updatedProfile,
    required TResult Function(_SendVerificationMail value) sendVerificationMail,
  }) {
    return updatedProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Reset value)? reset,
    TResult Function(_OnNameChanged value)? onNameChanged,
    TResult Function(_UpdatedProfile value)? updatedProfile,
    TResult Function(_SendVerificationMail value)? sendVerificationMail,
    required TResult orElse(),
  }) {
    if (updatedProfile != null) {
      return updatedProfile(this);
    }
    return orElse();
  }
}

abstract class _UpdatedProfile implements EditProfileEvent {
  const factory _UpdatedProfile() = _$_UpdatedProfile;
}

/// @nodoc
abstract class _$SendVerificationMailCopyWith<$Res> {
  factory _$SendVerificationMailCopyWith(_SendVerificationMail value,
          $Res Function(_SendVerificationMail) then) =
      __$SendVerificationMailCopyWithImpl<$Res>;
}

/// @nodoc
class __$SendVerificationMailCopyWithImpl<$Res>
    extends _$EditProfileEventCopyWithImpl<$Res>
    implements _$SendVerificationMailCopyWith<$Res> {
  __$SendVerificationMailCopyWithImpl(
      _SendVerificationMail _value, $Res Function(_SendVerificationMail) _then)
      : super(_value, (v) => _then(v as _SendVerificationMail));

  @override
  _SendVerificationMail get _value => super._value as _SendVerificationMail;
}

/// @nodoc
class _$_SendVerificationMail implements _SendVerificationMail {
  const _$_SendVerificationMail();

  @override
  String toString() {
    return 'EditProfileEvent.sendVerificationMail()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SendVerificationMail);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() reset,
    required TResult Function(String value) onNameChanged,
    required TResult Function() updatedProfile,
    required TResult Function() sendVerificationMail,
  }) {
    return sendVerificationMail();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? reset,
    TResult Function(String value)? onNameChanged,
    TResult Function()? updatedProfile,
    TResult Function()? sendVerificationMail,
    required TResult orElse(),
  }) {
    if (sendVerificationMail != null) {
      return sendVerificationMail();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Reset value) reset,
    required TResult Function(_OnNameChanged value) onNameChanged,
    required TResult Function(_UpdatedProfile value) updatedProfile,
    required TResult Function(_SendVerificationMail value) sendVerificationMail,
  }) {
    return sendVerificationMail(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Reset value)? reset,
    TResult Function(_OnNameChanged value)? onNameChanged,
    TResult Function(_UpdatedProfile value)? updatedProfile,
    TResult Function(_SendVerificationMail value)? sendVerificationMail,
    required TResult orElse(),
  }) {
    if (sendVerificationMail != null) {
      return sendVerificationMail(this);
    }
    return orElse();
  }
}

abstract class _SendVerificationMail implements EditProfileEvent {
  const factory _SendVerificationMail() = _$_SendVerificationMail;
}

/// @nodoc
class _$EditProfileStateTearOff {
  const _$EditProfileStateTearOff();

  _EditProfileState call(
      {required Option<Either<Failure, User>> updateProfileOption,
      required Option<Either<Failure, Unit>> sendingMailOption,
      required String displayName,
      required bool updating,
      required bool sendingMail}) {
    return _EditProfileState(
      updateProfileOption: updateProfileOption,
      sendingMailOption: sendingMailOption,
      displayName: displayName,
      updating: updating,
      sendingMail: sendingMail,
    );
  }
}

/// @nodoc
const $EditProfileState = _$EditProfileStateTearOff();

/// @nodoc
mixin _$EditProfileState {
  Option<Either<Failure, User>> get updateProfileOption =>
      throw _privateConstructorUsedError;
  Option<Either<Failure, Unit>> get sendingMailOption =>
      throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;
  bool get updating => throw _privateConstructorUsedError;
  bool get sendingMail => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EditProfileStateCopyWith<EditProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditProfileStateCopyWith<$Res> {
  factory $EditProfileStateCopyWith(
          EditProfileState value, $Res Function(EditProfileState) then) =
      _$EditProfileStateCopyWithImpl<$Res>;
  $Res call(
      {Option<Either<Failure, User>> updateProfileOption,
      Option<Either<Failure, Unit>> sendingMailOption,
      String displayName,
      bool updating,
      bool sendingMail});
}

/// @nodoc
class _$EditProfileStateCopyWithImpl<$Res>
    implements $EditProfileStateCopyWith<$Res> {
  _$EditProfileStateCopyWithImpl(this._value, this._then);

  final EditProfileState _value;
  // ignore: unused_field
  final $Res Function(EditProfileState) _then;

  @override
  $Res call({
    Object? updateProfileOption = freezed,
    Object? sendingMailOption = freezed,
    Object? displayName = freezed,
    Object? updating = freezed,
    Object? sendingMail = freezed,
  }) {
    return _then(_value.copyWith(
      updateProfileOption: updateProfileOption == freezed
          ? _value.updateProfileOption
          : updateProfileOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, User>>,
      sendingMailOption: sendingMailOption == freezed
          ? _value.sendingMailOption
          : sendingMailOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, Unit>>,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      updating: updating == freezed
          ? _value.updating
          : updating // ignore: cast_nullable_to_non_nullable
              as bool,
      sendingMail: sendingMail == freezed
          ? _value.sendingMail
          : sendingMail // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$EditProfileStateCopyWith<$Res>
    implements $EditProfileStateCopyWith<$Res> {
  factory _$EditProfileStateCopyWith(
          _EditProfileState value, $Res Function(_EditProfileState) then) =
      __$EditProfileStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Option<Either<Failure, User>> updateProfileOption,
      Option<Either<Failure, Unit>> sendingMailOption,
      String displayName,
      bool updating,
      bool sendingMail});
}

/// @nodoc
class __$EditProfileStateCopyWithImpl<$Res>
    extends _$EditProfileStateCopyWithImpl<$Res>
    implements _$EditProfileStateCopyWith<$Res> {
  __$EditProfileStateCopyWithImpl(
      _EditProfileState _value, $Res Function(_EditProfileState) _then)
      : super(_value, (v) => _then(v as _EditProfileState));

  @override
  _EditProfileState get _value => super._value as _EditProfileState;

  @override
  $Res call({
    Object? updateProfileOption = freezed,
    Object? sendingMailOption = freezed,
    Object? displayName = freezed,
    Object? updating = freezed,
    Object? sendingMail = freezed,
  }) {
    return _then(_EditProfileState(
      updateProfileOption: updateProfileOption == freezed
          ? _value.updateProfileOption
          : updateProfileOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, User>>,
      sendingMailOption: sendingMailOption == freezed
          ? _value.sendingMailOption
          : sendingMailOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, Unit>>,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      updating: updating == freezed
          ? _value.updating
          : updating // ignore: cast_nullable_to_non_nullable
              as bool,
      sendingMail: sendingMail == freezed
          ? _value.sendingMail
          : sendingMail // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
class _$_EditProfileState implements _EditProfileState {
  const _$_EditProfileState(
      {required this.updateProfileOption,
      required this.sendingMailOption,
      required this.displayName,
      required this.updating,
      required this.sendingMail});

  @override
  final Option<Either<Failure, User>> updateProfileOption;
  @override
  final Option<Either<Failure, Unit>> sendingMailOption;
  @override
  final String displayName;
  @override
  final bool updating;
  @override
  final bool sendingMail;

  @override
  String toString() {
    return 'EditProfileState(updateProfileOption: $updateProfileOption, sendingMailOption: $sendingMailOption, displayName: $displayName, updating: $updating, sendingMail: $sendingMail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EditProfileState &&
            (identical(other.updateProfileOption, updateProfileOption) ||
                const DeepCollectionEquality()
                    .equals(other.updateProfileOption, updateProfileOption)) &&
            (identical(other.sendingMailOption, sendingMailOption) ||
                const DeepCollectionEquality()
                    .equals(other.sendingMailOption, sendingMailOption)) &&
            (identical(other.displayName, displayName) ||
                const DeepCollectionEquality()
                    .equals(other.displayName, displayName)) &&
            (identical(other.updating, updating) ||
                const DeepCollectionEquality()
                    .equals(other.updating, updating)) &&
            (identical(other.sendingMail, sendingMail) ||
                const DeepCollectionEquality()
                    .equals(other.sendingMail, sendingMail)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(updateProfileOption) ^
      const DeepCollectionEquality().hash(sendingMailOption) ^
      const DeepCollectionEquality().hash(displayName) ^
      const DeepCollectionEquality().hash(updating) ^
      const DeepCollectionEquality().hash(sendingMail);

  @JsonKey(ignore: true)
  @override
  _$EditProfileStateCopyWith<_EditProfileState> get copyWith =>
      __$EditProfileStateCopyWithImpl<_EditProfileState>(this, _$identity);
}

abstract class _EditProfileState implements EditProfileState {
  const factory _EditProfileState(
      {required Option<Either<Failure, User>> updateProfileOption,
      required Option<Either<Failure, Unit>> sendingMailOption,
      required String displayName,
      required bool updating,
      required bool sendingMail}) = _$_EditProfileState;

  @override
  Option<Either<Failure, User>> get updateProfileOption =>
      throw _privateConstructorUsedError;
  @override
  Option<Either<Failure, Unit>> get sendingMailOption =>
      throw _privateConstructorUsedError;
  @override
  String get displayName => throw _privateConstructorUsedError;
  @override
  bool get updating => throw _privateConstructorUsedError;
  @override
  bool get sendingMail => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$EditProfileStateCopyWith<_EditProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}
