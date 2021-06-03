// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'player_view.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PlayerView _$PlayerViewFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType'] as String) {
    case 'expanded':
      return _Expanded.fromJson(json);
    case 'collapsed':
      return _Collapsed.fromJson(json);
    case 'none':
      return _None.fromJson(json);

    default:
      throw FallThroughError();
  }
}

/// @nodoc
class _$PlayerViewTearOff {
  const _$PlayerViewTearOff();

  _Expanded expanded() {
    return const _Expanded();
  }

  _Collapsed collapsed() {
    return const _Collapsed();
  }

  _None none() {
    return const _None();
  }

  PlayerView fromJson(Map<String, Object> json) {
    return PlayerView.fromJson(json);
  }
}

/// @nodoc
const $PlayerView = _$PlayerViewTearOff();

/// @nodoc
mixin _$PlayerView {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() expanded,
    required TResult Function() collapsed,
    required TResult Function() none,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? expanded,
    TResult Function()? collapsed,
    TResult Function()? none,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Expanded value) expanded,
    required TResult Function(_Collapsed value) collapsed,
    required TResult Function(_None value) none,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Expanded value)? expanded,
    TResult Function(_Collapsed value)? collapsed,
    TResult Function(_None value)? none,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerViewCopyWith<$Res> {
  factory $PlayerViewCopyWith(
          PlayerView value, $Res Function(PlayerView) then) =
      _$PlayerViewCopyWithImpl<$Res>;
}

/// @nodoc
class _$PlayerViewCopyWithImpl<$Res> implements $PlayerViewCopyWith<$Res> {
  _$PlayerViewCopyWithImpl(this._value, this._then);

  final PlayerView _value;
  // ignore: unused_field
  final $Res Function(PlayerView) _then;
}

/// @nodoc
abstract class _$ExpandedCopyWith<$Res> {
  factory _$ExpandedCopyWith(_Expanded value, $Res Function(_Expanded) then) =
      __$ExpandedCopyWithImpl<$Res>;
}

/// @nodoc
class __$ExpandedCopyWithImpl<$Res> extends _$PlayerViewCopyWithImpl<$Res>
    implements _$ExpandedCopyWith<$Res> {
  __$ExpandedCopyWithImpl(_Expanded _value, $Res Function(_Expanded) _then)
      : super(_value, (v) => _then(v as _Expanded));

  @override
  _Expanded get _value => super._value as _Expanded;
}

@JsonSerializable()

/// @nodoc
class _$_Expanded implements _Expanded {
  const _$_Expanded();

  factory _$_Expanded.fromJson(Map<String, dynamic> json) =>
      _$_$_ExpandedFromJson(json);

  @override
  String toString() {
    return 'PlayerView.expanded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Expanded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() expanded,
    required TResult Function() collapsed,
    required TResult Function() none,
  }) {
    return expanded();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? expanded,
    TResult Function()? collapsed,
    TResult Function()? none,
    required TResult orElse(),
  }) {
    if (expanded != null) {
      return expanded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Expanded value) expanded,
    required TResult Function(_Collapsed value) collapsed,
    required TResult Function(_None value) none,
  }) {
    return expanded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Expanded value)? expanded,
    TResult Function(_Collapsed value)? collapsed,
    TResult Function(_None value)? none,
    required TResult orElse(),
  }) {
    if (expanded != null) {
      return expanded(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ExpandedToJson(this)..['runtimeType'] = 'expanded';
  }
}

abstract class _Expanded implements PlayerView {
  const factory _Expanded() = _$_Expanded;

  factory _Expanded.fromJson(Map<String, dynamic> json) = _$_Expanded.fromJson;
}

/// @nodoc
abstract class _$CollapsedCopyWith<$Res> {
  factory _$CollapsedCopyWith(
          _Collapsed value, $Res Function(_Collapsed) then) =
      __$CollapsedCopyWithImpl<$Res>;
}

/// @nodoc
class __$CollapsedCopyWithImpl<$Res> extends _$PlayerViewCopyWithImpl<$Res>
    implements _$CollapsedCopyWith<$Res> {
  __$CollapsedCopyWithImpl(_Collapsed _value, $Res Function(_Collapsed) _then)
      : super(_value, (v) => _then(v as _Collapsed));

  @override
  _Collapsed get _value => super._value as _Collapsed;
}

@JsonSerializable()

/// @nodoc
class _$_Collapsed implements _Collapsed {
  const _$_Collapsed();

  factory _$_Collapsed.fromJson(Map<String, dynamic> json) =>
      _$_$_CollapsedFromJson(json);

  @override
  String toString() {
    return 'PlayerView.collapsed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Collapsed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() expanded,
    required TResult Function() collapsed,
    required TResult Function() none,
  }) {
    return collapsed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? expanded,
    TResult Function()? collapsed,
    TResult Function()? none,
    required TResult orElse(),
  }) {
    if (collapsed != null) {
      return collapsed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Expanded value) expanded,
    required TResult Function(_Collapsed value) collapsed,
    required TResult Function(_None value) none,
  }) {
    return collapsed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Expanded value)? expanded,
    TResult Function(_Collapsed value)? collapsed,
    TResult Function(_None value)? none,
    required TResult orElse(),
  }) {
    if (collapsed != null) {
      return collapsed(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CollapsedToJson(this)..['runtimeType'] = 'collapsed';
  }
}

abstract class _Collapsed implements PlayerView {
  const factory _Collapsed() = _$_Collapsed;

  factory _Collapsed.fromJson(Map<String, dynamic> json) =
      _$_Collapsed.fromJson;
}

/// @nodoc
abstract class _$NoneCopyWith<$Res> {
  factory _$NoneCopyWith(_None value, $Res Function(_None) then) =
      __$NoneCopyWithImpl<$Res>;
}

/// @nodoc
class __$NoneCopyWithImpl<$Res> extends _$PlayerViewCopyWithImpl<$Res>
    implements _$NoneCopyWith<$Res> {
  __$NoneCopyWithImpl(_None _value, $Res Function(_None) _then)
      : super(_value, (v) => _then(v as _None));

  @override
  _None get _value => super._value as _None;
}

@JsonSerializable()

/// @nodoc
class _$_None implements _None {
  const _$_None();

  factory _$_None.fromJson(Map<String, dynamic> json) =>
      _$_$_NoneFromJson(json);

  @override
  String toString() {
    return 'PlayerView.none()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _None);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() expanded,
    required TResult Function() collapsed,
    required TResult Function() none,
  }) {
    return none();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? expanded,
    TResult Function()? collapsed,
    TResult Function()? none,
    required TResult orElse(),
  }) {
    if (none != null) {
      return none();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Expanded value) expanded,
    required TResult Function(_Collapsed value) collapsed,
    required TResult Function(_None value) none,
  }) {
    return none(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Expanded value)? expanded,
    TResult Function(_Collapsed value)? collapsed,
    TResult Function(_None value)? none,
    required TResult orElse(),
  }) {
    if (none != null) {
      return none(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_NoneToJson(this)..['runtimeType'] = 'none';
  }
}

abstract class _None implements PlayerView {
  const factory _None() = _$_None;

  factory _None.fromJson(Map<String, dynamic> json) = _$_None.fromJson;
}
