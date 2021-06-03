// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'media_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MediaState _$MediaStateFromJson(Map<String, dynamic> json) {
  return _MediaState.fromJson(json);
}

/// @nodoc
class _$MediaStateTearOff {
  const _$MediaStateTearOff();

  _MediaState call(MediaItem? mediaItem, Duration position) {
    return _MediaState(
      mediaItem,
      position,
    );
  }

  MediaState fromJson(Map<String, Object> json) {
    return MediaState.fromJson(json);
  }
}

/// @nodoc
const $MediaState = _$MediaStateTearOff();

/// @nodoc
mixin _$MediaState {
  MediaItem? get mediaItem => throw _privateConstructorUsedError;
  Duration get position => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MediaStateCopyWith<MediaState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaStateCopyWith<$Res> {
  factory $MediaStateCopyWith(
          MediaState value, $Res Function(MediaState) then) =
      _$MediaStateCopyWithImpl<$Res>;
  $Res call({MediaItem? mediaItem, Duration position});
}

/// @nodoc
class _$MediaStateCopyWithImpl<$Res> implements $MediaStateCopyWith<$Res> {
  _$MediaStateCopyWithImpl(this._value, this._then);

  final MediaState _value;
  // ignore: unused_field
  final $Res Function(MediaState) _then;

  @override
  $Res call({
    Object? mediaItem = freezed,
    Object? position = freezed,
  }) {
    return _then(_value.copyWith(
      mediaItem: mediaItem == freezed
          ? _value.mediaItem
          : mediaItem // ignore: cast_nullable_to_non_nullable
              as MediaItem?,
      position: position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc
abstract class _$MediaStateCopyWith<$Res> implements $MediaStateCopyWith<$Res> {
  factory _$MediaStateCopyWith(
          _MediaState value, $Res Function(_MediaState) then) =
      __$MediaStateCopyWithImpl<$Res>;
  @override
  $Res call({MediaItem? mediaItem, Duration position});
}

/// @nodoc
class __$MediaStateCopyWithImpl<$Res> extends _$MediaStateCopyWithImpl<$Res>
    implements _$MediaStateCopyWith<$Res> {
  __$MediaStateCopyWithImpl(
      _MediaState _value, $Res Function(_MediaState) _then)
      : super(_value, (v) => _then(v as _MediaState));

  @override
  _MediaState get _value => super._value as _MediaState;

  @override
  $Res call({
    Object? mediaItem = freezed,
    Object? position = freezed,
  }) {
    return _then(_MediaState(
      mediaItem == freezed
          ? _value.mediaItem
          : mediaItem // ignore: cast_nullable_to_non_nullable
              as MediaItem?,
      position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_MediaState implements _MediaState {
  const _$_MediaState(this.mediaItem, this.position);

  factory _$_MediaState.fromJson(Map<String, dynamic> json) =>
      _$_$_MediaStateFromJson(json);

  @override
  final MediaItem? mediaItem;
  @override
  final Duration position;

  @override
  String toString() {
    return 'MediaState(mediaItem: $mediaItem, position: $position)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MediaState &&
            (identical(other.mediaItem, mediaItem) ||
                const DeepCollectionEquality()
                    .equals(other.mediaItem, mediaItem)) &&
            (identical(other.position, position) ||
                const DeepCollectionEquality()
                    .equals(other.position, position)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(mediaItem) ^
      const DeepCollectionEquality().hash(position);

  @JsonKey(ignore: true)
  @override
  _$MediaStateCopyWith<_MediaState> get copyWith =>
      __$MediaStateCopyWithImpl<_MediaState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MediaStateToJson(this);
  }
}

abstract class _MediaState implements MediaState {
  const factory _MediaState(MediaItem? mediaItem, Duration position) =
      _$_MediaState;

  factory _MediaState.fromJson(Map<String, dynamic> json) =
      _$_MediaState.fromJson;

  @override
  MediaItem? get mediaItem => throw _privateConstructorUsedError;
  @override
  Duration get position => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MediaStateCopyWith<_MediaState> get copyWith =>
      throw _privateConstructorUsedError;
}
