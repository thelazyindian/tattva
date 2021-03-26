// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'audio_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AudioEventTearOff {
  const _$AudioEventTearOff();

  _Started started() {
    return const _Started();
  }

  _SelectedAudioCategory selectedAudioCategory(AudioCategory audioCategory) {
    return _SelectedAudioCategory(
      audioCategory,
    );
  }
}

/// @nodoc
const $AudioEvent = _$AudioEventTearOff();

/// @nodoc
mixin _$AudioEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(AudioCategory audioCategory)
        selectedAudioCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(AudioCategory audioCategory)? selectedAudioCategory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SelectedAudioCategory value)
        selectedAudioCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SelectedAudioCategory value)? selectedAudioCategory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AudioEventCopyWith<$Res> {
  factory $AudioEventCopyWith(
          AudioEvent value, $Res Function(AudioEvent) then) =
      _$AudioEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AudioEventCopyWithImpl<$Res> implements $AudioEventCopyWith<$Res> {
  _$AudioEventCopyWithImpl(this._value, this._then);

  final AudioEvent _value;
  // ignore: unused_field
  final $Res Function(AudioEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$AudioEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;
}

/// @nodoc
class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'AudioEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(AudioCategory audioCategory)
        selectedAudioCategory,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(AudioCategory audioCategory)? selectedAudioCategory,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SelectedAudioCategory value)
        selectedAudioCategory,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SelectedAudioCategory value)? selectedAudioCategory,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AudioEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$SelectedAudioCategoryCopyWith<$Res> {
  factory _$SelectedAudioCategoryCopyWith(_SelectedAudioCategory value,
          $Res Function(_SelectedAudioCategory) then) =
      __$SelectedAudioCategoryCopyWithImpl<$Res>;
  $Res call({AudioCategory audioCategory});

  $AudioCategoryCopyWith<$Res> get audioCategory;
}

/// @nodoc
class __$SelectedAudioCategoryCopyWithImpl<$Res>
    extends _$AudioEventCopyWithImpl<$Res>
    implements _$SelectedAudioCategoryCopyWith<$Res> {
  __$SelectedAudioCategoryCopyWithImpl(_SelectedAudioCategory _value,
      $Res Function(_SelectedAudioCategory) _then)
      : super(_value, (v) => _then(v as _SelectedAudioCategory));

  @override
  _SelectedAudioCategory get _value => super._value as _SelectedAudioCategory;

  @override
  $Res call({
    Object? audioCategory = freezed,
  }) {
    return _then(_SelectedAudioCategory(
      audioCategory == freezed
          ? _value.audioCategory
          : audioCategory // ignore: cast_nullable_to_non_nullable
              as AudioCategory,
    ));
  }

  @override
  $AudioCategoryCopyWith<$Res> get audioCategory {
    return $AudioCategoryCopyWith<$Res>(_value.audioCategory, (value) {
      return _then(_value.copyWith(audioCategory: value));
    });
  }
}

/// @nodoc
class _$_SelectedAudioCategory implements _SelectedAudioCategory {
  const _$_SelectedAudioCategory(this.audioCategory);

  @override
  final AudioCategory audioCategory;

  @override
  String toString() {
    return 'AudioEvent.selectedAudioCategory(audioCategory: $audioCategory)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SelectedAudioCategory &&
            (identical(other.audioCategory, audioCategory) ||
                const DeepCollectionEquality()
                    .equals(other.audioCategory, audioCategory)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(audioCategory);

  @JsonKey(ignore: true)
  @override
  _$SelectedAudioCategoryCopyWith<_SelectedAudioCategory> get copyWith =>
      __$SelectedAudioCategoryCopyWithImpl<_SelectedAudioCategory>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(AudioCategory audioCategory)
        selectedAudioCategory,
  }) {
    return selectedAudioCategory(audioCategory);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(AudioCategory audioCategory)? selectedAudioCategory,
    required TResult orElse(),
  }) {
    if (selectedAudioCategory != null) {
      return selectedAudioCategory(audioCategory);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SelectedAudioCategory value)
        selectedAudioCategory,
  }) {
    return selectedAudioCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SelectedAudioCategory value)? selectedAudioCategory,
    required TResult orElse(),
  }) {
    if (selectedAudioCategory != null) {
      return selectedAudioCategory(this);
    }
    return orElse();
  }
}

abstract class _SelectedAudioCategory implements AudioEvent {
  const factory _SelectedAudioCategory(AudioCategory audioCategory) =
      _$_SelectedAudioCategory;

  AudioCategory get audioCategory => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SelectedAudioCategoryCopyWith<_SelectedAudioCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$AudioStateTearOff {
  const _$AudioStateTearOff();

  _AudioState call(
      {required Option<Either<Failure, List<AudioCategory>>>
          audioCategoriesOption,
      required bool loadingSubCategory,
      required Option<AudioCategory> selectedAudioCategory}) {
    return _AudioState(
      audioCategoriesOption: audioCategoriesOption,
      loadingSubCategory: loadingSubCategory,
      selectedAudioCategory: selectedAudioCategory,
    );
  }
}

/// @nodoc
const $AudioState = _$AudioStateTearOff();

/// @nodoc
mixin _$AudioState {
  Option<Either<Failure, List<AudioCategory>>> get audioCategoriesOption =>
      throw _privateConstructorUsedError;
  bool get loadingSubCategory => throw _privateConstructorUsedError;
  Option<AudioCategory> get selectedAudioCategory =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AudioStateCopyWith<AudioState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AudioStateCopyWith<$Res> {
  factory $AudioStateCopyWith(
          AudioState value, $Res Function(AudioState) then) =
      _$AudioStateCopyWithImpl<$Res>;
  $Res call(
      {Option<Either<Failure, List<AudioCategory>>> audioCategoriesOption,
      bool loadingSubCategory,
      Option<AudioCategory> selectedAudioCategory});
}

/// @nodoc
class _$AudioStateCopyWithImpl<$Res> implements $AudioStateCopyWith<$Res> {
  _$AudioStateCopyWithImpl(this._value, this._then);

  final AudioState _value;
  // ignore: unused_field
  final $Res Function(AudioState) _then;

  @override
  $Res call({
    Object? audioCategoriesOption = freezed,
    Object? loadingSubCategory = freezed,
    Object? selectedAudioCategory = freezed,
  }) {
    return _then(_value.copyWith(
      audioCategoriesOption: audioCategoriesOption == freezed
          ? _value.audioCategoriesOption
          : audioCategoriesOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, List<AudioCategory>>>,
      loadingSubCategory: loadingSubCategory == freezed
          ? _value.loadingSubCategory
          : loadingSubCategory // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedAudioCategory: selectedAudioCategory == freezed
          ? _value.selectedAudioCategory
          : selectedAudioCategory // ignore: cast_nullable_to_non_nullable
              as Option<AudioCategory>,
    ));
  }
}

/// @nodoc
abstract class _$AudioStateCopyWith<$Res> implements $AudioStateCopyWith<$Res> {
  factory _$AudioStateCopyWith(
          _AudioState value, $Res Function(_AudioState) then) =
      __$AudioStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Option<Either<Failure, List<AudioCategory>>> audioCategoriesOption,
      bool loadingSubCategory,
      Option<AudioCategory> selectedAudioCategory});
}

/// @nodoc
class __$AudioStateCopyWithImpl<$Res> extends _$AudioStateCopyWithImpl<$Res>
    implements _$AudioStateCopyWith<$Res> {
  __$AudioStateCopyWithImpl(
      _AudioState _value, $Res Function(_AudioState) _then)
      : super(_value, (v) => _then(v as _AudioState));

  @override
  _AudioState get _value => super._value as _AudioState;

  @override
  $Res call({
    Object? audioCategoriesOption = freezed,
    Object? loadingSubCategory = freezed,
    Object? selectedAudioCategory = freezed,
  }) {
    return _then(_AudioState(
      audioCategoriesOption: audioCategoriesOption == freezed
          ? _value.audioCategoriesOption
          : audioCategoriesOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, List<AudioCategory>>>,
      loadingSubCategory: loadingSubCategory == freezed
          ? _value.loadingSubCategory
          : loadingSubCategory // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedAudioCategory: selectedAudioCategory == freezed
          ? _value.selectedAudioCategory
          : selectedAudioCategory // ignore: cast_nullable_to_non_nullable
              as Option<AudioCategory>,
    ));
  }
}

/// @nodoc
class _$_AudioState implements _AudioState {
  const _$_AudioState(
      {required this.audioCategoriesOption,
      required this.loadingSubCategory,
      required this.selectedAudioCategory});

  @override
  final Option<Either<Failure, List<AudioCategory>>> audioCategoriesOption;
  @override
  final bool loadingSubCategory;
  @override
  final Option<AudioCategory> selectedAudioCategory;

  @override
  String toString() {
    return 'AudioState(audioCategoriesOption: $audioCategoriesOption, loadingSubCategory: $loadingSubCategory, selectedAudioCategory: $selectedAudioCategory)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AudioState &&
            (identical(other.audioCategoriesOption, audioCategoriesOption) ||
                const DeepCollectionEquality().equals(
                    other.audioCategoriesOption, audioCategoriesOption)) &&
            (identical(other.loadingSubCategory, loadingSubCategory) ||
                const DeepCollectionEquality()
                    .equals(other.loadingSubCategory, loadingSubCategory)) &&
            (identical(other.selectedAudioCategory, selectedAudioCategory) ||
                const DeepCollectionEquality().equals(
                    other.selectedAudioCategory, selectedAudioCategory)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(audioCategoriesOption) ^
      const DeepCollectionEquality().hash(loadingSubCategory) ^
      const DeepCollectionEquality().hash(selectedAudioCategory);

  @JsonKey(ignore: true)
  @override
  _$AudioStateCopyWith<_AudioState> get copyWith =>
      __$AudioStateCopyWithImpl<_AudioState>(this, _$identity);
}

abstract class _AudioState implements AudioState {
  const factory _AudioState(
      {required Option<Either<Failure, List<AudioCategory>>>
          audioCategoriesOption,
      required bool loadingSubCategory,
      required Option<AudioCategory> selectedAudioCategory}) = _$_AudioState;

  @override
  Option<Either<Failure, List<AudioCategory>>> get audioCategoriesOption =>
      throw _privateConstructorUsedError;
  @override
  bool get loadingSubCategory => throw _privateConstructorUsedError;
  @override
  Option<AudioCategory> get selectedAudioCategory =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AudioStateCopyWith<_AudioState> get copyWith =>
      throw _privateConstructorUsedError;
}
