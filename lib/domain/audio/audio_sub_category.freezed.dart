// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'audio_sub_category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AudioSubCategory _$AudioSubCategoryFromJson(Map<String, dynamic> json) {
  return _AudioSubCategory.fromJson(json);
}

/// @nodoc
class _$AudioSubCategoryTearOff {
  const _$AudioSubCategoryTearOff();

  _AudioSubCategory call(
      {required String id,
      required String name,
      required List<TattvaImage> banner,
      required List<TattvaAudio> audios}) {
    return _AudioSubCategory(
      id: id,
      name: name,
      banner: banner,
      audios: audios,
    );
  }

  AudioSubCategory fromJson(Map<String, Object> json) {
    return AudioSubCategory.fromJson(json);
  }
}

/// @nodoc
const $AudioSubCategory = _$AudioSubCategoryTearOff();

/// @nodoc
mixin _$AudioSubCategory {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<TattvaImage> get banner => throw _privateConstructorUsedError;
  List<TattvaAudio> get audios => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AudioSubCategoryCopyWith<AudioSubCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AudioSubCategoryCopyWith<$Res> {
  factory $AudioSubCategoryCopyWith(
          AudioSubCategory value, $Res Function(AudioSubCategory) then) =
      _$AudioSubCategoryCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      List<TattvaImage> banner,
      List<TattvaAudio> audios});
}

/// @nodoc
class _$AudioSubCategoryCopyWithImpl<$Res>
    implements $AudioSubCategoryCopyWith<$Res> {
  _$AudioSubCategoryCopyWithImpl(this._value, this._then);

  final AudioSubCategory _value;
  // ignore: unused_field
  final $Res Function(AudioSubCategory) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? banner = freezed,
    Object? audios = freezed,
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
      banner: banner == freezed
          ? _value.banner
          : banner // ignore: cast_nullable_to_non_nullable
              as List<TattvaImage>,
      audios: audios == freezed
          ? _value.audios
          : audios // ignore: cast_nullable_to_non_nullable
              as List<TattvaAudio>,
    ));
  }
}

/// @nodoc
abstract class _$AudioSubCategoryCopyWith<$Res>
    implements $AudioSubCategoryCopyWith<$Res> {
  factory _$AudioSubCategoryCopyWith(
          _AudioSubCategory value, $Res Function(_AudioSubCategory) then) =
      __$AudioSubCategoryCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      List<TattvaImage> banner,
      List<TattvaAudio> audios});
}

/// @nodoc
class __$AudioSubCategoryCopyWithImpl<$Res>
    extends _$AudioSubCategoryCopyWithImpl<$Res>
    implements _$AudioSubCategoryCopyWith<$Res> {
  __$AudioSubCategoryCopyWithImpl(
      _AudioSubCategory _value, $Res Function(_AudioSubCategory) _then)
      : super(_value, (v) => _then(v as _AudioSubCategory));

  @override
  _AudioSubCategory get _value => super._value as _AudioSubCategory;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? banner = freezed,
    Object? audios = freezed,
  }) {
    return _then(_AudioSubCategory(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      banner: banner == freezed
          ? _value.banner
          : banner // ignore: cast_nullable_to_non_nullable
              as List<TattvaImage>,
      audios: audios == freezed
          ? _value.audios
          : audios // ignore: cast_nullable_to_non_nullable
              as List<TattvaAudio>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_AudioSubCategory implements _AudioSubCategory {
  const _$_AudioSubCategory(
      {required this.id,
      required this.name,
      required this.banner,
      required this.audios});

  factory _$_AudioSubCategory.fromJson(Map<String, dynamic> json) =>
      _$_$_AudioSubCategoryFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final List<TattvaImage> banner;
  @override
  final List<TattvaAudio> audios;

  @override
  String toString() {
    return 'AudioSubCategory(id: $id, name: $name, banner: $banner, audios: $audios)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AudioSubCategory &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.banner, banner) ||
                const DeepCollectionEquality().equals(other.banner, banner)) &&
            (identical(other.audios, audios) ||
                const DeepCollectionEquality().equals(other.audios, audios)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(banner) ^
      const DeepCollectionEquality().hash(audios);

  @JsonKey(ignore: true)
  @override
  _$AudioSubCategoryCopyWith<_AudioSubCategory> get copyWith =>
      __$AudioSubCategoryCopyWithImpl<_AudioSubCategory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AudioSubCategoryToJson(this);
  }
}

abstract class _AudioSubCategory implements AudioSubCategory {
  const factory _AudioSubCategory(
      {required String id,
      required String name,
      required List<TattvaImage> banner,
      required List<TattvaAudio> audios}) = _$_AudioSubCategory;

  factory _AudioSubCategory.fromJson(Map<String, dynamic> json) =
      _$_AudioSubCategory.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  List<TattvaImage> get banner => throw _privateConstructorUsedError;
  @override
  List<TattvaAudio> get audios => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AudioSubCategoryCopyWith<_AudioSubCategory> get copyWith =>
      throw _privateConstructorUsedError;
}
