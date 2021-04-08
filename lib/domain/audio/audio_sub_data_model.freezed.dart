// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'audio_sub_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AudioSubDataModel _$AudioSubDataModelFromJson(Map<String, dynamic> json) {
  return _AudioSubDataModel.fromJson(json);
}

/// @nodoc
class _$AudioSubDataModelTearOff {
  const _$AudioSubDataModelTearOff();

  _AudioSubDataModel call(
      {required List<AudioSubCategory> categories,
      required List<String> likedAudios}) {
    return _AudioSubDataModel(
      categories: categories,
      likedAudios: likedAudios,
    );
  }

  AudioSubDataModel fromJson(Map<String, Object> json) {
    return AudioSubDataModel.fromJson(json);
  }
}

/// @nodoc
const $AudioSubDataModel = _$AudioSubDataModelTearOff();

/// @nodoc
mixin _$AudioSubDataModel {
  List<AudioSubCategory> get categories => throw _privateConstructorUsedError;
  List<String> get likedAudios => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AudioSubDataModelCopyWith<AudioSubDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AudioSubDataModelCopyWith<$Res> {
  factory $AudioSubDataModelCopyWith(
          AudioSubDataModel value, $Res Function(AudioSubDataModel) then) =
      _$AudioSubDataModelCopyWithImpl<$Res>;
  $Res call({List<AudioSubCategory> categories, List<String> likedAudios});
}

/// @nodoc
class _$AudioSubDataModelCopyWithImpl<$Res>
    implements $AudioSubDataModelCopyWith<$Res> {
  _$AudioSubDataModelCopyWithImpl(this._value, this._then);

  final AudioSubDataModel _value;
  // ignore: unused_field
  final $Res Function(AudioSubDataModel) _then;

  @override
  $Res call({
    Object? categories = freezed,
    Object? likedAudios = freezed,
  }) {
    return _then(_value.copyWith(
      categories: categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<AudioSubCategory>,
      likedAudios: likedAudios == freezed
          ? _value.likedAudios
          : likedAudios // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$AudioSubDataModelCopyWith<$Res>
    implements $AudioSubDataModelCopyWith<$Res> {
  factory _$AudioSubDataModelCopyWith(
          _AudioSubDataModel value, $Res Function(_AudioSubDataModel) then) =
      __$AudioSubDataModelCopyWithImpl<$Res>;
  @override
  $Res call({List<AudioSubCategory> categories, List<String> likedAudios});
}

/// @nodoc
class __$AudioSubDataModelCopyWithImpl<$Res>
    extends _$AudioSubDataModelCopyWithImpl<$Res>
    implements _$AudioSubDataModelCopyWith<$Res> {
  __$AudioSubDataModelCopyWithImpl(
      _AudioSubDataModel _value, $Res Function(_AudioSubDataModel) _then)
      : super(_value, (v) => _then(v as _AudioSubDataModel));

  @override
  _AudioSubDataModel get _value => super._value as _AudioSubDataModel;

  @override
  $Res call({
    Object? categories = freezed,
    Object? likedAudios = freezed,
  }) {
    return _then(_AudioSubDataModel(
      categories: categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<AudioSubCategory>,
      likedAudios: likedAudios == freezed
          ? _value.likedAudios
          : likedAudios // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_AudioSubDataModel implements _AudioSubDataModel {
  const _$_AudioSubDataModel(
      {required this.categories, required this.likedAudios});

  factory _$_AudioSubDataModel.fromJson(Map<String, dynamic> json) =>
      _$_$_AudioSubDataModelFromJson(json);

  @override
  final List<AudioSubCategory> categories;
  @override
  final List<String> likedAudios;

  @override
  String toString() {
    return 'AudioSubDataModel(categories: $categories, likedAudios: $likedAudios)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AudioSubDataModel &&
            (identical(other.categories, categories) ||
                const DeepCollectionEquality()
                    .equals(other.categories, categories)) &&
            (identical(other.likedAudios, likedAudios) ||
                const DeepCollectionEquality()
                    .equals(other.likedAudios, likedAudios)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(categories) ^
      const DeepCollectionEquality().hash(likedAudios);

  @JsonKey(ignore: true)
  @override
  _$AudioSubDataModelCopyWith<_AudioSubDataModel> get copyWith =>
      __$AudioSubDataModelCopyWithImpl<_AudioSubDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AudioSubDataModelToJson(this);
  }
}

abstract class _AudioSubDataModel implements AudioSubDataModel {
  const factory _AudioSubDataModel(
      {required List<AudioSubCategory> categories,
      required List<String> likedAudios}) = _$_AudioSubDataModel;

  factory _AudioSubDataModel.fromJson(Map<String, dynamic> json) =
      _$_AudioSubDataModel.fromJson;

  @override
  List<AudioSubCategory> get categories => throw _privateConstructorUsedError;
  @override
  List<String> get likedAudios => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AudioSubDataModelCopyWith<_AudioSubDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
