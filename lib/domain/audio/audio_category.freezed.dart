// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'audio_category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AudioCategory _$AudioCategoryFromJson(Map<String, dynamic> json) {
  return _AudioCategory.fromJson(json);
}

/// @nodoc
class _$AudioCategoryTearOff {
  const _$AudioCategoryTearOff();

  _AudioCategory call(
      {required String id,
      required String name,
      required List<String> averageDurationInMin,
      required List<TattvaImage> coverImage,
      List<AudioSubCategory>? audioSubCategories}) {
    return _AudioCategory(
      id: id,
      name: name,
      averageDurationInMin: averageDurationInMin,
      coverImage: coverImage,
      audioSubCategories: audioSubCategories,
    );
  }

  AudioCategory fromJson(Map<String, Object> json) {
    return AudioCategory.fromJson(json);
  }
}

/// @nodoc
const $AudioCategory = _$AudioCategoryTearOff();

/// @nodoc
mixin _$AudioCategory {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<String> get averageDurationInMin => throw _privateConstructorUsedError;
  List<TattvaImage> get coverImage => throw _privateConstructorUsedError;
  List<AudioSubCategory>? get audioSubCategories =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AudioCategoryCopyWith<AudioCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AudioCategoryCopyWith<$Res> {
  factory $AudioCategoryCopyWith(
          AudioCategory value, $Res Function(AudioCategory) then) =
      _$AudioCategoryCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      List<String> averageDurationInMin,
      List<TattvaImage> coverImage,
      List<AudioSubCategory>? audioSubCategories});
}

/// @nodoc
class _$AudioCategoryCopyWithImpl<$Res>
    implements $AudioCategoryCopyWith<$Res> {
  _$AudioCategoryCopyWithImpl(this._value, this._then);

  final AudioCategory _value;
  // ignore: unused_field
  final $Res Function(AudioCategory) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? averageDurationInMin = freezed,
    Object? coverImage = freezed,
    Object? audioSubCategories = freezed,
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
      averageDurationInMin: averageDurationInMin == freezed
          ? _value.averageDurationInMin
          : averageDurationInMin // ignore: cast_nullable_to_non_nullable
              as List<String>,
      coverImage: coverImage == freezed
          ? _value.coverImage
          : coverImage // ignore: cast_nullable_to_non_nullable
              as List<TattvaImage>,
      audioSubCategories: audioSubCategories == freezed
          ? _value.audioSubCategories
          : audioSubCategories // ignore: cast_nullable_to_non_nullable
              as List<AudioSubCategory>?,
    ));
  }
}

/// @nodoc
abstract class _$AudioCategoryCopyWith<$Res>
    implements $AudioCategoryCopyWith<$Res> {
  factory _$AudioCategoryCopyWith(
          _AudioCategory value, $Res Function(_AudioCategory) then) =
      __$AudioCategoryCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      List<String> averageDurationInMin,
      List<TattvaImage> coverImage,
      List<AudioSubCategory>? audioSubCategories});
}

/// @nodoc
class __$AudioCategoryCopyWithImpl<$Res>
    extends _$AudioCategoryCopyWithImpl<$Res>
    implements _$AudioCategoryCopyWith<$Res> {
  __$AudioCategoryCopyWithImpl(
      _AudioCategory _value, $Res Function(_AudioCategory) _then)
      : super(_value, (v) => _then(v as _AudioCategory));

  @override
  _AudioCategory get _value => super._value as _AudioCategory;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? averageDurationInMin = freezed,
    Object? coverImage = freezed,
    Object? audioSubCategories = freezed,
  }) {
    return _then(_AudioCategory(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      averageDurationInMin: averageDurationInMin == freezed
          ? _value.averageDurationInMin
          : averageDurationInMin // ignore: cast_nullable_to_non_nullable
              as List<String>,
      coverImage: coverImage == freezed
          ? _value.coverImage
          : coverImage // ignore: cast_nullable_to_non_nullable
              as List<TattvaImage>,
      audioSubCategories: audioSubCategories == freezed
          ? _value.audioSubCategories
          : audioSubCategories // ignore: cast_nullable_to_non_nullable
              as List<AudioSubCategory>?,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_AudioCategory implements _AudioCategory {
  const _$_AudioCategory(
      {required this.id,
      required this.name,
      required this.averageDurationInMin,
      required this.coverImage,
      this.audioSubCategories});

  factory _$_AudioCategory.fromJson(Map<String, dynamic> json) =>
      _$_$_AudioCategoryFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final List<String> averageDurationInMin;
  @override
  final List<TattvaImage> coverImage;
  @override
  final List<AudioSubCategory>? audioSubCategories;

  @override
  String toString() {
    return 'AudioCategory(id: $id, name: $name, averageDurationInMin: $averageDurationInMin, coverImage: $coverImage, audioSubCategories: $audioSubCategories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AudioCategory &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.averageDurationInMin, averageDurationInMin) ||
                const DeepCollectionEquality().equals(
                    other.averageDurationInMin, averageDurationInMin)) &&
            (identical(other.coverImage, coverImage) ||
                const DeepCollectionEquality()
                    .equals(other.coverImage, coverImage)) &&
            (identical(other.audioSubCategories, audioSubCategories) ||
                const DeepCollectionEquality()
                    .equals(other.audioSubCategories, audioSubCategories)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(averageDurationInMin) ^
      const DeepCollectionEquality().hash(coverImage) ^
      const DeepCollectionEquality().hash(audioSubCategories);

  @JsonKey(ignore: true)
  @override
  _$AudioCategoryCopyWith<_AudioCategory> get copyWith =>
      __$AudioCategoryCopyWithImpl<_AudioCategory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AudioCategoryToJson(this);
  }
}

abstract class _AudioCategory implements AudioCategory {
  const factory _AudioCategory(
      {required String id,
      required String name,
      required List<String> averageDurationInMin,
      required List<TattvaImage> coverImage,
      List<AudioSubCategory>? audioSubCategories}) = _$_AudioCategory;

  factory _AudioCategory.fromJson(Map<String, dynamic> json) =
      _$_AudioCategory.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  List<String> get averageDurationInMin => throw _privateConstructorUsedError;
  @override
  List<TattvaImage> get coverImage => throw _privateConstructorUsedError;
  @override
  List<AudioSubCategory>? get audioSubCategories =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AudioCategoryCopyWith<_AudioCategory> get copyWith =>
      throw _privateConstructorUsedError;
}
