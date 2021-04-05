// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'wallpaper_category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WallpaperCategory _$WallpaperCategoryFromJson(Map<String, dynamic> json) {
  return _WallpaperCategory.fromJson(json);
}

/// @nodoc
class _$WallpaperCategoryTearOff {
  const _$WallpaperCategoryTearOff();

  _WallpaperCategory call(
      {required String id,
      required String name,
      List<Wallpaper> wallpapers = const []}) {
    return _WallpaperCategory(
      id: id,
      name: name,
      wallpapers: wallpapers,
    );
  }

  WallpaperCategory fromJson(Map<String, Object> json) {
    return WallpaperCategory.fromJson(json);
  }
}

/// @nodoc
const $WallpaperCategory = _$WallpaperCategoryTearOff();

/// @nodoc
mixin _$WallpaperCategory {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<Wallpaper> get wallpapers => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WallpaperCategoryCopyWith<WallpaperCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WallpaperCategoryCopyWith<$Res> {
  factory $WallpaperCategoryCopyWith(
          WallpaperCategory value, $Res Function(WallpaperCategory) then) =
      _$WallpaperCategoryCopyWithImpl<$Res>;
  $Res call({String id, String name, List<Wallpaper> wallpapers});
}

/// @nodoc
class _$WallpaperCategoryCopyWithImpl<$Res>
    implements $WallpaperCategoryCopyWith<$Res> {
  _$WallpaperCategoryCopyWithImpl(this._value, this._then);

  final WallpaperCategory _value;
  // ignore: unused_field
  final $Res Function(WallpaperCategory) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? wallpapers = freezed,
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
      wallpapers: wallpapers == freezed
          ? _value.wallpapers
          : wallpapers // ignore: cast_nullable_to_non_nullable
              as List<Wallpaper>,
    ));
  }
}

/// @nodoc
abstract class _$WallpaperCategoryCopyWith<$Res>
    implements $WallpaperCategoryCopyWith<$Res> {
  factory _$WallpaperCategoryCopyWith(
          _WallpaperCategory value, $Res Function(_WallpaperCategory) then) =
      __$WallpaperCategoryCopyWithImpl<$Res>;
  @override
  $Res call({String id, String name, List<Wallpaper> wallpapers});
}

/// @nodoc
class __$WallpaperCategoryCopyWithImpl<$Res>
    extends _$WallpaperCategoryCopyWithImpl<$Res>
    implements _$WallpaperCategoryCopyWith<$Res> {
  __$WallpaperCategoryCopyWithImpl(
      _WallpaperCategory _value, $Res Function(_WallpaperCategory) _then)
      : super(_value, (v) => _then(v as _WallpaperCategory));

  @override
  _WallpaperCategory get _value => super._value as _WallpaperCategory;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? wallpapers = freezed,
  }) {
    return _then(_WallpaperCategory(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      wallpapers: wallpapers == freezed
          ? _value.wallpapers
          : wallpapers // ignore: cast_nullable_to_non_nullable
              as List<Wallpaper>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_WallpaperCategory implements _WallpaperCategory {
  const _$_WallpaperCategory(
      {required this.id, required this.name, this.wallpapers = const []});

  factory _$_WallpaperCategory.fromJson(Map<String, dynamic> json) =>
      _$_$_WallpaperCategoryFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @JsonKey(defaultValue: const [])
  @override
  final List<Wallpaper> wallpapers;

  @override
  String toString() {
    return 'WallpaperCategory(id: $id, name: $name, wallpapers: $wallpapers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WallpaperCategory &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.wallpapers, wallpapers) ||
                const DeepCollectionEquality()
                    .equals(other.wallpapers, wallpapers)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(wallpapers);

  @JsonKey(ignore: true)
  @override
  _$WallpaperCategoryCopyWith<_WallpaperCategory> get copyWith =>
      __$WallpaperCategoryCopyWithImpl<_WallpaperCategory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_WallpaperCategoryToJson(this);
  }
}

abstract class _WallpaperCategory implements WallpaperCategory {
  const factory _WallpaperCategory(
      {required String id,
      required String name,
      List<Wallpaper> wallpapers}) = _$_WallpaperCategory;

  factory _WallpaperCategory.fromJson(Map<String, dynamic> json) =
      _$_WallpaperCategory.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  List<Wallpaper> get wallpapers => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$WallpaperCategoryCopyWith<_WallpaperCategory> get copyWith =>
      throw _privateConstructorUsedError;
}
