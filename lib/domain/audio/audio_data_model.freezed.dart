// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'audio_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AudioDataModel _$AudioDataModelFromJson(Map<String, dynamic> json) {
  return _AudioDataModel.fromJson(json);
}

/// @nodoc
class _$AudioDataModelTearOff {
  const _$AudioDataModelTearOff();

  _AudioDataModel call(
      {List<AudioCategory> categories = const [],
      List<TattvaAudio> audios = const [],
      required List<String> likedAudios}) {
    return _AudioDataModel(
      categories: categories,
      audios: audios,
      likedAudios: likedAudios,
    );
  }

  AudioDataModel fromJson(Map<String, Object> json) {
    return AudioDataModel.fromJson(json);
  }
}

/// @nodoc
const $AudioDataModel = _$AudioDataModelTearOff();

/// @nodoc
mixin _$AudioDataModel {
  List<AudioCategory> get categories => throw _privateConstructorUsedError;
  List<TattvaAudio> get audios => throw _privateConstructorUsedError;
  List<String> get likedAudios => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AudioDataModelCopyWith<AudioDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AudioDataModelCopyWith<$Res> {
  factory $AudioDataModelCopyWith(
          AudioDataModel value, $Res Function(AudioDataModel) then) =
      _$AudioDataModelCopyWithImpl<$Res>;
  $Res call(
      {List<AudioCategory> categories,
      List<TattvaAudio> audios,
      List<String> likedAudios});
}

/// @nodoc
class _$AudioDataModelCopyWithImpl<$Res>
    implements $AudioDataModelCopyWith<$Res> {
  _$AudioDataModelCopyWithImpl(this._value, this._then);

  final AudioDataModel _value;
  // ignore: unused_field
  final $Res Function(AudioDataModel) _then;

  @override
  $Res call({
    Object? categories = freezed,
    Object? audios = freezed,
    Object? likedAudios = freezed,
  }) {
    return _then(_value.copyWith(
      categories: categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<AudioCategory>,
      audios: audios == freezed
          ? _value.audios
          : audios // ignore: cast_nullable_to_non_nullable
              as List<TattvaAudio>,
      likedAudios: likedAudios == freezed
          ? _value.likedAudios
          : likedAudios // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$AudioDataModelCopyWith<$Res>
    implements $AudioDataModelCopyWith<$Res> {
  factory _$AudioDataModelCopyWith(
          _AudioDataModel value, $Res Function(_AudioDataModel) then) =
      __$AudioDataModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<AudioCategory> categories,
      List<TattvaAudio> audios,
      List<String> likedAudios});
}

/// @nodoc
class __$AudioDataModelCopyWithImpl<$Res>
    extends _$AudioDataModelCopyWithImpl<$Res>
    implements _$AudioDataModelCopyWith<$Res> {
  __$AudioDataModelCopyWithImpl(
      _AudioDataModel _value, $Res Function(_AudioDataModel) _then)
      : super(_value, (v) => _then(v as _AudioDataModel));

  @override
  _AudioDataModel get _value => super._value as _AudioDataModel;

  @override
  $Res call({
    Object? categories = freezed,
    Object? audios = freezed,
    Object? likedAudios = freezed,
  }) {
    return _then(_AudioDataModel(
      categories: categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<AudioCategory>,
      audios: audios == freezed
          ? _value.audios
          : audios // ignore: cast_nullable_to_non_nullable
              as List<TattvaAudio>,
      likedAudios: likedAudios == freezed
          ? _value.likedAudios
          : likedAudios // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_AudioDataModel implements _AudioDataModel {
  const _$_AudioDataModel(
      {this.categories = const [],
      this.audios = const [],
      required this.likedAudios});

  factory _$_AudioDataModel.fromJson(Map<String, dynamic> json) =>
      _$_$_AudioDataModelFromJson(json);

  @JsonKey(defaultValue: const [])
  @override
  final List<AudioCategory> categories;
  @JsonKey(defaultValue: const [])
  @override
  final List<TattvaAudio> audios;
  @override
  final List<String> likedAudios;

  @override
  String toString() {
    return 'AudioDataModel(categories: $categories, audios: $audios, likedAudios: $likedAudios)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AudioDataModel &&
            (identical(other.categories, categories) ||
                const DeepCollectionEquality()
                    .equals(other.categories, categories)) &&
            (identical(other.audios, audios) ||
                const DeepCollectionEquality().equals(other.audios, audios)) &&
            (identical(other.likedAudios, likedAudios) ||
                const DeepCollectionEquality()
                    .equals(other.likedAudios, likedAudios)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(categories) ^
      const DeepCollectionEquality().hash(audios) ^
      const DeepCollectionEquality().hash(likedAudios);

  @JsonKey(ignore: true)
  @override
  _$AudioDataModelCopyWith<_AudioDataModel> get copyWith =>
      __$AudioDataModelCopyWithImpl<_AudioDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AudioDataModelToJson(this);
  }
}

abstract class _AudioDataModel implements AudioDataModel {
  const factory _AudioDataModel(
      {List<AudioCategory> categories,
      List<TattvaAudio> audios,
      required List<String> likedAudios}) = _$_AudioDataModel;

  factory _AudioDataModel.fromJson(Map<String, dynamic> json) =
      _$_AudioDataModel.fromJson;

  @override
  List<AudioCategory> get categories => throw _privateConstructorUsedError;
  @override
  List<TattvaAudio> get audios => throw _privateConstructorUsedError;
  @override
  List<String> get likedAudios => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AudioDataModelCopyWith<_AudioDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
