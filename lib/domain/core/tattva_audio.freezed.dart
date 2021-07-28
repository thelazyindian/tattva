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
      required double durationInMins,
      required String link,
      required List<TattvaImage> thumbnail,
      required String mediaArt,
      required List<TattvaAudioFile> audioFile,
      DateTime? createdAt}) {
    return _TattvaAudio(
      id: id,
      name: name,
      language: language,
      durationInMins: durationInMins,
      link: link,
      thumbnail: thumbnail,
      mediaArt: mediaArt,
      audioFile: audioFile,
      createdAt: createdAt,
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
  double get durationInMins => throw _privateConstructorUsedError;
  String get link => throw _privateConstructorUsedError;
  List<TattvaImage> get thumbnail => throw _privateConstructorUsedError;
  String get mediaArt => throw _privateConstructorUsedError;
  List<TattvaAudioFile> get audioFile => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;

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
      double durationInMins,
      String link,
      List<TattvaImage> thumbnail,
      String mediaArt,
      List<TattvaAudioFile> audioFile,
      DateTime? createdAt});
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
    Object? link = freezed,
    Object? thumbnail = freezed,
    Object? mediaArt = freezed,
    Object? audioFile = freezed,
    Object? createdAt = freezed,
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
              as double,
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail: thumbnail == freezed
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as List<TattvaImage>,
      mediaArt: mediaArt == freezed
          ? _value.mediaArt
          : mediaArt // ignore: cast_nullable_to_non_nullable
              as String,
      audioFile: audioFile == freezed
          ? _value.audioFile
          : audioFile // ignore: cast_nullable_to_non_nullable
              as List<TattvaAudioFile>,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
      double durationInMins,
      String link,
      List<TattvaImage> thumbnail,
      String mediaArt,
      List<TattvaAudioFile> audioFile,
      DateTime? createdAt});
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
    Object? link = freezed,
    Object? thumbnail = freezed,
    Object? mediaArt = freezed,
    Object? audioFile = freezed,
    Object? createdAt = freezed,
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
              as double,
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail: thumbnail == freezed
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as List<TattvaImage>,
      mediaArt: mediaArt == freezed
          ? _value.mediaArt
          : mediaArt // ignore: cast_nullable_to_non_nullable
              as String,
      audioFile: audioFile == freezed
          ? _value.audioFile
          : audioFile // ignore: cast_nullable_to_non_nullable
              as List<TattvaAudioFile>,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
      required this.link,
      required this.thumbnail,
      required this.mediaArt,
      required this.audioFile,
      this.createdAt});

  factory _$_TattvaAudio.fromJson(Map<String, dynamic> json) =>
      _$_$_TattvaAudioFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String language;
  @override
  final double durationInMins;
  @override
  final String link;
  @override
  final List<TattvaImage> thumbnail;
  @override
  final String mediaArt;
  @override
  final List<TattvaAudioFile> audioFile;
  @override
  final DateTime? createdAt;

  @override
  String toString() {
    return 'TattvaAudio(id: $id, name: $name, language: $language, durationInMins: $durationInMins, link: $link, thumbnail: $thumbnail, mediaArt: $mediaArt, audioFile: $audioFile, createdAt: $createdAt)';
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
            (identical(other.link, link) ||
                const DeepCollectionEquality().equals(other.link, link)) &&
            (identical(other.thumbnail, thumbnail) ||
                const DeepCollectionEquality()
                    .equals(other.thumbnail, thumbnail)) &&
            (identical(other.mediaArt, mediaArt) ||
                const DeepCollectionEquality()
                    .equals(other.mediaArt, mediaArt)) &&
            (identical(other.audioFile, audioFile) ||
                const DeepCollectionEquality()
                    .equals(other.audioFile, audioFile)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(language) ^
      const DeepCollectionEquality().hash(durationInMins) ^
      const DeepCollectionEquality().hash(link) ^
      const DeepCollectionEquality().hash(thumbnail) ^
      const DeepCollectionEquality().hash(mediaArt) ^
      const DeepCollectionEquality().hash(audioFile) ^
      const DeepCollectionEquality().hash(createdAt);

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
      required double durationInMins,
      required String link,
      required List<TattvaImage> thumbnail,
      required String mediaArt,
      required List<TattvaAudioFile> audioFile,
      DateTime? createdAt}) = _$_TattvaAudio;

  factory _TattvaAudio.fromJson(Map<String, dynamic> json) =
      _$_TattvaAudio.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get language => throw _privateConstructorUsedError;
  @override
  double get durationInMins => throw _privateConstructorUsedError;
  @override
  String get link => throw _privateConstructorUsedError;
  @override
  List<TattvaImage> get thumbnail => throw _privateConstructorUsedError;
  @override
  String get mediaArt => throw _privateConstructorUsedError;
  @override
  List<TattvaAudioFile> get audioFile => throw _privateConstructorUsedError;
  @override
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TattvaAudioCopyWith<_TattvaAudio> get copyWith =>
      throw _privateConstructorUsedError;
}
