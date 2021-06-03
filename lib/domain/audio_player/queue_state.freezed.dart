// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'queue_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

QueueState _$QueueStateFromJson(Map<String, dynamic> json) {
  return _QueueState.fromJson(json);
}

/// @nodoc
class _$QueueStateTearOff {
  const _$QueueStateTearOff();

  _QueueState call(List<MediaItem>? queue, MediaItem? mediaItem) {
    return _QueueState(
      queue,
      mediaItem,
    );
  }

  QueueState fromJson(Map<String, Object> json) {
    return QueueState.fromJson(json);
  }
}

/// @nodoc
const $QueueState = _$QueueStateTearOff();

/// @nodoc
mixin _$QueueState {
  List<MediaItem>? get queue => throw _privateConstructorUsedError;
  MediaItem? get mediaItem => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QueueStateCopyWith<QueueState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QueueStateCopyWith<$Res> {
  factory $QueueStateCopyWith(
          QueueState value, $Res Function(QueueState) then) =
      _$QueueStateCopyWithImpl<$Res>;
  $Res call({List<MediaItem>? queue, MediaItem? mediaItem});
}

/// @nodoc
class _$QueueStateCopyWithImpl<$Res> implements $QueueStateCopyWith<$Res> {
  _$QueueStateCopyWithImpl(this._value, this._then);

  final QueueState _value;
  // ignore: unused_field
  final $Res Function(QueueState) _then;

  @override
  $Res call({
    Object? queue = freezed,
    Object? mediaItem = freezed,
  }) {
    return _then(_value.copyWith(
      queue: queue == freezed
          ? _value.queue
          : queue // ignore: cast_nullable_to_non_nullable
              as List<MediaItem>?,
      mediaItem: mediaItem == freezed
          ? _value.mediaItem
          : mediaItem // ignore: cast_nullable_to_non_nullable
              as MediaItem?,
    ));
  }
}

/// @nodoc
abstract class _$QueueStateCopyWith<$Res> implements $QueueStateCopyWith<$Res> {
  factory _$QueueStateCopyWith(
          _QueueState value, $Res Function(_QueueState) then) =
      __$QueueStateCopyWithImpl<$Res>;
  @override
  $Res call({List<MediaItem>? queue, MediaItem? mediaItem});
}

/// @nodoc
class __$QueueStateCopyWithImpl<$Res> extends _$QueueStateCopyWithImpl<$Res>
    implements _$QueueStateCopyWith<$Res> {
  __$QueueStateCopyWithImpl(
      _QueueState _value, $Res Function(_QueueState) _then)
      : super(_value, (v) => _then(v as _QueueState));

  @override
  _QueueState get _value => super._value as _QueueState;

  @override
  $Res call({
    Object? queue = freezed,
    Object? mediaItem = freezed,
  }) {
    return _then(_QueueState(
      queue == freezed
          ? _value.queue
          : queue // ignore: cast_nullable_to_non_nullable
              as List<MediaItem>?,
      mediaItem == freezed
          ? _value.mediaItem
          : mediaItem // ignore: cast_nullable_to_non_nullable
              as MediaItem?,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_QueueState implements _QueueState {
  const _$_QueueState(this.queue, this.mediaItem);

  factory _$_QueueState.fromJson(Map<String, dynamic> json) =>
      _$_$_QueueStateFromJson(json);

  @override
  final List<MediaItem>? queue;
  @override
  final MediaItem? mediaItem;

  @override
  String toString() {
    return 'QueueState(queue: $queue, mediaItem: $mediaItem)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _QueueState &&
            (identical(other.queue, queue) ||
                const DeepCollectionEquality().equals(other.queue, queue)) &&
            (identical(other.mediaItem, mediaItem) ||
                const DeepCollectionEquality()
                    .equals(other.mediaItem, mediaItem)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(queue) ^
      const DeepCollectionEquality().hash(mediaItem);

  @JsonKey(ignore: true)
  @override
  _$QueueStateCopyWith<_QueueState> get copyWith =>
      __$QueueStateCopyWithImpl<_QueueState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_QueueStateToJson(this);
  }
}

abstract class _QueueState implements QueueState {
  const factory _QueueState(List<MediaItem>? queue, MediaItem? mediaItem) =
      _$_QueueState;

  factory _QueueState.fromJson(Map<String, dynamic> json) =
      _$_QueueState.fromJson;

  @override
  List<MediaItem>? get queue => throw _privateConstructorUsedError;
  @override
  MediaItem? get mediaItem => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$QueueStateCopyWith<_QueueState> get copyWith =>
      throw _privateConstructorUsedError;
}
