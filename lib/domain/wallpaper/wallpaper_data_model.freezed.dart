// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'wallpaper_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WallpaperDataModel _$WallpaperDataModelFromJson(Map<String, dynamic> json) {
  return _WallpaperDataModel.fromJson(json);
}

/// @nodoc
class _$WallpaperDataModelTearOff {
  const _$WallpaperDataModelTearOff();

  _WallpaperDataModel call(
      {required List<WallpaperCategory> categories,
      required List<Wallpaper> wallpapers}) {
    return _WallpaperDataModel(
      categories: categories,
      wallpapers: wallpapers,
    );
  }

  WallpaperDataModel fromJson(Map<String, Object> json) {
    return WallpaperDataModel.fromJson(json);
  }
}

/// @nodoc
const $WallpaperDataModel = _$WallpaperDataModelTearOff();

/// @nodoc
mixin _$WallpaperDataModel {
  List<WallpaperCategory> get categories => throw _privateConstructorUsedError;
  List<Wallpaper> get wallpapers => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WallpaperDataModelCopyWith<WallpaperDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WallpaperDataModelCopyWith<$Res> {
  factory $WallpaperDataModelCopyWith(
          WallpaperDataModel value, $Res Function(WallpaperDataModel) then) =
      _$WallpaperDataModelCopyWithImpl<$Res>;
  $Res call({List<WallpaperCategory> categories, List<Wallpaper> wallpapers});
}

/// @nodoc
class _$WallpaperDataModelCopyWithImpl<$Res>
    implements $WallpaperDataModelCopyWith<$Res> {
  _$WallpaperDataModelCopyWithImpl(this._value, this._then);

  final WallpaperDataModel _value;
  // ignore: unused_field
  final $Res Function(WallpaperDataModel) _then;

  @override
  $Res call({
    Object? categories = freezed,
    Object? wallpapers = freezed,
  }) {
    return _then(_value.copyWith(
      categories: categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<WallpaperCategory>,
      wallpapers: wallpapers == freezed
          ? _value.wallpapers
          : wallpapers // ignore: cast_nullable_to_non_nullable
              as List<Wallpaper>,
    ));
  }
}

/// @nodoc
abstract class _$WallpaperDataModelCopyWith<$Res>
    implements $WallpaperDataModelCopyWith<$Res> {
  factory _$WallpaperDataModelCopyWith(
          _WallpaperDataModel value, $Res Function(_WallpaperDataModel) then) =
      __$WallpaperDataModelCopyWithImpl<$Res>;
  @override
  $Res call({List<WallpaperCategory> categories, List<Wallpaper> wallpapers});
}

/// @nodoc
class __$WallpaperDataModelCopyWithImpl<$Res>
    extends _$WallpaperDataModelCopyWithImpl<$Res>
    implements _$WallpaperDataModelCopyWith<$Res> {
  __$WallpaperDataModelCopyWithImpl(
      _WallpaperDataModel _value, $Res Function(_WallpaperDataModel) _then)
      : super(_value, (v) => _then(v as _WallpaperDataModel));

  @override
  _WallpaperDataModel get _value => super._value as _WallpaperDataModel;

  @override
  $Res call({
    Object? categories = freezed,
    Object? wallpapers = freezed,
  }) {
    return _then(_WallpaperDataModel(
      categories: categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<WallpaperCategory>,
      wallpapers: wallpapers == freezed
          ? _value.wallpapers
          : wallpapers // ignore: cast_nullable_to_non_nullable
              as List<Wallpaper>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_WallpaperDataModel implements _WallpaperDataModel {
  const _$_WallpaperDataModel(
      {required this.categories, required this.wallpapers});

  factory _$_WallpaperDataModel.fromJson(Map<String, dynamic> json) =>
      _$_$_WallpaperDataModelFromJson(json);

  @override
  final List<WallpaperCategory> categories;
  @override
  final List<Wallpaper> wallpapers;

  @override
  String toString() {
    return 'WallpaperDataModel(categories: $categories, wallpapers: $wallpapers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WallpaperDataModel &&
            (identical(other.categories, categories) ||
                const DeepCollectionEquality()
                    .equals(other.categories, categories)) &&
            (identical(other.wallpapers, wallpapers) ||
                const DeepCollectionEquality()
                    .equals(other.wallpapers, wallpapers)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(categories) ^
      const DeepCollectionEquality().hash(wallpapers);

  @JsonKey(ignore: true)
  @override
  _$WallpaperDataModelCopyWith<_WallpaperDataModel> get copyWith =>
      __$WallpaperDataModelCopyWithImpl<_WallpaperDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_WallpaperDataModelToJson(this);
  }
}

abstract class _WallpaperDataModel implements WallpaperDataModel {
  const factory _WallpaperDataModel(
      {required List<WallpaperCategory> categories,
      required List<Wallpaper> wallpapers}) = _$_WallpaperDataModel;

  factory _WallpaperDataModel.fromJson(Map<String, dynamic> json) =
      _$_WallpaperDataModel.fromJson;

  @override
  List<WallpaperCategory> get categories => throw _privateConstructorUsedError;
  @override
  List<Wallpaper> get wallpapers => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$WallpaperDataModelCopyWith<_WallpaperDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
