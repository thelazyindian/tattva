// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'tattva_image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TattvaImage _$TattvaImageFromJson(Map<String, dynamic> json) {
  return _TattvaImage.fromJson(json);
}

/// @nodoc
class _$TattvaImageTearOff {
  const _$TattvaImageTearOff();

  _TattvaImage call({required String id, String? file, required String url}) {
    return _TattvaImage(
      id: id,
      file: file,
      url: url,
    );
  }

  TattvaImage fromJson(Map<String, Object> json) {
    return TattvaImage.fromJson(json);
  }
}

/// @nodoc
const $TattvaImage = _$TattvaImageTearOff();

/// @nodoc
mixin _$TattvaImage {
  String get id => throw _privateConstructorUsedError;
  String? get file => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TattvaImageCopyWith<TattvaImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TattvaImageCopyWith<$Res> {
  factory $TattvaImageCopyWith(
          TattvaImage value, $Res Function(TattvaImage) then) =
      _$TattvaImageCopyWithImpl<$Res>;
  $Res call({String id, String? file, String url});
}

/// @nodoc
class _$TattvaImageCopyWithImpl<$Res> implements $TattvaImageCopyWith<$Res> {
  _$TattvaImageCopyWithImpl(this._value, this._then);

  final TattvaImage _value;
  // ignore: unused_field
  final $Res Function(TattvaImage) _then;

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
              as String?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$TattvaImageCopyWith<$Res>
    implements $TattvaImageCopyWith<$Res> {
  factory _$TattvaImageCopyWith(
          _TattvaImage value, $Res Function(_TattvaImage) then) =
      __$TattvaImageCopyWithImpl<$Res>;
  @override
  $Res call({String id, String? file, String url});
}

/// @nodoc
class __$TattvaImageCopyWithImpl<$Res> extends _$TattvaImageCopyWithImpl<$Res>
    implements _$TattvaImageCopyWith<$Res> {
  __$TattvaImageCopyWithImpl(
      _TattvaImage _value, $Res Function(_TattvaImage) _then)
      : super(_value, (v) => _then(v as _TattvaImage));

  @override
  _TattvaImage get _value => super._value as _TattvaImage;

  @override
  $Res call({
    Object? id = freezed,
    Object? file = freezed,
    Object? url = freezed,
  }) {
    return _then(_TattvaImage(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      file: file == freezed
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as String?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_TattvaImage implements _TattvaImage {
  const _$_TattvaImage({required this.id, this.file, required this.url});

  factory _$_TattvaImage.fromJson(Map<String, dynamic> json) =>
      _$_$_TattvaImageFromJson(json);

  @override
  final String id;
  @override
  final String? file;
  @override
  final String url;

  @override
  String toString() {
    return 'TattvaImage(id: $id, file: $file, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TattvaImage &&
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
  _$TattvaImageCopyWith<_TattvaImage> get copyWith =>
      __$TattvaImageCopyWithImpl<_TattvaImage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TattvaImageToJson(this);
  }
}

abstract class _TattvaImage implements TattvaImage {
  const factory _TattvaImage(
      {required String id, String? file, required String url}) = _$_TattvaImage;

  factory _TattvaImage.fromJson(Map<String, dynamic> json) =
      _$_TattvaImage.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String? get file => throw _privateConstructorUsedError;
  @override
  String get url => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TattvaImageCopyWith<_TattvaImage> get copyWith =>
      throw _privateConstructorUsedError;
}
