// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'audio_player_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AudioPlayerEventTearOff {
  const _$AudioPlayerEventTearOff();

  _Started started() {
    return const _Started();
  }

  _Reset reset() {
    return const _Reset();
  }

  _None none() {
    return const _None();
  }

  _Collapse collapse() {
    return const _Collapse();
  }

  _Expand expand() {
    return const _Expand();
  }

  _Play play() {
    return const _Play();
  }

  _UpdateQueueState updateQueueState(QueueState? queueState) {
    return _UpdateQueueState(
      queueState,
    );
  }

  _UpdateMediaState updateMediaState(MediaState? mediaState) {
    return _UpdateMediaState(
      mediaState,
    );
  }

  _UpdatePlaybackState updatePlaybackState(PlaybackState? playbackState) {
    return _UpdatePlaybackState(
      playbackState,
    );
  }

  _AudioItemClicked audioItemClicked(
      {required String categoryName,
      required List<TattvaAudio> audios,
      required int idx}) {
    return _AudioItemClicked(
      categoryName: categoryName,
      audios: audios,
      idx: idx,
    );
  }
}

/// @nodoc
const $AudioPlayerEvent = _$AudioPlayerEventTearOff();

/// @nodoc
mixin _$AudioPlayerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() reset,
    required TResult Function() none,
    required TResult Function() collapse,
    required TResult Function() expand,
    required TResult Function() play,
    required TResult Function(QueueState? queueState) updateQueueState,
    required TResult Function(MediaState? mediaState) updateMediaState,
    required TResult Function(PlaybackState? playbackState) updatePlaybackState,
    required TResult Function(
            String categoryName, List<TattvaAudio> audios, int idx)
        audioItemClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? reset,
    TResult Function()? none,
    TResult Function()? collapse,
    TResult Function()? expand,
    TResult Function()? play,
    TResult Function(QueueState? queueState)? updateQueueState,
    TResult Function(MediaState? mediaState)? updateMediaState,
    TResult Function(PlaybackState? playbackState)? updatePlaybackState,
    TResult Function(String categoryName, List<TattvaAudio> audios, int idx)?
        audioItemClicked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Reset value) reset,
    required TResult Function(_None value) none,
    required TResult Function(_Collapse value) collapse,
    required TResult Function(_Expand value) expand,
    required TResult Function(_Play value) play,
    required TResult Function(_UpdateQueueState value) updateQueueState,
    required TResult Function(_UpdateMediaState value) updateMediaState,
    required TResult Function(_UpdatePlaybackState value) updatePlaybackState,
    required TResult Function(_AudioItemClicked value) audioItemClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Reset value)? reset,
    TResult Function(_None value)? none,
    TResult Function(_Collapse value)? collapse,
    TResult Function(_Expand value)? expand,
    TResult Function(_Play value)? play,
    TResult Function(_UpdateQueueState value)? updateQueueState,
    TResult Function(_UpdateMediaState value)? updateMediaState,
    TResult Function(_UpdatePlaybackState value)? updatePlaybackState,
    TResult Function(_AudioItemClicked value)? audioItemClicked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AudioPlayerEventCopyWith<$Res> {
  factory $AudioPlayerEventCopyWith(
          AudioPlayerEvent value, $Res Function(AudioPlayerEvent) then) =
      _$AudioPlayerEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AudioPlayerEventCopyWithImpl<$Res>
    implements $AudioPlayerEventCopyWith<$Res> {
  _$AudioPlayerEventCopyWithImpl(this._value, this._then);

  final AudioPlayerEvent _value;
  // ignore: unused_field
  final $Res Function(AudioPlayerEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$AudioPlayerEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;
}

/// @nodoc
class _$_Started with DiagnosticableTreeMixin implements _Started {
  const _$_Started();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AudioPlayerEvent.started()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'AudioPlayerEvent.started'));
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
    required TResult Function() none,
    required TResult Function() collapse,
    required TResult Function() expand,
    required TResult Function() play,
    required TResult Function(QueueState? queueState) updateQueueState,
    required TResult Function(MediaState? mediaState) updateMediaState,
    required TResult Function(PlaybackState? playbackState) updatePlaybackState,
    required TResult Function(
            String categoryName, List<TattvaAudio> audios, int idx)
        audioItemClicked,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? reset,
    TResult Function()? none,
    TResult Function()? collapse,
    TResult Function()? expand,
    TResult Function()? play,
    TResult Function(QueueState? queueState)? updateQueueState,
    TResult Function(MediaState? mediaState)? updateMediaState,
    TResult Function(PlaybackState? playbackState)? updatePlaybackState,
    TResult Function(String categoryName, List<TattvaAudio> audios, int idx)?
        audioItemClicked,
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
    required TResult Function(_None value) none,
    required TResult Function(_Collapse value) collapse,
    required TResult Function(_Expand value) expand,
    required TResult Function(_Play value) play,
    required TResult Function(_UpdateQueueState value) updateQueueState,
    required TResult Function(_UpdateMediaState value) updateMediaState,
    required TResult Function(_UpdatePlaybackState value) updatePlaybackState,
    required TResult Function(_AudioItemClicked value) audioItemClicked,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Reset value)? reset,
    TResult Function(_None value)? none,
    TResult Function(_Collapse value)? collapse,
    TResult Function(_Expand value)? expand,
    TResult Function(_Play value)? play,
    TResult Function(_UpdateQueueState value)? updateQueueState,
    TResult Function(_UpdateMediaState value)? updateMediaState,
    TResult Function(_UpdatePlaybackState value)? updatePlaybackState,
    TResult Function(_AudioItemClicked value)? audioItemClicked,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AudioPlayerEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$ResetCopyWith<$Res> {
  factory _$ResetCopyWith(_Reset value, $Res Function(_Reset) then) =
      __$ResetCopyWithImpl<$Res>;
}

/// @nodoc
class __$ResetCopyWithImpl<$Res> extends _$AudioPlayerEventCopyWithImpl<$Res>
    implements _$ResetCopyWith<$Res> {
  __$ResetCopyWithImpl(_Reset _value, $Res Function(_Reset) _then)
      : super(_value, (v) => _then(v as _Reset));

  @override
  _Reset get _value => super._value as _Reset;
}

/// @nodoc
class _$_Reset with DiagnosticableTreeMixin implements _Reset {
  const _$_Reset();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AudioPlayerEvent.reset()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'AudioPlayerEvent.reset'));
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
    required TResult Function() none,
    required TResult Function() collapse,
    required TResult Function() expand,
    required TResult Function() play,
    required TResult Function(QueueState? queueState) updateQueueState,
    required TResult Function(MediaState? mediaState) updateMediaState,
    required TResult Function(PlaybackState? playbackState) updatePlaybackState,
    required TResult Function(
            String categoryName, List<TattvaAudio> audios, int idx)
        audioItemClicked,
  }) {
    return reset();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? reset,
    TResult Function()? none,
    TResult Function()? collapse,
    TResult Function()? expand,
    TResult Function()? play,
    TResult Function(QueueState? queueState)? updateQueueState,
    TResult Function(MediaState? mediaState)? updateMediaState,
    TResult Function(PlaybackState? playbackState)? updatePlaybackState,
    TResult Function(String categoryName, List<TattvaAudio> audios, int idx)?
        audioItemClicked,
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
    required TResult Function(_None value) none,
    required TResult Function(_Collapse value) collapse,
    required TResult Function(_Expand value) expand,
    required TResult Function(_Play value) play,
    required TResult Function(_UpdateQueueState value) updateQueueState,
    required TResult Function(_UpdateMediaState value) updateMediaState,
    required TResult Function(_UpdatePlaybackState value) updatePlaybackState,
    required TResult Function(_AudioItemClicked value) audioItemClicked,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Reset value)? reset,
    TResult Function(_None value)? none,
    TResult Function(_Collapse value)? collapse,
    TResult Function(_Expand value)? expand,
    TResult Function(_Play value)? play,
    TResult Function(_UpdateQueueState value)? updateQueueState,
    TResult Function(_UpdateMediaState value)? updateMediaState,
    TResult Function(_UpdatePlaybackState value)? updatePlaybackState,
    TResult Function(_AudioItemClicked value)? audioItemClicked,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class _Reset implements AudioPlayerEvent {
  const factory _Reset() = _$_Reset;
}

/// @nodoc
abstract class _$NoneCopyWith<$Res> {
  factory _$NoneCopyWith(_None value, $Res Function(_None) then) =
      __$NoneCopyWithImpl<$Res>;
}

/// @nodoc
class __$NoneCopyWithImpl<$Res> extends _$AudioPlayerEventCopyWithImpl<$Res>
    implements _$NoneCopyWith<$Res> {
  __$NoneCopyWithImpl(_None _value, $Res Function(_None) _then)
      : super(_value, (v) => _then(v as _None));

  @override
  _None get _value => super._value as _None;
}

/// @nodoc
class _$_None with DiagnosticableTreeMixin implements _None {
  const _$_None();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AudioPlayerEvent.none()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'AudioPlayerEvent.none'));
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
    required TResult Function() started,
    required TResult Function() reset,
    required TResult Function() none,
    required TResult Function() collapse,
    required TResult Function() expand,
    required TResult Function() play,
    required TResult Function(QueueState? queueState) updateQueueState,
    required TResult Function(MediaState? mediaState) updateMediaState,
    required TResult Function(PlaybackState? playbackState) updatePlaybackState,
    required TResult Function(
            String categoryName, List<TattvaAudio> audios, int idx)
        audioItemClicked,
  }) {
    return none();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? reset,
    TResult Function()? none,
    TResult Function()? collapse,
    TResult Function()? expand,
    TResult Function()? play,
    TResult Function(QueueState? queueState)? updateQueueState,
    TResult Function(MediaState? mediaState)? updateMediaState,
    TResult Function(PlaybackState? playbackState)? updatePlaybackState,
    TResult Function(String categoryName, List<TattvaAudio> audios, int idx)?
        audioItemClicked,
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
    required TResult Function(_Started value) started,
    required TResult Function(_Reset value) reset,
    required TResult Function(_None value) none,
    required TResult Function(_Collapse value) collapse,
    required TResult Function(_Expand value) expand,
    required TResult Function(_Play value) play,
    required TResult Function(_UpdateQueueState value) updateQueueState,
    required TResult Function(_UpdateMediaState value) updateMediaState,
    required TResult Function(_UpdatePlaybackState value) updatePlaybackState,
    required TResult Function(_AudioItemClicked value) audioItemClicked,
  }) {
    return none(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Reset value)? reset,
    TResult Function(_None value)? none,
    TResult Function(_Collapse value)? collapse,
    TResult Function(_Expand value)? expand,
    TResult Function(_Play value)? play,
    TResult Function(_UpdateQueueState value)? updateQueueState,
    TResult Function(_UpdateMediaState value)? updateMediaState,
    TResult Function(_UpdatePlaybackState value)? updatePlaybackState,
    TResult Function(_AudioItemClicked value)? audioItemClicked,
    required TResult orElse(),
  }) {
    if (none != null) {
      return none(this);
    }
    return orElse();
  }
}

abstract class _None implements AudioPlayerEvent {
  const factory _None() = _$_None;
}

/// @nodoc
abstract class _$CollapseCopyWith<$Res> {
  factory _$CollapseCopyWith(_Collapse value, $Res Function(_Collapse) then) =
      __$CollapseCopyWithImpl<$Res>;
}

/// @nodoc
class __$CollapseCopyWithImpl<$Res> extends _$AudioPlayerEventCopyWithImpl<$Res>
    implements _$CollapseCopyWith<$Res> {
  __$CollapseCopyWithImpl(_Collapse _value, $Res Function(_Collapse) _then)
      : super(_value, (v) => _then(v as _Collapse));

  @override
  _Collapse get _value => super._value as _Collapse;
}

/// @nodoc
class _$_Collapse with DiagnosticableTreeMixin implements _Collapse {
  const _$_Collapse();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AudioPlayerEvent.collapse()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'AudioPlayerEvent.collapse'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Collapse);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() reset,
    required TResult Function() none,
    required TResult Function() collapse,
    required TResult Function() expand,
    required TResult Function() play,
    required TResult Function(QueueState? queueState) updateQueueState,
    required TResult Function(MediaState? mediaState) updateMediaState,
    required TResult Function(PlaybackState? playbackState) updatePlaybackState,
    required TResult Function(
            String categoryName, List<TattvaAudio> audios, int idx)
        audioItemClicked,
  }) {
    return collapse();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? reset,
    TResult Function()? none,
    TResult Function()? collapse,
    TResult Function()? expand,
    TResult Function()? play,
    TResult Function(QueueState? queueState)? updateQueueState,
    TResult Function(MediaState? mediaState)? updateMediaState,
    TResult Function(PlaybackState? playbackState)? updatePlaybackState,
    TResult Function(String categoryName, List<TattvaAudio> audios, int idx)?
        audioItemClicked,
    required TResult orElse(),
  }) {
    if (collapse != null) {
      return collapse();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Reset value) reset,
    required TResult Function(_None value) none,
    required TResult Function(_Collapse value) collapse,
    required TResult Function(_Expand value) expand,
    required TResult Function(_Play value) play,
    required TResult Function(_UpdateQueueState value) updateQueueState,
    required TResult Function(_UpdateMediaState value) updateMediaState,
    required TResult Function(_UpdatePlaybackState value) updatePlaybackState,
    required TResult Function(_AudioItemClicked value) audioItemClicked,
  }) {
    return collapse(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Reset value)? reset,
    TResult Function(_None value)? none,
    TResult Function(_Collapse value)? collapse,
    TResult Function(_Expand value)? expand,
    TResult Function(_Play value)? play,
    TResult Function(_UpdateQueueState value)? updateQueueState,
    TResult Function(_UpdateMediaState value)? updateMediaState,
    TResult Function(_UpdatePlaybackState value)? updatePlaybackState,
    TResult Function(_AudioItemClicked value)? audioItemClicked,
    required TResult orElse(),
  }) {
    if (collapse != null) {
      return collapse(this);
    }
    return orElse();
  }
}

abstract class _Collapse implements AudioPlayerEvent {
  const factory _Collapse() = _$_Collapse;
}

/// @nodoc
abstract class _$ExpandCopyWith<$Res> {
  factory _$ExpandCopyWith(_Expand value, $Res Function(_Expand) then) =
      __$ExpandCopyWithImpl<$Res>;
}

/// @nodoc
class __$ExpandCopyWithImpl<$Res> extends _$AudioPlayerEventCopyWithImpl<$Res>
    implements _$ExpandCopyWith<$Res> {
  __$ExpandCopyWithImpl(_Expand _value, $Res Function(_Expand) _then)
      : super(_value, (v) => _then(v as _Expand));

  @override
  _Expand get _value => super._value as _Expand;
}

/// @nodoc
class _$_Expand with DiagnosticableTreeMixin implements _Expand {
  const _$_Expand();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AudioPlayerEvent.expand()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'AudioPlayerEvent.expand'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Expand);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() reset,
    required TResult Function() none,
    required TResult Function() collapse,
    required TResult Function() expand,
    required TResult Function() play,
    required TResult Function(QueueState? queueState) updateQueueState,
    required TResult Function(MediaState? mediaState) updateMediaState,
    required TResult Function(PlaybackState? playbackState) updatePlaybackState,
    required TResult Function(
            String categoryName, List<TattvaAudio> audios, int idx)
        audioItemClicked,
  }) {
    return expand();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? reset,
    TResult Function()? none,
    TResult Function()? collapse,
    TResult Function()? expand,
    TResult Function()? play,
    TResult Function(QueueState? queueState)? updateQueueState,
    TResult Function(MediaState? mediaState)? updateMediaState,
    TResult Function(PlaybackState? playbackState)? updatePlaybackState,
    TResult Function(String categoryName, List<TattvaAudio> audios, int idx)?
        audioItemClicked,
    required TResult orElse(),
  }) {
    if (expand != null) {
      return expand();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Reset value) reset,
    required TResult Function(_None value) none,
    required TResult Function(_Collapse value) collapse,
    required TResult Function(_Expand value) expand,
    required TResult Function(_Play value) play,
    required TResult Function(_UpdateQueueState value) updateQueueState,
    required TResult Function(_UpdateMediaState value) updateMediaState,
    required TResult Function(_UpdatePlaybackState value) updatePlaybackState,
    required TResult Function(_AudioItemClicked value) audioItemClicked,
  }) {
    return expand(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Reset value)? reset,
    TResult Function(_None value)? none,
    TResult Function(_Collapse value)? collapse,
    TResult Function(_Expand value)? expand,
    TResult Function(_Play value)? play,
    TResult Function(_UpdateQueueState value)? updateQueueState,
    TResult Function(_UpdateMediaState value)? updateMediaState,
    TResult Function(_UpdatePlaybackState value)? updatePlaybackState,
    TResult Function(_AudioItemClicked value)? audioItemClicked,
    required TResult orElse(),
  }) {
    if (expand != null) {
      return expand(this);
    }
    return orElse();
  }
}

abstract class _Expand implements AudioPlayerEvent {
  const factory _Expand() = _$_Expand;
}

/// @nodoc
abstract class _$PlayCopyWith<$Res> {
  factory _$PlayCopyWith(_Play value, $Res Function(_Play) then) =
      __$PlayCopyWithImpl<$Res>;
}

/// @nodoc
class __$PlayCopyWithImpl<$Res> extends _$AudioPlayerEventCopyWithImpl<$Res>
    implements _$PlayCopyWith<$Res> {
  __$PlayCopyWithImpl(_Play _value, $Res Function(_Play) _then)
      : super(_value, (v) => _then(v as _Play));

  @override
  _Play get _value => super._value as _Play;
}

/// @nodoc
class _$_Play with DiagnosticableTreeMixin implements _Play {
  const _$_Play();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AudioPlayerEvent.play()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'AudioPlayerEvent.play'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Play);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() reset,
    required TResult Function() none,
    required TResult Function() collapse,
    required TResult Function() expand,
    required TResult Function() play,
    required TResult Function(QueueState? queueState) updateQueueState,
    required TResult Function(MediaState? mediaState) updateMediaState,
    required TResult Function(PlaybackState? playbackState) updatePlaybackState,
    required TResult Function(
            String categoryName, List<TattvaAudio> audios, int idx)
        audioItemClicked,
  }) {
    return play();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? reset,
    TResult Function()? none,
    TResult Function()? collapse,
    TResult Function()? expand,
    TResult Function()? play,
    TResult Function(QueueState? queueState)? updateQueueState,
    TResult Function(MediaState? mediaState)? updateMediaState,
    TResult Function(PlaybackState? playbackState)? updatePlaybackState,
    TResult Function(String categoryName, List<TattvaAudio> audios, int idx)?
        audioItemClicked,
    required TResult orElse(),
  }) {
    if (play != null) {
      return play();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Reset value) reset,
    required TResult Function(_None value) none,
    required TResult Function(_Collapse value) collapse,
    required TResult Function(_Expand value) expand,
    required TResult Function(_Play value) play,
    required TResult Function(_UpdateQueueState value) updateQueueState,
    required TResult Function(_UpdateMediaState value) updateMediaState,
    required TResult Function(_UpdatePlaybackState value) updatePlaybackState,
    required TResult Function(_AudioItemClicked value) audioItemClicked,
  }) {
    return play(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Reset value)? reset,
    TResult Function(_None value)? none,
    TResult Function(_Collapse value)? collapse,
    TResult Function(_Expand value)? expand,
    TResult Function(_Play value)? play,
    TResult Function(_UpdateQueueState value)? updateQueueState,
    TResult Function(_UpdateMediaState value)? updateMediaState,
    TResult Function(_UpdatePlaybackState value)? updatePlaybackState,
    TResult Function(_AudioItemClicked value)? audioItemClicked,
    required TResult orElse(),
  }) {
    if (play != null) {
      return play(this);
    }
    return orElse();
  }
}

abstract class _Play implements AudioPlayerEvent {
  const factory _Play() = _$_Play;
}

/// @nodoc
abstract class _$UpdateQueueStateCopyWith<$Res> {
  factory _$UpdateQueueStateCopyWith(
          _UpdateQueueState value, $Res Function(_UpdateQueueState) then) =
      __$UpdateQueueStateCopyWithImpl<$Res>;
  $Res call({QueueState? queueState});

  $QueueStateCopyWith<$Res>? get queueState;
}

/// @nodoc
class __$UpdateQueueStateCopyWithImpl<$Res>
    extends _$AudioPlayerEventCopyWithImpl<$Res>
    implements _$UpdateQueueStateCopyWith<$Res> {
  __$UpdateQueueStateCopyWithImpl(
      _UpdateQueueState _value, $Res Function(_UpdateQueueState) _then)
      : super(_value, (v) => _then(v as _UpdateQueueState));

  @override
  _UpdateQueueState get _value => super._value as _UpdateQueueState;

  @override
  $Res call({
    Object? queueState = freezed,
  }) {
    return _then(_UpdateQueueState(
      queueState == freezed
          ? _value.queueState
          : queueState // ignore: cast_nullable_to_non_nullable
              as QueueState?,
    ));
  }

  @override
  $QueueStateCopyWith<$Res>? get queueState {
    if (_value.queueState == null) {
      return null;
    }

    return $QueueStateCopyWith<$Res>(_value.queueState!, (value) {
      return _then(_value.copyWith(queueState: value));
    });
  }
}

/// @nodoc
class _$_UpdateQueueState
    with DiagnosticableTreeMixin
    implements _UpdateQueueState {
  const _$_UpdateQueueState(this.queueState);

  @override
  final QueueState? queueState;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AudioPlayerEvent.updateQueueState(queueState: $queueState)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AudioPlayerEvent.updateQueueState'))
      ..add(DiagnosticsProperty('queueState', queueState));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateQueueState &&
            (identical(other.queueState, queueState) ||
                const DeepCollectionEquality()
                    .equals(other.queueState, queueState)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(queueState);

  @JsonKey(ignore: true)
  @override
  _$UpdateQueueStateCopyWith<_UpdateQueueState> get copyWith =>
      __$UpdateQueueStateCopyWithImpl<_UpdateQueueState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() reset,
    required TResult Function() none,
    required TResult Function() collapse,
    required TResult Function() expand,
    required TResult Function() play,
    required TResult Function(QueueState? queueState) updateQueueState,
    required TResult Function(MediaState? mediaState) updateMediaState,
    required TResult Function(PlaybackState? playbackState) updatePlaybackState,
    required TResult Function(
            String categoryName, List<TattvaAudio> audios, int idx)
        audioItemClicked,
  }) {
    return updateQueueState(queueState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? reset,
    TResult Function()? none,
    TResult Function()? collapse,
    TResult Function()? expand,
    TResult Function()? play,
    TResult Function(QueueState? queueState)? updateQueueState,
    TResult Function(MediaState? mediaState)? updateMediaState,
    TResult Function(PlaybackState? playbackState)? updatePlaybackState,
    TResult Function(String categoryName, List<TattvaAudio> audios, int idx)?
        audioItemClicked,
    required TResult orElse(),
  }) {
    if (updateQueueState != null) {
      return updateQueueState(queueState);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Reset value) reset,
    required TResult Function(_None value) none,
    required TResult Function(_Collapse value) collapse,
    required TResult Function(_Expand value) expand,
    required TResult Function(_Play value) play,
    required TResult Function(_UpdateQueueState value) updateQueueState,
    required TResult Function(_UpdateMediaState value) updateMediaState,
    required TResult Function(_UpdatePlaybackState value) updatePlaybackState,
    required TResult Function(_AudioItemClicked value) audioItemClicked,
  }) {
    return updateQueueState(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Reset value)? reset,
    TResult Function(_None value)? none,
    TResult Function(_Collapse value)? collapse,
    TResult Function(_Expand value)? expand,
    TResult Function(_Play value)? play,
    TResult Function(_UpdateQueueState value)? updateQueueState,
    TResult Function(_UpdateMediaState value)? updateMediaState,
    TResult Function(_UpdatePlaybackState value)? updatePlaybackState,
    TResult Function(_AudioItemClicked value)? audioItemClicked,
    required TResult orElse(),
  }) {
    if (updateQueueState != null) {
      return updateQueueState(this);
    }
    return orElse();
  }
}

abstract class _UpdateQueueState implements AudioPlayerEvent {
  const factory _UpdateQueueState(QueueState? queueState) = _$_UpdateQueueState;

  QueueState? get queueState => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$UpdateQueueStateCopyWith<_UpdateQueueState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UpdateMediaStateCopyWith<$Res> {
  factory _$UpdateMediaStateCopyWith(
          _UpdateMediaState value, $Res Function(_UpdateMediaState) then) =
      __$UpdateMediaStateCopyWithImpl<$Res>;
  $Res call({MediaState? mediaState});

  $MediaStateCopyWith<$Res>? get mediaState;
}

/// @nodoc
class __$UpdateMediaStateCopyWithImpl<$Res>
    extends _$AudioPlayerEventCopyWithImpl<$Res>
    implements _$UpdateMediaStateCopyWith<$Res> {
  __$UpdateMediaStateCopyWithImpl(
      _UpdateMediaState _value, $Res Function(_UpdateMediaState) _then)
      : super(_value, (v) => _then(v as _UpdateMediaState));

  @override
  _UpdateMediaState get _value => super._value as _UpdateMediaState;

  @override
  $Res call({
    Object? mediaState = freezed,
  }) {
    return _then(_UpdateMediaState(
      mediaState == freezed
          ? _value.mediaState
          : mediaState // ignore: cast_nullable_to_non_nullable
              as MediaState?,
    ));
  }

  @override
  $MediaStateCopyWith<$Res>? get mediaState {
    if (_value.mediaState == null) {
      return null;
    }

    return $MediaStateCopyWith<$Res>(_value.mediaState!, (value) {
      return _then(_value.copyWith(mediaState: value));
    });
  }
}

/// @nodoc
class _$_UpdateMediaState
    with DiagnosticableTreeMixin
    implements _UpdateMediaState {
  const _$_UpdateMediaState(this.mediaState);

  @override
  final MediaState? mediaState;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AudioPlayerEvent.updateMediaState(mediaState: $mediaState)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AudioPlayerEvent.updateMediaState'))
      ..add(DiagnosticsProperty('mediaState', mediaState));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateMediaState &&
            (identical(other.mediaState, mediaState) ||
                const DeepCollectionEquality()
                    .equals(other.mediaState, mediaState)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(mediaState);

  @JsonKey(ignore: true)
  @override
  _$UpdateMediaStateCopyWith<_UpdateMediaState> get copyWith =>
      __$UpdateMediaStateCopyWithImpl<_UpdateMediaState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() reset,
    required TResult Function() none,
    required TResult Function() collapse,
    required TResult Function() expand,
    required TResult Function() play,
    required TResult Function(QueueState? queueState) updateQueueState,
    required TResult Function(MediaState? mediaState) updateMediaState,
    required TResult Function(PlaybackState? playbackState) updatePlaybackState,
    required TResult Function(
            String categoryName, List<TattvaAudio> audios, int idx)
        audioItemClicked,
  }) {
    return updateMediaState(mediaState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? reset,
    TResult Function()? none,
    TResult Function()? collapse,
    TResult Function()? expand,
    TResult Function()? play,
    TResult Function(QueueState? queueState)? updateQueueState,
    TResult Function(MediaState? mediaState)? updateMediaState,
    TResult Function(PlaybackState? playbackState)? updatePlaybackState,
    TResult Function(String categoryName, List<TattvaAudio> audios, int idx)?
        audioItemClicked,
    required TResult orElse(),
  }) {
    if (updateMediaState != null) {
      return updateMediaState(mediaState);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Reset value) reset,
    required TResult Function(_None value) none,
    required TResult Function(_Collapse value) collapse,
    required TResult Function(_Expand value) expand,
    required TResult Function(_Play value) play,
    required TResult Function(_UpdateQueueState value) updateQueueState,
    required TResult Function(_UpdateMediaState value) updateMediaState,
    required TResult Function(_UpdatePlaybackState value) updatePlaybackState,
    required TResult Function(_AudioItemClicked value) audioItemClicked,
  }) {
    return updateMediaState(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Reset value)? reset,
    TResult Function(_None value)? none,
    TResult Function(_Collapse value)? collapse,
    TResult Function(_Expand value)? expand,
    TResult Function(_Play value)? play,
    TResult Function(_UpdateQueueState value)? updateQueueState,
    TResult Function(_UpdateMediaState value)? updateMediaState,
    TResult Function(_UpdatePlaybackState value)? updatePlaybackState,
    TResult Function(_AudioItemClicked value)? audioItemClicked,
    required TResult orElse(),
  }) {
    if (updateMediaState != null) {
      return updateMediaState(this);
    }
    return orElse();
  }
}

abstract class _UpdateMediaState implements AudioPlayerEvent {
  const factory _UpdateMediaState(MediaState? mediaState) = _$_UpdateMediaState;

  MediaState? get mediaState => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$UpdateMediaStateCopyWith<_UpdateMediaState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UpdatePlaybackStateCopyWith<$Res> {
  factory _$UpdatePlaybackStateCopyWith(_UpdatePlaybackState value,
          $Res Function(_UpdatePlaybackState) then) =
      __$UpdatePlaybackStateCopyWithImpl<$Res>;
  $Res call({PlaybackState? playbackState});
}

/// @nodoc
class __$UpdatePlaybackStateCopyWithImpl<$Res>
    extends _$AudioPlayerEventCopyWithImpl<$Res>
    implements _$UpdatePlaybackStateCopyWith<$Res> {
  __$UpdatePlaybackStateCopyWithImpl(
      _UpdatePlaybackState _value, $Res Function(_UpdatePlaybackState) _then)
      : super(_value, (v) => _then(v as _UpdatePlaybackState));

  @override
  _UpdatePlaybackState get _value => super._value as _UpdatePlaybackState;

  @override
  $Res call({
    Object? playbackState = freezed,
  }) {
    return _then(_UpdatePlaybackState(
      playbackState == freezed
          ? _value.playbackState
          : playbackState // ignore: cast_nullable_to_non_nullable
              as PlaybackState?,
    ));
  }
}

/// @nodoc
class _$_UpdatePlaybackState
    with DiagnosticableTreeMixin
    implements _UpdatePlaybackState {
  const _$_UpdatePlaybackState(this.playbackState);

  @override
  final PlaybackState? playbackState;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AudioPlayerEvent.updatePlaybackState(playbackState: $playbackState)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AudioPlayerEvent.updatePlaybackState'))
      ..add(DiagnosticsProperty('playbackState', playbackState));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdatePlaybackState &&
            (identical(other.playbackState, playbackState) ||
                const DeepCollectionEquality()
                    .equals(other.playbackState, playbackState)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(playbackState);

  @JsonKey(ignore: true)
  @override
  _$UpdatePlaybackStateCopyWith<_UpdatePlaybackState> get copyWith =>
      __$UpdatePlaybackStateCopyWithImpl<_UpdatePlaybackState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() reset,
    required TResult Function() none,
    required TResult Function() collapse,
    required TResult Function() expand,
    required TResult Function() play,
    required TResult Function(QueueState? queueState) updateQueueState,
    required TResult Function(MediaState? mediaState) updateMediaState,
    required TResult Function(PlaybackState? playbackState) updatePlaybackState,
    required TResult Function(
            String categoryName, List<TattvaAudio> audios, int idx)
        audioItemClicked,
  }) {
    return updatePlaybackState(playbackState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? reset,
    TResult Function()? none,
    TResult Function()? collapse,
    TResult Function()? expand,
    TResult Function()? play,
    TResult Function(QueueState? queueState)? updateQueueState,
    TResult Function(MediaState? mediaState)? updateMediaState,
    TResult Function(PlaybackState? playbackState)? updatePlaybackState,
    TResult Function(String categoryName, List<TattvaAudio> audios, int idx)?
        audioItemClicked,
    required TResult orElse(),
  }) {
    if (updatePlaybackState != null) {
      return updatePlaybackState(playbackState);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Reset value) reset,
    required TResult Function(_None value) none,
    required TResult Function(_Collapse value) collapse,
    required TResult Function(_Expand value) expand,
    required TResult Function(_Play value) play,
    required TResult Function(_UpdateQueueState value) updateQueueState,
    required TResult Function(_UpdateMediaState value) updateMediaState,
    required TResult Function(_UpdatePlaybackState value) updatePlaybackState,
    required TResult Function(_AudioItemClicked value) audioItemClicked,
  }) {
    return updatePlaybackState(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Reset value)? reset,
    TResult Function(_None value)? none,
    TResult Function(_Collapse value)? collapse,
    TResult Function(_Expand value)? expand,
    TResult Function(_Play value)? play,
    TResult Function(_UpdateQueueState value)? updateQueueState,
    TResult Function(_UpdateMediaState value)? updateMediaState,
    TResult Function(_UpdatePlaybackState value)? updatePlaybackState,
    TResult Function(_AudioItemClicked value)? audioItemClicked,
    required TResult orElse(),
  }) {
    if (updatePlaybackState != null) {
      return updatePlaybackState(this);
    }
    return orElse();
  }
}

abstract class _UpdatePlaybackState implements AudioPlayerEvent {
  const factory _UpdatePlaybackState(PlaybackState? playbackState) =
      _$_UpdatePlaybackState;

  PlaybackState? get playbackState => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$UpdatePlaybackStateCopyWith<_UpdatePlaybackState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AudioItemClickedCopyWith<$Res> {
  factory _$AudioItemClickedCopyWith(
          _AudioItemClicked value, $Res Function(_AudioItemClicked) then) =
      __$AudioItemClickedCopyWithImpl<$Res>;
  $Res call({String categoryName, List<TattvaAudio> audios, int idx});
}

/// @nodoc
class __$AudioItemClickedCopyWithImpl<$Res>
    extends _$AudioPlayerEventCopyWithImpl<$Res>
    implements _$AudioItemClickedCopyWith<$Res> {
  __$AudioItemClickedCopyWithImpl(
      _AudioItemClicked _value, $Res Function(_AudioItemClicked) _then)
      : super(_value, (v) => _then(v as _AudioItemClicked));

  @override
  _AudioItemClicked get _value => super._value as _AudioItemClicked;

  @override
  $Res call({
    Object? categoryName = freezed,
    Object? audios = freezed,
    Object? idx = freezed,
  }) {
    return _then(_AudioItemClicked(
      categoryName: categoryName == freezed
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
      audios: audios == freezed
          ? _value.audios
          : audios // ignore: cast_nullable_to_non_nullable
              as List<TattvaAudio>,
      idx: idx == freezed
          ? _value.idx
          : idx // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
class _$_AudioItemClicked
    with DiagnosticableTreeMixin
    implements _AudioItemClicked {
  const _$_AudioItemClicked(
      {required this.categoryName, required this.audios, required this.idx});

  @override
  final String categoryName;
  @override
  final List<TattvaAudio> audios;
  @override
  final int idx;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AudioPlayerEvent.audioItemClicked(categoryName: $categoryName, audios: $audios, idx: $idx)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AudioPlayerEvent.audioItemClicked'))
      ..add(DiagnosticsProperty('categoryName', categoryName))
      ..add(DiagnosticsProperty('audios', audios))
      ..add(DiagnosticsProperty('idx', idx));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AudioItemClicked &&
            (identical(other.categoryName, categoryName) ||
                const DeepCollectionEquality()
                    .equals(other.categoryName, categoryName)) &&
            (identical(other.audios, audios) ||
                const DeepCollectionEquality().equals(other.audios, audios)) &&
            (identical(other.idx, idx) ||
                const DeepCollectionEquality().equals(other.idx, idx)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(categoryName) ^
      const DeepCollectionEquality().hash(audios) ^
      const DeepCollectionEquality().hash(idx);

  @JsonKey(ignore: true)
  @override
  _$AudioItemClickedCopyWith<_AudioItemClicked> get copyWith =>
      __$AudioItemClickedCopyWithImpl<_AudioItemClicked>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() reset,
    required TResult Function() none,
    required TResult Function() collapse,
    required TResult Function() expand,
    required TResult Function() play,
    required TResult Function(QueueState? queueState) updateQueueState,
    required TResult Function(MediaState? mediaState) updateMediaState,
    required TResult Function(PlaybackState? playbackState) updatePlaybackState,
    required TResult Function(
            String categoryName, List<TattvaAudio> audios, int idx)
        audioItemClicked,
  }) {
    return audioItemClicked(categoryName, audios, idx);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? reset,
    TResult Function()? none,
    TResult Function()? collapse,
    TResult Function()? expand,
    TResult Function()? play,
    TResult Function(QueueState? queueState)? updateQueueState,
    TResult Function(MediaState? mediaState)? updateMediaState,
    TResult Function(PlaybackState? playbackState)? updatePlaybackState,
    TResult Function(String categoryName, List<TattvaAudio> audios, int idx)?
        audioItemClicked,
    required TResult orElse(),
  }) {
    if (audioItemClicked != null) {
      return audioItemClicked(categoryName, audios, idx);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Reset value) reset,
    required TResult Function(_None value) none,
    required TResult Function(_Collapse value) collapse,
    required TResult Function(_Expand value) expand,
    required TResult Function(_Play value) play,
    required TResult Function(_UpdateQueueState value) updateQueueState,
    required TResult Function(_UpdateMediaState value) updateMediaState,
    required TResult Function(_UpdatePlaybackState value) updatePlaybackState,
    required TResult Function(_AudioItemClicked value) audioItemClicked,
  }) {
    return audioItemClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Reset value)? reset,
    TResult Function(_None value)? none,
    TResult Function(_Collapse value)? collapse,
    TResult Function(_Expand value)? expand,
    TResult Function(_Play value)? play,
    TResult Function(_UpdateQueueState value)? updateQueueState,
    TResult Function(_UpdateMediaState value)? updateMediaState,
    TResult Function(_UpdatePlaybackState value)? updatePlaybackState,
    TResult Function(_AudioItemClicked value)? audioItemClicked,
    required TResult orElse(),
  }) {
    if (audioItemClicked != null) {
      return audioItemClicked(this);
    }
    return orElse();
  }
}

abstract class _AudioItemClicked implements AudioPlayerEvent {
  const factory _AudioItemClicked(
      {required String categoryName,
      required List<TattvaAudio> audios,
      required int idx}) = _$_AudioItemClicked;

  String get categoryName => throw _privateConstructorUsedError;
  List<TattvaAudio> get audios => throw _privateConstructorUsedError;
  int get idx => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$AudioItemClickedCopyWith<_AudioItemClicked> get copyWith =>
      throw _privateConstructorUsedError;
}

AudioPlayerState _$AudioPlayerStateFromJson(Map<String, dynamic> json) {
  return _AudioPlayerState.fromJson(json);
}

/// @nodoc
class _$AudioPlayerStateTearOff {
  const _$AudioPlayerStateTearOff();

  _AudioPlayerState call(
      {QueueState? queueState,
      MediaState? mediaState,
      @JsonKey(ignore: true) PlaybackState? playbackState,
      required PlayerView playerView}) {
    return _AudioPlayerState(
      queueState: queueState,
      mediaState: mediaState,
      playbackState: playbackState,
      playerView: playerView,
    );
  }

  AudioPlayerState fromJson(Map<String, Object> json) {
    return AudioPlayerState.fromJson(json);
  }
}

/// @nodoc
const $AudioPlayerState = _$AudioPlayerStateTearOff();

/// @nodoc
mixin _$AudioPlayerState {
  QueueState? get queueState => throw _privateConstructorUsedError;
  MediaState? get mediaState => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  PlaybackState? get playbackState => throw _privateConstructorUsedError;
  PlayerView get playerView => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AudioPlayerStateCopyWith<AudioPlayerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AudioPlayerStateCopyWith<$Res> {
  factory $AudioPlayerStateCopyWith(
          AudioPlayerState value, $Res Function(AudioPlayerState) then) =
      _$AudioPlayerStateCopyWithImpl<$Res>;
  $Res call(
      {QueueState? queueState,
      MediaState? mediaState,
      @JsonKey(ignore: true) PlaybackState? playbackState,
      PlayerView playerView});

  $QueueStateCopyWith<$Res>? get queueState;
  $MediaStateCopyWith<$Res>? get mediaState;
  $PlayerViewCopyWith<$Res> get playerView;
}

/// @nodoc
class _$AudioPlayerStateCopyWithImpl<$Res>
    implements $AudioPlayerStateCopyWith<$Res> {
  _$AudioPlayerStateCopyWithImpl(this._value, this._then);

  final AudioPlayerState _value;
  // ignore: unused_field
  final $Res Function(AudioPlayerState) _then;

  @override
  $Res call({
    Object? queueState = freezed,
    Object? mediaState = freezed,
    Object? playbackState = freezed,
    Object? playerView = freezed,
  }) {
    return _then(_value.copyWith(
      queueState: queueState == freezed
          ? _value.queueState
          : queueState // ignore: cast_nullable_to_non_nullable
              as QueueState?,
      mediaState: mediaState == freezed
          ? _value.mediaState
          : mediaState // ignore: cast_nullable_to_non_nullable
              as MediaState?,
      playbackState: playbackState == freezed
          ? _value.playbackState
          : playbackState // ignore: cast_nullable_to_non_nullable
              as PlaybackState?,
      playerView: playerView == freezed
          ? _value.playerView
          : playerView // ignore: cast_nullable_to_non_nullable
              as PlayerView,
    ));
  }

  @override
  $QueueStateCopyWith<$Res>? get queueState {
    if (_value.queueState == null) {
      return null;
    }

    return $QueueStateCopyWith<$Res>(_value.queueState!, (value) {
      return _then(_value.copyWith(queueState: value));
    });
  }

  @override
  $MediaStateCopyWith<$Res>? get mediaState {
    if (_value.mediaState == null) {
      return null;
    }

    return $MediaStateCopyWith<$Res>(_value.mediaState!, (value) {
      return _then(_value.copyWith(mediaState: value));
    });
  }

  @override
  $PlayerViewCopyWith<$Res> get playerView {
    return $PlayerViewCopyWith<$Res>(_value.playerView, (value) {
      return _then(_value.copyWith(playerView: value));
    });
  }
}

/// @nodoc
abstract class _$AudioPlayerStateCopyWith<$Res>
    implements $AudioPlayerStateCopyWith<$Res> {
  factory _$AudioPlayerStateCopyWith(
          _AudioPlayerState value, $Res Function(_AudioPlayerState) then) =
      __$AudioPlayerStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {QueueState? queueState,
      MediaState? mediaState,
      @JsonKey(ignore: true) PlaybackState? playbackState,
      PlayerView playerView});

  @override
  $QueueStateCopyWith<$Res>? get queueState;
  @override
  $MediaStateCopyWith<$Res>? get mediaState;
  @override
  $PlayerViewCopyWith<$Res> get playerView;
}

/// @nodoc
class __$AudioPlayerStateCopyWithImpl<$Res>
    extends _$AudioPlayerStateCopyWithImpl<$Res>
    implements _$AudioPlayerStateCopyWith<$Res> {
  __$AudioPlayerStateCopyWithImpl(
      _AudioPlayerState _value, $Res Function(_AudioPlayerState) _then)
      : super(_value, (v) => _then(v as _AudioPlayerState));

  @override
  _AudioPlayerState get _value => super._value as _AudioPlayerState;

  @override
  $Res call({
    Object? queueState = freezed,
    Object? mediaState = freezed,
    Object? playbackState = freezed,
    Object? playerView = freezed,
  }) {
    return _then(_AudioPlayerState(
      queueState: queueState == freezed
          ? _value.queueState
          : queueState // ignore: cast_nullable_to_non_nullable
              as QueueState?,
      mediaState: mediaState == freezed
          ? _value.mediaState
          : mediaState // ignore: cast_nullable_to_non_nullable
              as MediaState?,
      playbackState: playbackState == freezed
          ? _value.playbackState
          : playbackState // ignore: cast_nullable_to_non_nullable
              as PlaybackState?,
      playerView: playerView == freezed
          ? _value.playerView
          : playerView // ignore: cast_nullable_to_non_nullable
              as PlayerView,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_AudioPlayerState
    with DiagnosticableTreeMixin
    implements _AudioPlayerState {
  const _$_AudioPlayerState(
      {this.queueState,
      this.mediaState,
      @JsonKey(ignore: true) this.playbackState,
      required this.playerView});

  factory _$_AudioPlayerState.fromJson(Map<String, dynamic> json) =>
      _$_$_AudioPlayerStateFromJson(json);

  @override
  final QueueState? queueState;
  @override
  final MediaState? mediaState;
  @override
  @JsonKey(ignore: true)
  final PlaybackState? playbackState;
  @override
  final PlayerView playerView;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AudioPlayerState(queueState: $queueState, mediaState: $mediaState, playbackState: $playbackState, playerView: $playerView)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AudioPlayerState'))
      ..add(DiagnosticsProperty('queueState', queueState))
      ..add(DiagnosticsProperty('mediaState', mediaState))
      ..add(DiagnosticsProperty('playbackState', playbackState))
      ..add(DiagnosticsProperty('playerView', playerView));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AudioPlayerState &&
            (identical(other.queueState, queueState) ||
                const DeepCollectionEquality()
                    .equals(other.queueState, queueState)) &&
            (identical(other.mediaState, mediaState) ||
                const DeepCollectionEquality()
                    .equals(other.mediaState, mediaState)) &&
            (identical(other.playbackState, playbackState) ||
                const DeepCollectionEquality()
                    .equals(other.playbackState, playbackState)) &&
            (identical(other.playerView, playerView) ||
                const DeepCollectionEquality()
                    .equals(other.playerView, playerView)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(queueState) ^
      const DeepCollectionEquality().hash(mediaState) ^
      const DeepCollectionEquality().hash(playbackState) ^
      const DeepCollectionEquality().hash(playerView);

  @JsonKey(ignore: true)
  @override
  _$AudioPlayerStateCopyWith<_AudioPlayerState> get copyWith =>
      __$AudioPlayerStateCopyWithImpl<_AudioPlayerState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AudioPlayerStateToJson(this);
  }
}

abstract class _AudioPlayerState implements AudioPlayerState {
  const factory _AudioPlayerState(
      {QueueState? queueState,
      MediaState? mediaState,
      @JsonKey(ignore: true) PlaybackState? playbackState,
      required PlayerView playerView}) = _$_AudioPlayerState;

  factory _AudioPlayerState.fromJson(Map<String, dynamic> json) =
      _$_AudioPlayerState.fromJson;

  @override
  QueueState? get queueState => throw _privateConstructorUsedError;
  @override
  MediaState? get mediaState => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  PlaybackState? get playbackState => throw _privateConstructorUsedError;
  @override
  PlayerView get playerView => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AudioPlayerStateCopyWith<_AudioPlayerState> get copyWith =>
      throw _privateConstructorUsedError;
}
