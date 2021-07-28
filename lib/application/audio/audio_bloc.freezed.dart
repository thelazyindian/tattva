// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'audio_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AudioEventTearOff {
  const _$AudioEventTearOff();

  _Started started() {
    return const _Started();
  }

  _Reset reset() {
    return const _Reset();
  }

  _SelectedAudioCategory selectedAudioCategory(AudioCategory audioCategory) {
    return _SelectedAudioCategory(
      audioCategory,
    );
  }

  _AudioFromId audioFromId({required String id}) {
    return _AudioFromId(
      id: id,
    );
  }

  _LikedAudio likedAudio({required String id}) {
    return _LikedAudio(
      id: id,
    );
  }

  _DislikedAudio dislikedAudio({required String id}) {
    return _DislikedAudio(
      id: id,
    );
  }

  _UpdateLikedAudios updateLikedAudios({required List<String> audioIds}) {
    return _UpdateLikedAudios(
      audioIds: audioIds,
    );
  }
}

/// @nodoc
const $AudioEvent = _$AudioEventTearOff();

/// @nodoc
mixin _$AudioEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() reset,
    required TResult Function(AudioCategory audioCategory)
        selectedAudioCategory,
    required TResult Function(String id) audioFromId,
    required TResult Function(String id) likedAudio,
    required TResult Function(String id) dislikedAudio,
    required TResult Function(List<String> audioIds) updateLikedAudios,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? reset,
    TResult Function(AudioCategory audioCategory)? selectedAudioCategory,
    TResult Function(String id)? audioFromId,
    TResult Function(String id)? likedAudio,
    TResult Function(String id)? dislikedAudio,
    TResult Function(List<String> audioIds)? updateLikedAudios,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Reset value) reset,
    required TResult Function(_SelectedAudioCategory value)
        selectedAudioCategory,
    required TResult Function(_AudioFromId value) audioFromId,
    required TResult Function(_LikedAudio value) likedAudio,
    required TResult Function(_DislikedAudio value) dislikedAudio,
    required TResult Function(_UpdateLikedAudios value) updateLikedAudios,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Reset value)? reset,
    TResult Function(_SelectedAudioCategory value)? selectedAudioCategory,
    TResult Function(_AudioFromId value)? audioFromId,
    TResult Function(_LikedAudio value)? likedAudio,
    TResult Function(_DislikedAudio value)? dislikedAudio,
    TResult Function(_UpdateLikedAudios value)? updateLikedAudios,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AudioEventCopyWith<$Res> {
  factory $AudioEventCopyWith(
          AudioEvent value, $Res Function(AudioEvent) then) =
      _$AudioEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AudioEventCopyWithImpl<$Res> implements $AudioEventCopyWith<$Res> {
  _$AudioEventCopyWithImpl(this._value, this._then);

  final AudioEvent _value;
  // ignore: unused_field
  final $Res Function(AudioEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$AudioEventCopyWithImpl<$Res>
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
    return 'AudioEvent.started()';
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
    required TResult Function(AudioCategory audioCategory)
        selectedAudioCategory,
    required TResult Function(String id) audioFromId,
    required TResult Function(String id) likedAudio,
    required TResult Function(String id) dislikedAudio,
    required TResult Function(List<String> audioIds) updateLikedAudios,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? reset,
    TResult Function(AudioCategory audioCategory)? selectedAudioCategory,
    TResult Function(String id)? audioFromId,
    TResult Function(String id)? likedAudio,
    TResult Function(String id)? dislikedAudio,
    TResult Function(List<String> audioIds)? updateLikedAudios,
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
    required TResult Function(_SelectedAudioCategory value)
        selectedAudioCategory,
    required TResult Function(_AudioFromId value) audioFromId,
    required TResult Function(_LikedAudio value) likedAudio,
    required TResult Function(_DislikedAudio value) dislikedAudio,
    required TResult Function(_UpdateLikedAudios value) updateLikedAudios,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Reset value)? reset,
    TResult Function(_SelectedAudioCategory value)? selectedAudioCategory,
    TResult Function(_AudioFromId value)? audioFromId,
    TResult Function(_LikedAudio value)? likedAudio,
    TResult Function(_DislikedAudio value)? dislikedAudio,
    TResult Function(_UpdateLikedAudios value)? updateLikedAudios,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AudioEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$ResetCopyWith<$Res> {
  factory _$ResetCopyWith(_Reset value, $Res Function(_Reset) then) =
      __$ResetCopyWithImpl<$Res>;
}

/// @nodoc
class __$ResetCopyWithImpl<$Res> extends _$AudioEventCopyWithImpl<$Res>
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
    return 'AudioEvent.reset()';
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
    required TResult Function(AudioCategory audioCategory)
        selectedAudioCategory,
    required TResult Function(String id) audioFromId,
    required TResult Function(String id) likedAudio,
    required TResult Function(String id) dislikedAudio,
    required TResult Function(List<String> audioIds) updateLikedAudios,
  }) {
    return reset();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? reset,
    TResult Function(AudioCategory audioCategory)? selectedAudioCategory,
    TResult Function(String id)? audioFromId,
    TResult Function(String id)? likedAudio,
    TResult Function(String id)? dislikedAudio,
    TResult Function(List<String> audioIds)? updateLikedAudios,
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
    required TResult Function(_SelectedAudioCategory value)
        selectedAudioCategory,
    required TResult Function(_AudioFromId value) audioFromId,
    required TResult Function(_LikedAudio value) likedAudio,
    required TResult Function(_DislikedAudio value) dislikedAudio,
    required TResult Function(_UpdateLikedAudios value) updateLikedAudios,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Reset value)? reset,
    TResult Function(_SelectedAudioCategory value)? selectedAudioCategory,
    TResult Function(_AudioFromId value)? audioFromId,
    TResult Function(_LikedAudio value)? likedAudio,
    TResult Function(_DislikedAudio value)? dislikedAudio,
    TResult Function(_UpdateLikedAudios value)? updateLikedAudios,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class _Reset implements AudioEvent {
  const factory _Reset() = _$_Reset;
}

/// @nodoc
abstract class _$SelectedAudioCategoryCopyWith<$Res> {
  factory _$SelectedAudioCategoryCopyWith(_SelectedAudioCategory value,
          $Res Function(_SelectedAudioCategory) then) =
      __$SelectedAudioCategoryCopyWithImpl<$Res>;
  $Res call({AudioCategory audioCategory});

  $AudioCategoryCopyWith<$Res> get audioCategory;
}

/// @nodoc
class __$SelectedAudioCategoryCopyWithImpl<$Res>
    extends _$AudioEventCopyWithImpl<$Res>
    implements _$SelectedAudioCategoryCopyWith<$Res> {
  __$SelectedAudioCategoryCopyWithImpl(_SelectedAudioCategory _value,
      $Res Function(_SelectedAudioCategory) _then)
      : super(_value, (v) => _then(v as _SelectedAudioCategory));

  @override
  _SelectedAudioCategory get _value => super._value as _SelectedAudioCategory;

  @override
  $Res call({
    Object? audioCategory = freezed,
  }) {
    return _then(_SelectedAudioCategory(
      audioCategory == freezed
          ? _value.audioCategory
          : audioCategory // ignore: cast_nullable_to_non_nullable
              as AudioCategory,
    ));
  }

  @override
  $AudioCategoryCopyWith<$Res> get audioCategory {
    return $AudioCategoryCopyWith<$Res>(_value.audioCategory, (value) {
      return _then(_value.copyWith(audioCategory: value));
    });
  }
}

/// @nodoc
class _$_SelectedAudioCategory implements _SelectedAudioCategory {
  const _$_SelectedAudioCategory(this.audioCategory);

  @override
  final AudioCategory audioCategory;

  @override
  String toString() {
    return 'AudioEvent.selectedAudioCategory(audioCategory: $audioCategory)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SelectedAudioCategory &&
            (identical(other.audioCategory, audioCategory) ||
                const DeepCollectionEquality()
                    .equals(other.audioCategory, audioCategory)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(audioCategory);

  @JsonKey(ignore: true)
  @override
  _$SelectedAudioCategoryCopyWith<_SelectedAudioCategory> get copyWith =>
      __$SelectedAudioCategoryCopyWithImpl<_SelectedAudioCategory>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() reset,
    required TResult Function(AudioCategory audioCategory)
        selectedAudioCategory,
    required TResult Function(String id) audioFromId,
    required TResult Function(String id) likedAudio,
    required TResult Function(String id) dislikedAudio,
    required TResult Function(List<String> audioIds) updateLikedAudios,
  }) {
    return selectedAudioCategory(audioCategory);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? reset,
    TResult Function(AudioCategory audioCategory)? selectedAudioCategory,
    TResult Function(String id)? audioFromId,
    TResult Function(String id)? likedAudio,
    TResult Function(String id)? dislikedAudio,
    TResult Function(List<String> audioIds)? updateLikedAudios,
    required TResult orElse(),
  }) {
    if (selectedAudioCategory != null) {
      return selectedAudioCategory(audioCategory);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Reset value) reset,
    required TResult Function(_SelectedAudioCategory value)
        selectedAudioCategory,
    required TResult Function(_AudioFromId value) audioFromId,
    required TResult Function(_LikedAudio value) likedAudio,
    required TResult Function(_DislikedAudio value) dislikedAudio,
    required TResult Function(_UpdateLikedAudios value) updateLikedAudios,
  }) {
    return selectedAudioCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Reset value)? reset,
    TResult Function(_SelectedAudioCategory value)? selectedAudioCategory,
    TResult Function(_AudioFromId value)? audioFromId,
    TResult Function(_LikedAudio value)? likedAudio,
    TResult Function(_DislikedAudio value)? dislikedAudio,
    TResult Function(_UpdateLikedAudios value)? updateLikedAudios,
    required TResult orElse(),
  }) {
    if (selectedAudioCategory != null) {
      return selectedAudioCategory(this);
    }
    return orElse();
  }
}

abstract class _SelectedAudioCategory implements AudioEvent {
  const factory _SelectedAudioCategory(AudioCategory audioCategory) =
      _$_SelectedAudioCategory;

  AudioCategory get audioCategory => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SelectedAudioCategoryCopyWith<_SelectedAudioCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AudioFromIdCopyWith<$Res> {
  factory _$AudioFromIdCopyWith(
          _AudioFromId value, $Res Function(_AudioFromId) then) =
      __$AudioFromIdCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class __$AudioFromIdCopyWithImpl<$Res> extends _$AudioEventCopyWithImpl<$Res>
    implements _$AudioFromIdCopyWith<$Res> {
  __$AudioFromIdCopyWithImpl(
      _AudioFromId _value, $Res Function(_AudioFromId) _then)
      : super(_value, (v) => _then(v as _AudioFromId));

  @override
  _AudioFromId get _value => super._value as _AudioFromId;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_AudioFromId(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_AudioFromId implements _AudioFromId {
  const _$_AudioFromId({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'AudioEvent.audioFromId(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AudioFromId &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$AudioFromIdCopyWith<_AudioFromId> get copyWith =>
      __$AudioFromIdCopyWithImpl<_AudioFromId>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() reset,
    required TResult Function(AudioCategory audioCategory)
        selectedAudioCategory,
    required TResult Function(String id) audioFromId,
    required TResult Function(String id) likedAudio,
    required TResult Function(String id) dislikedAudio,
    required TResult Function(List<String> audioIds) updateLikedAudios,
  }) {
    return audioFromId(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? reset,
    TResult Function(AudioCategory audioCategory)? selectedAudioCategory,
    TResult Function(String id)? audioFromId,
    TResult Function(String id)? likedAudio,
    TResult Function(String id)? dislikedAudio,
    TResult Function(List<String> audioIds)? updateLikedAudios,
    required TResult orElse(),
  }) {
    if (audioFromId != null) {
      return audioFromId(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Reset value) reset,
    required TResult Function(_SelectedAudioCategory value)
        selectedAudioCategory,
    required TResult Function(_AudioFromId value) audioFromId,
    required TResult Function(_LikedAudio value) likedAudio,
    required TResult Function(_DislikedAudio value) dislikedAudio,
    required TResult Function(_UpdateLikedAudios value) updateLikedAudios,
  }) {
    return audioFromId(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Reset value)? reset,
    TResult Function(_SelectedAudioCategory value)? selectedAudioCategory,
    TResult Function(_AudioFromId value)? audioFromId,
    TResult Function(_LikedAudio value)? likedAudio,
    TResult Function(_DislikedAudio value)? dislikedAudio,
    TResult Function(_UpdateLikedAudios value)? updateLikedAudios,
    required TResult orElse(),
  }) {
    if (audioFromId != null) {
      return audioFromId(this);
    }
    return orElse();
  }
}

abstract class _AudioFromId implements AudioEvent {
  const factory _AudioFromId({required String id}) = _$_AudioFromId;

  String get id => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$AudioFromIdCopyWith<_AudioFromId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LikedAudioCopyWith<$Res> {
  factory _$LikedAudioCopyWith(
          _LikedAudio value, $Res Function(_LikedAudio) then) =
      __$LikedAudioCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class __$LikedAudioCopyWithImpl<$Res> extends _$AudioEventCopyWithImpl<$Res>
    implements _$LikedAudioCopyWith<$Res> {
  __$LikedAudioCopyWithImpl(
      _LikedAudio _value, $Res Function(_LikedAudio) _then)
      : super(_value, (v) => _then(v as _LikedAudio));

  @override
  _LikedAudio get _value => super._value as _LikedAudio;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_LikedAudio(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_LikedAudio implements _LikedAudio {
  const _$_LikedAudio({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'AudioEvent.likedAudio(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LikedAudio &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$LikedAudioCopyWith<_LikedAudio> get copyWith =>
      __$LikedAudioCopyWithImpl<_LikedAudio>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() reset,
    required TResult Function(AudioCategory audioCategory)
        selectedAudioCategory,
    required TResult Function(String id) audioFromId,
    required TResult Function(String id) likedAudio,
    required TResult Function(String id) dislikedAudio,
    required TResult Function(List<String> audioIds) updateLikedAudios,
  }) {
    return likedAudio(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? reset,
    TResult Function(AudioCategory audioCategory)? selectedAudioCategory,
    TResult Function(String id)? audioFromId,
    TResult Function(String id)? likedAudio,
    TResult Function(String id)? dislikedAudio,
    TResult Function(List<String> audioIds)? updateLikedAudios,
    required TResult orElse(),
  }) {
    if (likedAudio != null) {
      return likedAudio(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Reset value) reset,
    required TResult Function(_SelectedAudioCategory value)
        selectedAudioCategory,
    required TResult Function(_AudioFromId value) audioFromId,
    required TResult Function(_LikedAudio value) likedAudio,
    required TResult Function(_DislikedAudio value) dislikedAudio,
    required TResult Function(_UpdateLikedAudios value) updateLikedAudios,
  }) {
    return likedAudio(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Reset value)? reset,
    TResult Function(_SelectedAudioCategory value)? selectedAudioCategory,
    TResult Function(_AudioFromId value)? audioFromId,
    TResult Function(_LikedAudio value)? likedAudio,
    TResult Function(_DislikedAudio value)? dislikedAudio,
    TResult Function(_UpdateLikedAudios value)? updateLikedAudios,
    required TResult orElse(),
  }) {
    if (likedAudio != null) {
      return likedAudio(this);
    }
    return orElse();
  }
}

abstract class _LikedAudio implements AudioEvent {
  const factory _LikedAudio({required String id}) = _$_LikedAudio;

  String get id => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LikedAudioCopyWith<_LikedAudio> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DislikedAudioCopyWith<$Res> {
  factory _$DislikedAudioCopyWith(
          _DislikedAudio value, $Res Function(_DislikedAudio) then) =
      __$DislikedAudioCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class __$DislikedAudioCopyWithImpl<$Res> extends _$AudioEventCopyWithImpl<$Res>
    implements _$DislikedAudioCopyWith<$Res> {
  __$DislikedAudioCopyWithImpl(
      _DislikedAudio _value, $Res Function(_DislikedAudio) _then)
      : super(_value, (v) => _then(v as _DislikedAudio));

  @override
  _DislikedAudio get _value => super._value as _DislikedAudio;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_DislikedAudio(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_DislikedAudio implements _DislikedAudio {
  const _$_DislikedAudio({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'AudioEvent.dislikedAudio(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DislikedAudio &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$DislikedAudioCopyWith<_DislikedAudio> get copyWith =>
      __$DislikedAudioCopyWithImpl<_DislikedAudio>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() reset,
    required TResult Function(AudioCategory audioCategory)
        selectedAudioCategory,
    required TResult Function(String id) audioFromId,
    required TResult Function(String id) likedAudio,
    required TResult Function(String id) dislikedAudio,
    required TResult Function(List<String> audioIds) updateLikedAudios,
  }) {
    return dislikedAudio(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? reset,
    TResult Function(AudioCategory audioCategory)? selectedAudioCategory,
    TResult Function(String id)? audioFromId,
    TResult Function(String id)? likedAudio,
    TResult Function(String id)? dislikedAudio,
    TResult Function(List<String> audioIds)? updateLikedAudios,
    required TResult orElse(),
  }) {
    if (dislikedAudio != null) {
      return dislikedAudio(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Reset value) reset,
    required TResult Function(_SelectedAudioCategory value)
        selectedAudioCategory,
    required TResult Function(_AudioFromId value) audioFromId,
    required TResult Function(_LikedAudio value) likedAudio,
    required TResult Function(_DislikedAudio value) dislikedAudio,
    required TResult Function(_UpdateLikedAudios value) updateLikedAudios,
  }) {
    return dislikedAudio(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Reset value)? reset,
    TResult Function(_SelectedAudioCategory value)? selectedAudioCategory,
    TResult Function(_AudioFromId value)? audioFromId,
    TResult Function(_LikedAudio value)? likedAudio,
    TResult Function(_DislikedAudio value)? dislikedAudio,
    TResult Function(_UpdateLikedAudios value)? updateLikedAudios,
    required TResult orElse(),
  }) {
    if (dislikedAudio != null) {
      return dislikedAudio(this);
    }
    return orElse();
  }
}

abstract class _DislikedAudio implements AudioEvent {
  const factory _DislikedAudio({required String id}) = _$_DislikedAudio;

  String get id => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DislikedAudioCopyWith<_DislikedAudio> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UpdateLikedAudiosCopyWith<$Res> {
  factory _$UpdateLikedAudiosCopyWith(
          _UpdateLikedAudios value, $Res Function(_UpdateLikedAudios) then) =
      __$UpdateLikedAudiosCopyWithImpl<$Res>;
  $Res call({List<String> audioIds});
}

/// @nodoc
class __$UpdateLikedAudiosCopyWithImpl<$Res>
    extends _$AudioEventCopyWithImpl<$Res>
    implements _$UpdateLikedAudiosCopyWith<$Res> {
  __$UpdateLikedAudiosCopyWithImpl(
      _UpdateLikedAudios _value, $Res Function(_UpdateLikedAudios) _then)
      : super(_value, (v) => _then(v as _UpdateLikedAudios));

  @override
  _UpdateLikedAudios get _value => super._value as _UpdateLikedAudios;

  @override
  $Res call({
    Object? audioIds = freezed,
  }) {
    return _then(_UpdateLikedAudios(
      audioIds: audioIds == freezed
          ? _value.audioIds
          : audioIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
class _$_UpdateLikedAudios implements _UpdateLikedAudios {
  const _$_UpdateLikedAudios({required this.audioIds});

  @override
  final List<String> audioIds;

  @override
  String toString() {
    return 'AudioEvent.updateLikedAudios(audioIds: $audioIds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateLikedAudios &&
            (identical(other.audioIds, audioIds) ||
                const DeepCollectionEquality()
                    .equals(other.audioIds, audioIds)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(audioIds);

  @JsonKey(ignore: true)
  @override
  _$UpdateLikedAudiosCopyWith<_UpdateLikedAudios> get copyWith =>
      __$UpdateLikedAudiosCopyWithImpl<_UpdateLikedAudios>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() reset,
    required TResult Function(AudioCategory audioCategory)
        selectedAudioCategory,
    required TResult Function(String id) audioFromId,
    required TResult Function(String id) likedAudio,
    required TResult Function(String id) dislikedAudio,
    required TResult Function(List<String> audioIds) updateLikedAudios,
  }) {
    return updateLikedAudios(audioIds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? reset,
    TResult Function(AudioCategory audioCategory)? selectedAudioCategory,
    TResult Function(String id)? audioFromId,
    TResult Function(String id)? likedAudio,
    TResult Function(String id)? dislikedAudio,
    TResult Function(List<String> audioIds)? updateLikedAudios,
    required TResult orElse(),
  }) {
    if (updateLikedAudios != null) {
      return updateLikedAudios(audioIds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Reset value) reset,
    required TResult Function(_SelectedAudioCategory value)
        selectedAudioCategory,
    required TResult Function(_AudioFromId value) audioFromId,
    required TResult Function(_LikedAudio value) likedAudio,
    required TResult Function(_DislikedAudio value) dislikedAudio,
    required TResult Function(_UpdateLikedAudios value) updateLikedAudios,
  }) {
    return updateLikedAudios(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Reset value)? reset,
    TResult Function(_SelectedAudioCategory value)? selectedAudioCategory,
    TResult Function(_AudioFromId value)? audioFromId,
    TResult Function(_LikedAudio value)? likedAudio,
    TResult Function(_DislikedAudio value)? dislikedAudio,
    TResult Function(_UpdateLikedAudios value)? updateLikedAudios,
    required TResult orElse(),
  }) {
    if (updateLikedAudios != null) {
      return updateLikedAudios(this);
    }
    return orElse();
  }
}

abstract class _UpdateLikedAudios implements AudioEvent {
  const factory _UpdateLikedAudios({required List<String> audioIds}) =
      _$_UpdateLikedAudios;

  List<String> get audioIds => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$UpdateLikedAudiosCopyWith<_UpdateLikedAudios> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$AudioStateTearOff {
  const _$AudioStateTearOff();

  _AudioState call(
      {required Option<Either<Failure, List<AudioCategory>>>
          audioCategoriesOption,
      required List<String> likedAudios,
      required bool loadingSubCategory,
      required Option<AudioCategory> selectedAudioCategory,
      required Option<Either<Failure, TattvaAudio>> audioFromIdOption}) {
    return _AudioState(
      audioCategoriesOption: audioCategoriesOption,
      likedAudios: likedAudios,
      loadingSubCategory: loadingSubCategory,
      selectedAudioCategory: selectedAudioCategory,
      audioFromIdOption: audioFromIdOption,
    );
  }
}

/// @nodoc
const $AudioState = _$AudioStateTearOff();

/// @nodoc
mixin _$AudioState {
  Option<Either<Failure, List<AudioCategory>>> get audioCategoriesOption =>
      throw _privateConstructorUsedError;
  List<String> get likedAudios => throw _privateConstructorUsedError;
  bool get loadingSubCategory => throw _privateConstructorUsedError;
  Option<AudioCategory> get selectedAudioCategory =>
      throw _privateConstructorUsedError;
  Option<Either<Failure, TattvaAudio>> get audioFromIdOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AudioStateCopyWith<AudioState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AudioStateCopyWith<$Res> {
  factory $AudioStateCopyWith(
          AudioState value, $Res Function(AudioState) then) =
      _$AudioStateCopyWithImpl<$Res>;
  $Res call(
      {Option<Either<Failure, List<AudioCategory>>> audioCategoriesOption,
      List<String> likedAudios,
      bool loadingSubCategory,
      Option<AudioCategory> selectedAudioCategory,
      Option<Either<Failure, TattvaAudio>> audioFromIdOption});
}

/// @nodoc
class _$AudioStateCopyWithImpl<$Res> implements $AudioStateCopyWith<$Res> {
  _$AudioStateCopyWithImpl(this._value, this._then);

  final AudioState _value;
  // ignore: unused_field
  final $Res Function(AudioState) _then;

  @override
  $Res call({
    Object? audioCategoriesOption = freezed,
    Object? likedAudios = freezed,
    Object? loadingSubCategory = freezed,
    Object? selectedAudioCategory = freezed,
    Object? audioFromIdOption = freezed,
  }) {
    return _then(_value.copyWith(
      audioCategoriesOption: audioCategoriesOption == freezed
          ? _value.audioCategoriesOption
          : audioCategoriesOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, List<AudioCategory>>>,
      likedAudios: likedAudios == freezed
          ? _value.likedAudios
          : likedAudios // ignore: cast_nullable_to_non_nullable
              as List<String>,
      loadingSubCategory: loadingSubCategory == freezed
          ? _value.loadingSubCategory
          : loadingSubCategory // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedAudioCategory: selectedAudioCategory == freezed
          ? _value.selectedAudioCategory
          : selectedAudioCategory // ignore: cast_nullable_to_non_nullable
              as Option<AudioCategory>,
      audioFromIdOption: audioFromIdOption == freezed
          ? _value.audioFromIdOption
          : audioFromIdOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, TattvaAudio>>,
    ));
  }
}

/// @nodoc
abstract class _$AudioStateCopyWith<$Res> implements $AudioStateCopyWith<$Res> {
  factory _$AudioStateCopyWith(
          _AudioState value, $Res Function(_AudioState) then) =
      __$AudioStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Option<Either<Failure, List<AudioCategory>>> audioCategoriesOption,
      List<String> likedAudios,
      bool loadingSubCategory,
      Option<AudioCategory> selectedAudioCategory,
      Option<Either<Failure, TattvaAudio>> audioFromIdOption});
}

/// @nodoc
class __$AudioStateCopyWithImpl<$Res> extends _$AudioStateCopyWithImpl<$Res>
    implements _$AudioStateCopyWith<$Res> {
  __$AudioStateCopyWithImpl(
      _AudioState _value, $Res Function(_AudioState) _then)
      : super(_value, (v) => _then(v as _AudioState));

  @override
  _AudioState get _value => super._value as _AudioState;

  @override
  $Res call({
    Object? audioCategoriesOption = freezed,
    Object? likedAudios = freezed,
    Object? loadingSubCategory = freezed,
    Object? selectedAudioCategory = freezed,
    Object? audioFromIdOption = freezed,
  }) {
    return _then(_AudioState(
      audioCategoriesOption: audioCategoriesOption == freezed
          ? _value.audioCategoriesOption
          : audioCategoriesOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, List<AudioCategory>>>,
      likedAudios: likedAudios == freezed
          ? _value.likedAudios
          : likedAudios // ignore: cast_nullable_to_non_nullable
              as List<String>,
      loadingSubCategory: loadingSubCategory == freezed
          ? _value.loadingSubCategory
          : loadingSubCategory // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedAudioCategory: selectedAudioCategory == freezed
          ? _value.selectedAudioCategory
          : selectedAudioCategory // ignore: cast_nullable_to_non_nullable
              as Option<AudioCategory>,
      audioFromIdOption: audioFromIdOption == freezed
          ? _value.audioFromIdOption
          : audioFromIdOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, TattvaAudio>>,
    ));
  }
}

/// @nodoc
class _$_AudioState implements _AudioState {
  const _$_AudioState(
      {required this.audioCategoriesOption,
      required this.likedAudios,
      required this.loadingSubCategory,
      required this.selectedAudioCategory,
      required this.audioFromIdOption});

  @override
  final Option<Either<Failure, List<AudioCategory>>> audioCategoriesOption;
  @override
  final List<String> likedAudios;
  @override
  final bool loadingSubCategory;
  @override
  final Option<AudioCategory> selectedAudioCategory;
  @override
  final Option<Either<Failure, TattvaAudio>> audioFromIdOption;

  @override
  String toString() {
    return 'AudioState(audioCategoriesOption: $audioCategoriesOption, likedAudios: $likedAudios, loadingSubCategory: $loadingSubCategory, selectedAudioCategory: $selectedAudioCategory, audioFromIdOption: $audioFromIdOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AudioState &&
            (identical(other.audioCategoriesOption, audioCategoriesOption) ||
                const DeepCollectionEquality().equals(
                    other.audioCategoriesOption, audioCategoriesOption)) &&
            (identical(other.likedAudios, likedAudios) ||
                const DeepCollectionEquality()
                    .equals(other.likedAudios, likedAudios)) &&
            (identical(other.loadingSubCategory, loadingSubCategory) ||
                const DeepCollectionEquality()
                    .equals(other.loadingSubCategory, loadingSubCategory)) &&
            (identical(other.selectedAudioCategory, selectedAudioCategory) ||
                const DeepCollectionEquality().equals(
                    other.selectedAudioCategory, selectedAudioCategory)) &&
            (identical(other.audioFromIdOption, audioFromIdOption) ||
                const DeepCollectionEquality()
                    .equals(other.audioFromIdOption, audioFromIdOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(audioCategoriesOption) ^
      const DeepCollectionEquality().hash(likedAudios) ^
      const DeepCollectionEquality().hash(loadingSubCategory) ^
      const DeepCollectionEquality().hash(selectedAudioCategory) ^
      const DeepCollectionEquality().hash(audioFromIdOption);

  @JsonKey(ignore: true)
  @override
  _$AudioStateCopyWith<_AudioState> get copyWith =>
      __$AudioStateCopyWithImpl<_AudioState>(this, _$identity);
}

abstract class _AudioState implements AudioState {
  const factory _AudioState(
          {required Option<Either<Failure, List<AudioCategory>>>
              audioCategoriesOption,
          required List<String> likedAudios,
          required bool loadingSubCategory,
          required Option<AudioCategory> selectedAudioCategory,
          required Option<Either<Failure, TattvaAudio>> audioFromIdOption}) =
      _$_AudioState;

  @override
  Option<Either<Failure, List<AudioCategory>>> get audioCategoriesOption =>
      throw _privateConstructorUsedError;
  @override
  List<String> get likedAudios => throw _privateConstructorUsedError;
  @override
  bool get loadingSubCategory => throw _privateConstructorUsedError;
  @override
  Option<AudioCategory> get selectedAudioCategory =>
      throw _privateConstructorUsedError;
  @override
  Option<Either<Failure, TattvaAudio>> get audioFromIdOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AudioStateCopyWith<_AudioState> get copyWith =>
      throw _privateConstructorUsedError;
}
