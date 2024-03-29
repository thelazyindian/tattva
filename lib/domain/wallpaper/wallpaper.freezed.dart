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
      required String imageSmall,
      required String imageMedium,
      required List<TattvaImage> image,
      required String link,
      DateTime? createdAt}) {
    return _Wallpaper(
      id: id,
      name: name,
      imageSmall: imageSmall,
      imageMedium: imageMedium,
      image: image,
      link: link,
      createdAt: createdAt,
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
  String get imageSmall => throw _privateConstructorUsedError;
  String get imageMedium => throw _privateConstructorUsedError;
  List<TattvaImage> get image => throw _privateConstructorUsedError;
  String get link => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;

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
      String imageSmall,
      String imageMedium,
      List<TattvaImage> image,
      String link,
      DateTime? createdAt});
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
    Object? imageSmall = freezed,
    Object? imageMedium = freezed,
    Object? image = freezed,
    Object? link = freezed,
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
      imageSmall: imageSmall == freezed
          ? _value.imageSmall
          : imageSmall // ignore: cast_nullable_to_non_nullable
              as String,
      imageMedium: imageMedium == freezed
          ? _value.imageMedium
          : imageMedium // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as List<TattvaImage>,
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
      String imageSmall,
      String imageMedium,
      List<TattvaImage> image,
      String link,
      DateTime? createdAt});
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
    Object? imageSmall = freezed,
    Object? imageMedium = freezed,
    Object? image = freezed,
    Object? link = freezed,
    Object? createdAt = freezed,
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
      imageSmall: imageSmall == freezed
          ? _value.imageSmall
          : imageSmall // ignore: cast_nullable_to_non_nullable
              as String,
      imageMedium: imageMedium == freezed
          ? _value.imageMedium
          : imageMedium // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as List<TattvaImage>,
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Wallpaper implements _Wallpaper {
  const _$_Wallpaper(
      {required this.id,
      required this.name,
      required this.imageSmall,
      required this.imageMedium,
      required this.image,
      required this.link,
      this.createdAt});

  factory _$_Wallpaper.fromJson(Map<String, dynamic> json) =>
      _$_$_WallpaperFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String imageSmall;
  @override
  final String imageMedium;
  @override
  final List<TattvaImage> image;
  @override
  final String link;
  @override
  final DateTime? createdAt;

  @override
  String toString() {
    return 'Wallpaper(id: $id, name: $name, imageSmall: $imageSmall, imageMedium: $imageMedium, image: $image, link: $link, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Wallpaper &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.imageSmall, imageSmall) ||
                const DeepCollectionEquality()
                    .equals(other.imageSmall, imageSmall)) &&
            (identical(other.imageMedium, imageMedium) ||
                const DeepCollectionEquality()
                    .equals(other.imageMedium, imageMedium)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.link, link) ||
                const DeepCollectionEquality().equals(other.link, link)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(imageSmall) ^
      const DeepCollectionEquality().hash(imageMedium) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(link) ^
      const DeepCollectionEquality().hash(createdAt);

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
      required String imageSmall,
      required String imageMedium,
      required List<TattvaImage> image,
      required String link,
      DateTime? createdAt}) = _$_Wallpaper;

  factory _Wallpaper.fromJson(Map<String, dynamic> json) =
      _$_Wallpaper.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get imageSmall => throw _privateConstructorUsedError;
  @override
  String get imageMedium => throw _privateConstructorUsedError;
  @override
  List<TattvaImage> get image => throw _privateConstructorUsedError;
  @override
  String get link => throw _privateConstructorUsedError;
  @override
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$WallpaperCopyWith<_Wallpaper> get copyWith =>
      throw _privateConstructorUsedError;
}
