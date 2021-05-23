// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'connectivity_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ConnectivityStatusTearOff {
  const _$ConnectivityStatusTearOff();

  _ConnectivityStatus call({required bool active, required bool viewMessage}) {
    return _ConnectivityStatus(
      active: active,
      viewMessage: viewMessage,
    );
  }
}

/// @nodoc
const $ConnectivityStatus = _$ConnectivityStatusTearOff();

/// @nodoc
mixin _$ConnectivityStatus {
  bool get active => throw _privateConstructorUsedError;
  bool get viewMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ConnectivityStatusCopyWith<ConnectivityStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConnectivityStatusCopyWith<$Res> {
  factory $ConnectivityStatusCopyWith(
          ConnectivityStatus value, $Res Function(ConnectivityStatus) then) =
      _$ConnectivityStatusCopyWithImpl<$Res>;
  $Res call({bool active, bool viewMessage});
}

/// @nodoc
class _$ConnectivityStatusCopyWithImpl<$Res>
    implements $ConnectivityStatusCopyWith<$Res> {
  _$ConnectivityStatusCopyWithImpl(this._value, this._then);

  final ConnectivityStatus _value;
  // ignore: unused_field
  final $Res Function(ConnectivityStatus) _then;

  @override
  $Res call({
    Object? active = freezed,
    Object? viewMessage = freezed,
  }) {
    return _then(_value.copyWith(
      active: active == freezed
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      viewMessage: viewMessage == freezed
          ? _value.viewMessage
          : viewMessage // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$ConnectivityStatusCopyWith<$Res>
    implements $ConnectivityStatusCopyWith<$Res> {
  factory _$ConnectivityStatusCopyWith(
          _ConnectivityStatus value, $Res Function(_ConnectivityStatus) then) =
      __$ConnectivityStatusCopyWithImpl<$Res>;
  @override
  $Res call({bool active, bool viewMessage});
}

/// @nodoc
class __$ConnectivityStatusCopyWithImpl<$Res>
    extends _$ConnectivityStatusCopyWithImpl<$Res>
    implements _$ConnectivityStatusCopyWith<$Res> {
  __$ConnectivityStatusCopyWithImpl(
      _ConnectivityStatus _value, $Res Function(_ConnectivityStatus) _then)
      : super(_value, (v) => _then(v as _ConnectivityStatus));

  @override
  _ConnectivityStatus get _value => super._value as _ConnectivityStatus;

  @override
  $Res call({
    Object? active = freezed,
    Object? viewMessage = freezed,
  }) {
    return _then(_ConnectivityStatus(
      active: active == freezed
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      viewMessage: viewMessage == freezed
          ? _value.viewMessage
          : viewMessage // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
class _$_ConnectivityStatus implements _ConnectivityStatus {
  const _$_ConnectivityStatus(
      {required this.active, required this.viewMessage});

  @override
  final bool active;
  @override
  final bool viewMessage;

  @override
  String toString() {
    return 'ConnectivityStatus(active: $active, viewMessage: $viewMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ConnectivityStatus &&
            (identical(other.active, active) ||
                const DeepCollectionEquality().equals(other.active, active)) &&
            (identical(other.viewMessage, viewMessage) ||
                const DeepCollectionEquality()
                    .equals(other.viewMessage, viewMessage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(active) ^
      const DeepCollectionEquality().hash(viewMessage);

  @JsonKey(ignore: true)
  @override
  _$ConnectivityStatusCopyWith<_ConnectivityStatus> get copyWith =>
      __$ConnectivityStatusCopyWithImpl<_ConnectivityStatus>(this, _$identity);
}

abstract class _ConnectivityStatus implements ConnectivityStatus {
  const factory _ConnectivityStatus(
      {required bool active,
      required bool viewMessage}) = _$_ConnectivityStatus;

  @override
  bool get active => throw _privateConstructorUsedError;
  @override
  bool get viewMessage => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ConnectivityStatusCopyWith<_ConnectivityStatus> get copyWith =>
      throw _privateConstructorUsedError;
}
