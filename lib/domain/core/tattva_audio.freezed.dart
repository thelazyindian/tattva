// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'tattva_audio.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TattvaAudio _$TattvaAudioFromJson(Map<String, dynamic> json) {
  return _TattvaAudio.fromJson(json);
}

/// @nodoc
class _$TattvaAudioTearOff {
  const _$TattvaAudioTearOff();

  _TattvaAudio call(
      {required String id,
      required String name,
      required String language,
      required int durationInMins,
      required List<TattvaImage> thumbnail,
      required List<TattvaAudioFile> audioFile}) {
    return _TattvaAudio(
      id: id,
      name: name,
      language: language,
      durationInMins: durationInMins,
      thumbnail: thumbnail,
      audioFile: audioFile,
    );
  }

  TattvaAudio fromJson(Map<String, Object> json) {
    return TattvaAudio.fromJson(json);
  }
}

/// @nodoc
const $TattvaAudio = _$TattvaAudioTearOff();

/// @nodoc
mixin _$TattvaAudio {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get language => throw _privateConstructorUsedError;
  int get durationInMins => throw _privateConstructorUsedError;
  List<TattvaImage> get thumbnail => throw _privateConstructorUsedError;
  List<TattvaAudioFile> get audioFile => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TattvaAudioCopyWith<TattvaAudio> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TattvaAudioCopyWith<$Res> {
  factory $TattvaAudioCopyWith(
          TattvaAudio value, $Res Function(TattvaAudio) then) =
      _$TattvaAudioCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      String language,
      int durationInMins,
      List<TattvaImage> thumbnail,
      List<TattvaAudioFile> audioFile});
}

/// @nodoc
class _$TattvaAudioCopyWithImpl<$Res> implements $TattvaAudioCopyWith<$Res> {
  _$TattvaAudioCopyWithImpl(this._value, this._then);

  final TattvaAudio _value;
  // ignore: unused_field
  final $Res Function(TattvaAudio) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? language = freezed,
    Object? durationInMins = freezed,
    Object? thumbnail = freezed,
    Object? audioFile = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      durationInMins: durationInMins == freezed
          ? _value.durationInMins
          : durationInMins // ignore: cast_nullable_to_non_nullable
              as int,
      thumbnail: thumbnail == freezed
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as List<TattvaImage>,
      audioFile: audioFile == freezed
          ? _value.audioFile
          : audioFile // ignore: cast_nullable_to_non_nullable
              as List<TattvaAudioFile>,
    ));
  }
}

/// @nodoc
abstract class _$TattvaAudioCopyWith<$Res>
    implements $TattvaAudioCopyWith<$Res> {
  factory _$TattvaAudioCopyWith(
          _TattvaAudio value, $Res Function(_TattvaAudio) then) =
      __$TattvaAudioCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      String language,
      int durationInMins,
      List<TattvaImage> thumbnail,
      List<TattvaAudioFile> audioFile});
}

/// @nodoc
class __$TattvaAudioCopyWithImpl<$Res> extends _$TattvaAudioCopyWithImpl<$Res>
    implements _$TattvaAudioCopyWith<$Res> {
  __$TattvaAudioCopyWithImpl(
      _TattvaAudio _value, $Res Function(_TattvaAudio) _then)
      : super(_value, (v) => _then(v as _TattvaAudio));

  @override
  _TattvaAudio get _value => super._value as _TattvaAudio;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? language = freezed,
    Object? durationInMins = freezed,
    Object? thumbnail = freezed,
    Object? audioFile = freezed,
  }) {
    return _then(_TattvaAudio(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      durationInMins: durationInMins == freezed
          ? _value.durationInMins
          : durationInMins // ignore: cast_nullable_to_non_nullable
              as int,
      thumbnail: thumbnail == freezed
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as List<TattvaImage>,
      audioFile: audioFile == freezed
          ? _value.audioFile
          : audioFile // ignore: cast_nullable_to_non_nullable
              as List<TattvaAudioFile>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_TattvaAudio implements _TattvaAudio {
  const _$_TattvaAudio(
      {required this.id,
      required this.name,
      required this.language,
      required this.durationInMins,
      required this.thumbnail,
      required this.audioFile});

  factory _$_TattvaAudio.fromJson(Map<String, dynamic> json) =>
      _$_$_TattvaAudioFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String language;
  @override
  final int durationInMins;
  @override
  final List<TattvaImage> thumbnail;
  @override
  final List<TattvaAudioFile> audioFile;

  @override
  String toString() {
    return 'TattvaAudio(id: $id, name: $name, language: $language, durationInMins: $durationInMins, thumbnail: $thumbnail, audioFile: $audioFile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TattvaAudio &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.language, language) ||
                const DeepCollectionEquality()
                    .equals(other.language, language)) &&
            (identical(other.durationInMins, durationInMins) ||
                const DeepCollectionEquality()
                    .equals(other.durationInMins, durationInMins)) &&
            (identical(other.thumbnail, thumbnail) ||
                const DeepCollectionEquality()
                    .equals(other.thumbnail, thumbnail)) &&
            (identical(other.audioFile, audioFile) ||
                const DeepCollectionEquality()
                    .equals(other.audioFile, audioFile)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(language) ^
      const DeepCollectionEquality().hash(durationInMins) ^
      const DeepCollectionEquality().hash(thumbnail) ^
      const DeepCollectionEquality().hash(audioFile);

  @JsonKey(ignore: true)
  @override
  _$TattvaAudioCopyWith<_TattvaAudio> get copyWith =>
      __$TattvaAudioCopyWithImpl<_TattvaAudio>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TattvaAudioToJson(this);
  }
}

abstract class _TattvaAudio implements TattvaAudio {
  const factory _TattvaAudio(
      {required String id,
      required String name,
      required String language,
      required int durationInMins,
      required List<TattvaImage> thumbnail,
      required List<TattvaAudioFile> audioFile}) = _$_TattvaAudio;

  factory _TattvaAudio.fromJson(Map<String, dynamic> json) =
      _$_TattvaAudio.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get language => throw _privateConstructorUsedError;
  @override
  int get durationInMins => throw _privateConstructorUsedError;
  @override
  List<TattvaImage> get thumbnail => throw _privateConstructorUsedError;
  @override
  List<TattvaAudioFile> get audioFile => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TattvaAudioCopyWith<_TattvaAudio> get copyWith =>
      throw _privateConstructorUsedError;
}