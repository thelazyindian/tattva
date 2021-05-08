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

  _OnNameChanged onNameChanged({required String value}) {
    return _OnNameChanged(
      value: value,
    );
  }

  _UpdatedProfile updatedProfile() {
    return const _UpdatedProfile();
  }
}

/// @nodoc
const $EditProfileEvent = _$EditProfileEventTearOff();

/// @nodoc
mixin _$EditProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String value) onNameChanged,
    required TResult Function() updatedProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String value)? onNameChanged,
    TResult Function()? updatedProfile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnNameChanged value) onNameChanged,
    required TResult Function(_UpdatedProfile value) updatedProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnNameChanged value)? onNameChanged,
    TResult Function(_UpdatedProfile value)? updatedProfile,
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
    required TResult Function(String value) onNameChanged,
    required TResult Function() updatedProfile,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String value)? onNameChanged,
    TResult Function()? updatedProfile,
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
    required TResult Function(_OnNameChanged value) onNameChanged,
    required TResult Function(_UpdatedProfile value) updatedProfile,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnNameChanged value)? onNameChanged,
    TResult Function(_UpdatedProfile value)? updatedProfile,
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
    required TResult Function(String value) onNameChanged,
    required TResult Function() updatedProfile,
  }) {
    return onNameChanged(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String value)? onNameChanged,
    TResult Function()? updatedProfile,
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
    required TResult Function(_OnNameChanged value) onNameChanged,
    required TResult Function(_UpdatedProfile value) updatedProfile,
  }) {
    return onNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnNameChanged value)? onNameChanged,
    TResult Function(_UpdatedProfile value)? updatedProfile,
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
    required TResult Function(String value) onNameChanged,
    required TResult Function() updatedProfile,
  }) {
    return updatedProfile();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String value)? onNameChanged,
    TResult Function()? updatedProfile,
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
    required TResult Function(_OnNameChanged value) onNameChanged,
    required TResult Function(_UpdatedProfile value) updatedProfile,
  }) {
    return updatedProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnNameChanged value)? onNameChanged,
    TResult Function(_UpdatedProfile value)? updatedProfile,
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
class _$EditProfileStateTearOff {
  const _$EditProfileStateTearOff();

  _EditProfileState call(
      {required Option<Either<Failure, User>> updateProfileOption,
      required String displayName,
      required bool updating}) {
    return _EditProfileState(
      updateProfileOption: updateProfileOption,
      displayName: displayName,
      updating: updating,
    );
  }
}

/// @nodoc
const $EditProfileState = _$EditProfileStateTearOff();

/// @nodoc
mixin _$EditProfileState {
  Option<Either<Failure, User>> get updateProfileOption =>
      throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;
  bool get updating => throw _privateConstructorUsedError;

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
      String displayName,
      bool updating});
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
    Object? displayName = freezed,
    Object? updating = freezed,
  }) {
    return _then(_value.copyWith(
      updateProfileOption: updateProfileOption == freezed
          ? _value.updateProfileOption
          : updateProfileOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, User>>,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      updating: updating == freezed
          ? _value.updating
          : updating // ignore: cast_nullable_to_non_nullable
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
      String displayName,
      bool updating});
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
    Object? displayName = freezed,
    Object? updating = freezed,
  }) {
    return _then(_EditProfileState(
      updateProfileOption: updateProfileOption == freezed
          ? _value.updateProfileOption
          : updateProfileOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, User>>,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      updating: updating == freezed
          ? _value.updating
          : updating // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
class _$_EditProfileState implements _EditProfileState {
  const _$_EditProfileState(
      {required this.updateProfileOption,
      required this.displayName,
      required this.updating});

  @override
  final Option<Either<Failure, User>> updateProfileOption;
  @override
  final String displayName;
  @override
  final bool updating;

  @override
  String toString() {
    return 'EditProfileState(updateProfileOption: $updateProfileOption, displayName: $displayName, updating: $updating)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EditProfileState &&
            (identical(other.updateProfileOption, updateProfileOption) ||
                const DeepCollectionEquality()
                    .equals(other.updateProfileOption, updateProfileOption)) &&
            (identical(other.displayName, displayName) ||
                const DeepCollectionEquality()
                    .equals(other.displayName, displayName)) &&
            (identical(other.updating, updating) ||
                const DeepCollectionEquality()
                    .equals(other.updating, updating)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(updateProfileOption) ^
      const DeepCollectionEquality().hash(displayName) ^
      const DeepCollectionEquality().hash(updating);

  @JsonKey(ignore: true)
  @override
  _$EditProfileStateCopyWith<_EditProfileState> get copyWith =>
      __$EditProfileStateCopyWithImpl<_EditProfileState>(this, _$identity);
}

abstract class _EditProfileState implements EditProfileState {
  const factory _EditProfileState(
      {required Option<Either<Failure, User>> updateProfileOption,
      required String displayName,
      required bool updating}) = _$_EditProfileState;

  @override
  Option<Either<Failure, User>> get updateProfileOption =>
      throw _privateConstructorUsedError;
  @override
  String get displayName => throw _privateConstructorUsedError;
  @override
  bool get updating => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$EditProfileStateCopyWith<_EditProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}
