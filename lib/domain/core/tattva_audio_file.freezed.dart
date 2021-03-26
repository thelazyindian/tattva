// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'tattva_audio_file.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TattvaAudioFile _$TattvaAudioFileFromJson(Map<String, dynamic> json) {
  return _TattvaAudioFile.fromJson(json);
}

/// @nodoc
class _$TattvaAudioFileTearOff {
  const _$TattvaAudioFileTearOff();

  _TattvaAudioFile call(
      {required String id, required String file, required String url}) {
    return _TattvaAudioFile(
      id: id,
      file: file,
      url: url,
    );
  }

  TattvaAudioFile fromJson(Map<String, Object> json) {
    return TattvaAudioFile.fromJson(json);
  }
}

/// @nodoc
const $TattvaAudioFile = _$TattvaAudioFileTearOff();

/// @nodoc
mixin _$TattvaAudioFile {
  String get id => throw _privateConstructorUsedError;
  String get file => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TattvaAudioFileCopyWith<TattvaAudioFile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TattvaAudioFileCopyWith<$Res> {
  factory $TattvaAudioFileCopyWith(
          TattvaAudioFile value, $Res Function(TattvaAudioFile) then) =
      _$TattvaAudioFileCopyWithImpl<$Res>;
  $Res call({String id, String file, String url});
}

/// @nodoc
class _$TattvaAudioFileCopyWithImpl<$Res>
    implements $TattvaAudioFileCopyWith<$Res> {
  _$TattvaAudioFileCopyWithImpl(this._value, this._then);

  final TattvaAudioFile _value;
  // ignore: unused_field
  final $Res Function(TattvaAudioFile) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? file = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      file: file == freezed
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$TattvaAudioFileCopyWith<$Res>
    implements $TattvaAudioFileCopyWith<$Res> {
  factory _$TattvaAudioFileCopyWith(
          _TattvaAudioFile value, $Res Function(_TattvaAudioFile) then) =
      __$TattvaAudioFileCopyWithImpl<$Res>;
  @override
  $Res call({String id, String file, String url});
}

/// @nodoc
class __$TattvaAudioFileCopyWithImpl<$Res>
    extends _$TattvaAudioFileCopyWithImpl<$Res>
    implements _$TattvaAudioFileCopyWith<$Res> {
  __$TattvaAudioFileCopyWithImpl(
      _TattvaAudioFile _value, $Res Function(_TattvaAudioFile) _then)
      : super(_value, (v) => _then(v as _TattvaAudioFile));

  @override
  _TattvaAudioFile get _value => super._value as _TattvaAudioFile;

  @override
  $Res call({
    Object? id = freezed,
    Object? file = freezed,
    Object? url = freezed,
  }) {
    return _then(_TattvaAudioFile(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      file: file == freezed
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_TattvaAudioFile implements _TattvaAudioFile {
  const _$_TattvaAudioFile(
      {required this.id, required this.file, required this.url});

  factory _$_TattvaAudioFile.fromJson(Map<String, dynamic> json) =>
      _$_$_TattvaAudioFileFromJson(json);

  @override
  final String id;
  @override
  final String file;
  @override
  final String url;

  @override
  String toString() {
    return 'TattvaAudioFile(id: $id, file: $file, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TattvaAudioFile &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.file, file) ||
                const DeepCollectionEquality().equals(other.file, file)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(file) ^
      const DeepCollectionEquality().hash(url);

  @JsonKey(ignore: true)
  @override
  _$TattvaAudioFileCopyWith<_TattvaAudioFile> get copyWith =>
      __$TattvaAudioFileCopyWithImpl<_TattvaAudioFile>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TattvaAudioFileToJson(this);
  }
}

abstract class _TattvaAudioFile implements TattvaAudioFile {
  const factory _TattvaAudioFile(
      {required String id,
      required String file,
      required String url}) = _$_TattvaAudioFile;

  factory _TattvaAudioFile.fromJson(Map<String, dynamic> json) =
      _$_TattvaAudioFile.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get file => throw _privateConstructorUsedError;
  @override
  String get url => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TattvaAudioFileCopyWith<_TattvaAudioFile> get copyWith =>
      throw _privateConstructorUsedError;
}
