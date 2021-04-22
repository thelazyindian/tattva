// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'liked_items_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LikedItemsDataModel _$LikedItemsDataModelFromJson(Map<String, dynamic> json) {
  return _LikedItemsDataModel.fromJson(json);
}

/// @nodoc
class _$LikedItemsDataModelTearOff {
  const _$LikedItemsDataModelTearOff();

  _LikedItemsDataModel call(
      {List<TattvaAudio> likedAudios = const [],
      List<Wallpaper> likedWallpapers = const [],
      List<Blog> likedBlogs = const []}) {
    return _LikedItemsDataModel(
      likedAudios: likedAudios,
      likedWallpapers: likedWallpapers,
      likedBlogs: likedBlogs,
    );
  }

  LikedItemsDataModel fromJson(Map<String, Object> json) {
    return LikedItemsDataModel.fromJson(json);
  }
}

/// @nodoc
const $LikedItemsDataModel = _$LikedItemsDataModelTearOff();

/// @nodoc
mixin _$LikedItemsDataModel {
  List<TattvaAudio> get likedAudios => throw _privateConstructorUsedError;
  List<Wallpaper> get likedWallpapers => throw _privateConstructorUsedError;
  List<Blog> get likedBlogs => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LikedItemsDataModelCopyWith<LikedItemsDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LikedItemsDataModelCopyWith<$Res> {
  factory $LikedItemsDataModelCopyWith(
          LikedItemsDataModel value, $Res Function(LikedItemsDataModel) then) =
      _$LikedItemsDataModelCopyWithImpl<$Res>;
  $Res call(
      {List<TattvaAudio> likedAudios,
      List<Wallpaper> likedWallpapers,
      List<Blog> likedBlogs});
}

/// @nodoc
class _$LikedItemsDataModelCopyWithImpl<$Res>
    implements $LikedItemsDataModelCopyWith<$Res> {
  _$LikedItemsDataModelCopyWithImpl(this._value, this._then);

  final LikedItemsDataModel _value;
  // ignore: unused_field
  final $Res Function(LikedItemsDataModel) _then;

  @override
  $Res call({
    Object? likedAudios = freezed,
    Object? likedWallpapers = freezed,
    Object? likedBlogs = freezed,
  }) {
    return _then(_value.copyWith(
      likedAudios: likedAudios == freezed
          ? _value.likedAudios
          : likedAudios // ignore: cast_nullable_to_non_nullable
              as List<TattvaAudio>,
      likedWallpapers: likedWallpapers == freezed
          ? _value.likedWallpapers
          : likedWallpapers // ignore: cast_nullable_to_non_nullable
              as List<Wallpaper>,
      likedBlogs: likedBlogs == freezed
          ? _value.likedBlogs
          : likedBlogs // ignore: cast_nullable_to_non_nullable
              as List<Blog>,
    ));
  }
}

/// @nodoc
abstract class _$LikedItemsDataModelCopyWith<$Res>
    implements $LikedItemsDataModelCopyWith<$Res> {
  factory _$LikedItemsDataModelCopyWith(_LikedItemsDataModel value,
          $Res Function(_LikedItemsDataModel) then) =
      __$LikedItemsDataModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<TattvaAudio> likedAudios,
      List<Wallpaper> likedWallpapers,
      List<Blog> likedBlogs});
}

/// @nodoc
class __$LikedItemsDataModelCopyWithImpl<$Res>
    extends _$LikedItemsDataModelCopyWithImpl<$Res>
    implements _$LikedItemsDataModelCopyWith<$Res> {
  __$LikedItemsDataModelCopyWithImpl(
      _LikedItemsDataModel _value, $Res Function(_LikedItemsDataModel) _then)
      : super(_value, (v) => _then(v as _LikedItemsDataModel));

  @override
  _LikedItemsDataModel get _value => super._value as _LikedItemsDataModel;

  @override
  $Res call({
    Object? likedAudios = freezed,
    Object? likedWallpapers = freezed,
    Object? likedBlogs = freezed,
  }) {
    return _then(_LikedItemsDataModel(
      likedAudios: likedAudios == freezed
          ? _value.likedAudios
          : likedAudios // ignore: cast_nullable_to_non_nullable
              as List<TattvaAudio>,
      likedWallpapers: likedWallpapers == freezed
          ? _value.likedWallpapers
          : likedWallpapers // ignore: cast_nullable_to_non_nullable
              as List<Wallpaper>,
      likedBlogs: likedBlogs == freezed
          ? _value.likedBlogs
          : likedBlogs // ignore: cast_nullable_to_non_nullable
              as List<Blog>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_LikedItemsDataModel implements _LikedItemsDataModel {
  const _$_LikedItemsDataModel(
      {this.likedAudios = const [],
      this.likedWallpapers = const [],
      this.likedBlogs = const []});

  factory _$_LikedItemsDataModel.fromJson(Map<String, dynamic> json) =>
      _$_$_LikedItemsDataModelFromJson(json);

  @JsonKey(defaultValue: const [])
  @override
  final List<TattvaAudio> likedAudios;
  @JsonKey(defaultValue: const [])
  @override
  final List<Wallpaper> likedWallpapers;
  @JsonKey(defaultValue: const [])
  @override
  final List<Blog> likedBlogs;

  @override
  String toString() {
    return 'LikedItemsDataModel(likedAudios: $likedAudios, likedWallpapers: $likedWallpapers, likedBlogs: $likedBlogs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LikedItemsDataModel &&
            (identical(other.likedAudios, likedAudios) ||
                const DeepCollectionEquality()
                    .equals(other.likedAudios, likedAudios)) &&
            (identical(other.likedWallpapers, likedWallpapers) ||
                const DeepCollectionEquality()
                    .equals(other.likedWallpapers, likedWallpapers)) &&
            (identical(other.likedBlogs, likedBlogs) ||
                const DeepCollectionEquality()
                    .equals(other.likedBlogs, likedBlogs)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(likedAudios) ^
      const DeepCollectionEquality().hash(likedWallpapers) ^
      const DeepCollectionEquality().hash(likedBlogs);

  @JsonKey(ignore: true)
  @override
  _$LikedItemsDataModelCopyWith<_LikedItemsDataModel> get copyWith =>
      __$LikedItemsDataModelCopyWithImpl<_LikedItemsDataModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LikedItemsDataModelToJson(this);
  }
}

abstract class _LikedItemsDataModel implements LikedItemsDataModel {
  const factory _LikedItemsDataModel(
      {List<TattvaAudio> likedAudios,
      List<Wallpaper> likedWallpapers,
      List<Blog> likedBlogs}) = _$_LikedItemsDataModel;

  factory _LikedItemsDataModel.fromJson(Map<String, dynamic> json) =
      _$_LikedItemsDataModel.fromJson;

  @override
  List<TattvaAudio> get likedAudios => throw _privateConstructorUsedError;
  @override
  List<Wallpaper> get likedWallpapers => throw _privateConstructorUsedError;
  @override
  List<Blog> get likedBlogs => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LikedItemsDataModelCopyWith<_LikedItemsDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

CachedLikedItemsDataModel _$CachedLikedItemsDataModelFromJson(
    Map<String, dynamic> json) {
  return Cached_LikedItemsDataModel.fromJson(json);
}

/// @nodoc
class _$CachedLikedItemsDataModelTearOff {
  const _$CachedLikedItemsDataModelTearOff();

  Cached_LikedItemsDataModel call(
      {List<int> likedAudioIdx = const [],
      List<TattvaAudio> likedAudios = const [],
      List<int> likedWallpaperIdx = const [],
      List<Wallpaper> likedWallpapers = const [],
      List<int> likedBlogIdx = const [],
      List<Blog> likedBlogs = const []}) {
    return Cached_LikedItemsDataModel(
      likedAudioIdx: likedAudioIdx,
      likedAudios: likedAudios,
      likedWallpaperIdx: likedWallpaperIdx,
      likedWallpapers: likedWallpapers,
      likedBlogIdx: likedBlogIdx,
      likedBlogs: likedBlogs,
    );
  }

  CachedLikedItemsDataModel fromJson(Map<String, Object> json) {
    return CachedLikedItemsDataModel.fromJson(json);
  }
}

/// @nodoc
const $CachedLikedItemsDataModel = _$CachedLikedItemsDataModelTearOff();

/// @nodoc
mixin _$CachedLikedItemsDataModel {
  List<int> get likedAudioIdx => throw _privateConstructorUsedError;
  List<TattvaAudio> get likedAudios => throw _privateConstructorUsedError;
  List<int> get likedWallpaperIdx => throw _privateConstructorUsedError;
  List<Wallpaper> get likedWallpapers => throw _privateConstructorUsedError;
  List<int> get likedBlogIdx => throw _privateConstructorUsedError;
  List<Blog> get likedBlogs => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CachedLikedItemsDataModelCopyWith<CachedLikedItemsDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CachedLikedItemsDataModelCopyWith<$Res> {
  factory $CachedLikedItemsDataModelCopyWith(CachedLikedItemsDataModel value,
          $Res Function(CachedLikedItemsDataModel) then) =
      _$CachedLikedItemsDataModelCopyWithImpl<$Res>;
  $Res call(
      {List<int> likedAudioIdx,
      List<TattvaAudio> likedAudios,
      List<int> likedWallpaperIdx,
      List<Wallpaper> likedWallpapers,
      List<int> likedBlogIdx,
      List<Blog> likedBlogs});
}

/// @nodoc
class _$CachedLikedItemsDataModelCopyWithImpl<$Res>
    implements $CachedLikedItemsDataModelCopyWith<$Res> {
  _$CachedLikedItemsDataModelCopyWithImpl(this._value, this._then);

  final CachedLikedItemsDataModel _value;
  // ignore: unused_field
  final $Res Function(CachedLikedItemsDataModel) _then;

  @override
  $Res call({
    Object? likedAudioIdx = freezed,
    Object? likedAudios = freezed,
    Object? likedWallpaperIdx = freezed,
    Object? likedWallpapers = freezed,
    Object? likedBlogIdx = freezed,
    Object? likedBlogs = freezed,
  }) {
    return _then(_value.copyWith(
      likedAudioIdx: likedAudioIdx == freezed
          ? _value.likedAudioIdx
          : likedAudioIdx // ignore: cast_nullable_to_non_nullable
              as List<int>,
      likedAudios: likedAudios == freezed
          ? _value.likedAudios
          : likedAudios // ignore: cast_nullable_to_non_nullable
              as List<TattvaAudio>,
      likedWallpaperIdx: likedWallpaperIdx == freezed
          ? _value.likedWallpaperIdx
          : likedWallpaperIdx // ignore: cast_nullable_to_non_nullable
              as List<int>,
      likedWallpapers: likedWallpapers == freezed
          ? _value.likedWallpapers
          : likedWallpapers // ignore: cast_nullable_to_non_nullable
              as List<Wallpaper>,
      likedBlogIdx: likedBlogIdx == freezed
          ? _value.likedBlogIdx
          : likedBlogIdx // ignore: cast_nullable_to_non_nullable
              as List<int>,
      likedBlogs: likedBlogs == freezed
          ? _value.likedBlogs
          : likedBlogs // ignore: cast_nullable_to_non_nullable
              as List<Blog>,
    ));
  }
}

/// @nodoc
abstract class $Cached_LikedItemsDataModelCopyWith<$Res>
    implements $CachedLikedItemsDataModelCopyWith<$Res> {
  factory $Cached_LikedItemsDataModelCopyWith(Cached_LikedItemsDataModel value,
          $Res Function(Cached_LikedItemsDataModel) then) =
      _$Cached_LikedItemsDataModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<int> likedAudioIdx,
      List<TattvaAudio> likedAudios,
      List<int> likedWallpaperIdx,
      List<Wallpaper> likedWallpapers,
      List<int> likedBlogIdx,
      List<Blog> likedBlogs});
}

/// @nodoc
class _$Cached_LikedItemsDataModelCopyWithImpl<$Res>
    extends _$CachedLikedItemsDataModelCopyWithImpl<$Res>
    implements $Cached_LikedItemsDataModelCopyWith<$Res> {
  _$Cached_LikedItemsDataModelCopyWithImpl(Cached_LikedItemsDataModel _value,
      $Res Function(Cached_LikedItemsDataModel) _then)
      : super(_value, (v) => _then(v as Cached_LikedItemsDataModel));

  @override
  Cached_LikedItemsDataModel get _value =>
      super._value as Cached_LikedItemsDataModel;

  @override
  $Res call({
    Object? likedAudioIdx = freezed,
    Object? likedAudios = freezed,
    Object? likedWallpaperIdx = freezed,
    Object? likedWallpapers = freezed,
    Object? likedBlogIdx = freezed,
    Object? likedBlogs = freezed,
  }) {
    return _then(Cached_LikedItemsDataModel(
      likedAudioIdx: likedAudioIdx == freezed
          ? _value.likedAudioIdx
          : likedAudioIdx // ignore: cast_nullable_to_non_nullable
              as List<int>,
      likedAudios: likedAudios == freezed
          ? _value.likedAudios
          : likedAudios // ignore: cast_nullable_to_non_nullable
              as List<TattvaAudio>,
      likedWallpaperIdx: likedWallpaperIdx == freezed
          ? _value.likedWallpaperIdx
          : likedWallpaperIdx // ignore: cast_nullable_to_non_nullable
              as List<int>,
      likedWallpapers: likedWallpapers == freezed
          ? _value.likedWallpapers
          : likedWallpapers // ignore: cast_nullable_to_non_nullable
              as List<Wallpaper>,
      likedBlogIdx: likedBlogIdx == freezed
          ? _value.likedBlogIdx
          : likedBlogIdx // ignore: cast_nullable_to_non_nullable
              as List<int>,
      likedBlogs: likedBlogs == freezed
          ? _value.likedBlogs
          : likedBlogs // ignore: cast_nullable_to_non_nullable
              as List<Blog>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$Cached_LikedItemsDataModel implements Cached_LikedItemsDataModel {
  const _$Cached_LikedItemsDataModel(
      {this.likedAudioIdx = const [],
      this.likedAudios = const [],
      this.likedWallpaperIdx = const [],
      this.likedWallpapers = const [],
      this.likedBlogIdx = const [],
      this.likedBlogs = const []});

  factory _$Cached_LikedItemsDataModel.fromJson(Map<String, dynamic> json) =>
      _$_$Cached_LikedItemsDataModelFromJson(json);

  @JsonKey(defaultValue: const [])
  @override
  final List<int> likedAudioIdx;
  @JsonKey(defaultValue: const [])
  @override
  final List<TattvaAudio> likedAudios;
  @JsonKey(defaultValue: const [])
  @override
  final List<int> likedWallpaperIdx;
  @JsonKey(defaultValue: const [])
  @override
  final List<Wallpaper> likedWallpapers;
  @JsonKey(defaultValue: const [])
  @override
  final List<int> likedBlogIdx;
  @JsonKey(defaultValue: const [])
  @override
  final List<Blog> likedBlogs;

  @override
  String toString() {
    return 'CachedLikedItemsDataModel(likedAudioIdx: $likedAudioIdx, likedAudios: $likedAudios, likedWallpaperIdx: $likedWallpaperIdx, likedWallpapers: $likedWallpapers, likedBlogIdx: $likedBlogIdx, likedBlogs: $likedBlogs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Cached_LikedItemsDataModel &&
            (identical(other.likedAudioIdx, likedAudioIdx) ||
                const DeepCollectionEquality()
                    .equals(other.likedAudioIdx, likedAudioIdx)) &&
            (identical(other.likedAudios, likedAudios) ||
                const DeepCollectionEquality()
                    .equals(other.likedAudios, likedAudios)) &&
            (identical(other.likedWallpaperIdx, likedWallpaperIdx) ||
                const DeepCollectionEquality()
                    .equals(other.likedWallpaperIdx, likedWallpaperIdx)) &&
            (identical(other.likedWallpapers, likedWallpapers) ||
                const DeepCollectionEquality()
                    .equals(other.likedWallpapers, likedWallpapers)) &&
            (identical(other.likedBlogIdx, likedBlogIdx) ||
                const DeepCollectionEquality()
                    .equals(other.likedBlogIdx, likedBlogIdx)) &&
            (identical(other.likedBlogs, likedBlogs) ||
                const DeepCollectionEquality()
                    .equals(other.likedBlogs, likedBlogs)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(likedAudioIdx) ^
      const DeepCollectionEquality().hash(likedAudios) ^
      const DeepCollectionEquality().hash(likedWallpaperIdx) ^
      const DeepCollectionEquality().hash(likedWallpapers) ^
      const DeepCollectionEquality().hash(likedBlogIdx) ^
      const DeepCollectionEquality().hash(likedBlogs);

  @JsonKey(ignore: true)
  @override
  $Cached_LikedItemsDataModelCopyWith<Cached_LikedItemsDataModel>
      get copyWith =>
          _$Cached_LikedItemsDataModelCopyWithImpl<Cached_LikedItemsDataModel>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$Cached_LikedItemsDataModelToJson(this);
  }
}

abstract class Cached_LikedItemsDataModel implements CachedLikedItemsDataModel {
  const factory Cached_LikedItemsDataModel(
      {List<int> likedAudioIdx,
      List<TattvaAudio> likedAudios,
      List<int> likedWallpaperIdx,
      List<Wallpaper> likedWallpapers,
      List<int> likedBlogIdx,
      List<Blog> likedBlogs}) = _$Cached_LikedItemsDataModel;

  factory Cached_LikedItemsDataModel.fromJson(Map<String, dynamic> json) =
      _$Cached_LikedItemsDataModel.fromJson;

  @override
  List<int> get likedAudioIdx => throw _privateConstructorUsedError;
  @override
  List<TattvaAudio> get likedAudios => throw _privateConstructorUsedError;
  @override
  List<int> get likedWallpaperIdx => throw _privateConstructorUsedError;
  @override
  List<Wallpaper> get likedWallpapers => throw _privateConstructorUsedError;
  @override
  List<int> get likedBlogIdx => throw _privateConstructorUsedError;
  @override
  List<Blog> get likedBlogs => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $Cached_LikedItemsDataModelCopyWith<Cached_LikedItemsDataModel>
      get copyWith => throw _privateConstructorUsedError;
}
