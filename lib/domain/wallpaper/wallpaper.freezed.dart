// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'wallpaper.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Wallpaper _$WallpaperFromJson(Map<String, dynamic> json) {
  return _Wallpaper.fromJson(json);
}

/// @nodoc
class _$WallpaperTearOff {
  const _$WallpaperTearOff();

  _Wallpaper call(
      {required String id,
      required String name,
      required List<TattvaImage> thumbnail,
      required List<TattvaImage> image}) {
    return _Wallpaper(
      id: id,
      name: name,
      thumbnail: thumbnail,
      image: image,
    );
  }

  Wallpaper fromJson(Map<String, Object> json) {
    return Wallpaper.fromJson(json);
  }
}

/// @nodoc
const $Wallpaper = _$WallpaperTearOff();

/// @nodoc
mixin _$Wallpaper {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<TattvaImage> get thumbnail => throw _privateConstructorUsedError;
  List<TattvaImage> get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WallpaperCopyWith<Wallpaper> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WallpaperCopyWith<$Res> {
  factory $WallpaperCopyWith(Wallpaper value, $Res Function(Wallpaper) then) =
      _$WallpaperCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      List<TattvaImage> thumbnail,
      List<TattvaImage> image});
}

/// @nodoc
class _$WallpaperCopyWithImpl<$Res> implements $WallpaperCopyWith<$Res> {
  _$WallpaperCopyWithImpl(this._value, this._then);

  final Wallpaper _value;
  // ignore: unused_field
  final $Res Function(Wallpaper) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? thumbnail = freezed,
    Object? image = freezed,
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
      thumbnail: thumbnail == freezed
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as List<TattvaImage>,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as List<TattvaImage>,
    ));
  }
}

/// @nodoc
abstract class _$WallpaperCopyWith<$Res> implements $WallpaperCopyWith<$Res> {
  factory _$WallpaperCopyWith(
          _Wallpaper value, $Res Function(_Wallpaper) then) =
      __$WallpaperCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      List<TattvaImage> thumbnail,
      List<TattvaImage> image});
}

/// @nodoc
class __$WallpaperCopyWithImpl<$Res> extends _$WallpaperCopyWithImpl<$Res>
    implements _$WallpaperCopyWith<$Res> {
  __$WallpaperCopyWithImpl(_Wallpaper _value, $Res Function(_Wallpaper) _then)
      : super(_value, (v) => _then(v as _Wallpaper));

  @override
  _Wallpaper get _value => super._value as _Wallpaper;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? thumbnail = freezed,
    Object? image = freezed,
  }) {
    return _then(_Wallpaper(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail: thumbnail == freezed
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as List<TattvaImage>,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as List<TattvaImage>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Wallpaper implements _Wallpaper {
  const _$_Wallpaper(
      {required this.id,
      required this.name,
      required this.thumbnail,
      required this.image});

  factory _$_Wallpaper.fromJson(Map<String, dynamic> json) =>
      _$_$_WallpaperFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final List<TattvaImage> thumbnail;
  @override
  final List<TattvaImage> image;

  @override
  String toString() {
    return 'Wallpaper(id: $id, name: $name, thumbnail: $thumbnail, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Wallpaper &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.thumbnail, thumbnail) ||
                const DeepCollectionEquality()
                    .equals(other.thumbnail, thumbnail)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(thumbnail) ^
      const DeepCollectionEquality().hash(image);

  @JsonKey(ignore: true)
  @override
  _$WallpaperCopyWith<_Wallpaper> get copyWith =>
      __$WallpaperCopyWithImpl<_Wallpaper>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_WallpaperToJson(this);
  }
}

abstract class _Wallpaper implements Wallpaper {
  const factory _Wallpaper(
      {required String id,
      required String name,
      required List<TattvaImage> thumbnail,
      required List<TattvaImage> image}) = _$_Wallpaper;

  factory _Wallpaper.fromJson(Map<String, dynamic> json) =
      _$_Wallpaper.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  List<TattvaImage> get thumbnail => throw _privateConstructorUsedError;
  @override
  List<TattvaImage> get image => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$WallpaperCopyWith<_Wallpaper> get copyWith =>
      throw _privateConstructorUsedError;
}
