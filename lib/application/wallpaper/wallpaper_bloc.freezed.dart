// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'wallpaper_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$WallpaperEventTearOff {
  const _$WallpaperEventTearOff();

  _Started started() {
    return const _Started();
  }

  _SelectedCategory selectedCategory({required String id}) {
    return _SelectedCategory(
      id: id,
    );
  }
}

/// @nodoc
const $WallpaperEvent = _$WallpaperEventTearOff();

/// @nodoc
mixin _$WallpaperEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String id) selectedCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String id)? selectedCategory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SelectedCategory value) selectedCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SelectedCategory value)? selectedCategory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WallpaperEventCopyWith<$Res> {
  factory $WallpaperEventCopyWith(
          WallpaperEvent value, $Res Function(WallpaperEvent) then) =
      _$WallpaperEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$WallpaperEventCopyWithImpl<$Res>
    implements $WallpaperEventCopyWith<$Res> {
  _$WallpaperEventCopyWithImpl(this._value, this._then);

  final WallpaperEvent _value;
  // ignore: unused_field
  final $Res Function(WallpaperEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$WallpaperEventCopyWithImpl<$Res>
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
    return 'WallpaperEvent.started()';
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
    required TResult Function(String id) selectedCategory,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String id)? selectedCategory,
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
    required TResult Function(_SelectedCategory value) selectedCategory,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SelectedCategory value)? selectedCategory,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements WallpaperEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$SelectedCategoryCopyWith<$Res> {
  factory _$SelectedCategoryCopyWith(
          _SelectedCategory value, $Res Function(_SelectedCategory) then) =
      __$SelectedCategoryCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class __$SelectedCategoryCopyWithImpl<$Res>
    extends _$WallpaperEventCopyWithImpl<$Res>
    implements _$SelectedCategoryCopyWith<$Res> {
  __$SelectedCategoryCopyWithImpl(
      _SelectedCategory _value, $Res Function(_SelectedCategory) _then)
      : super(_value, (v) => _then(v as _SelectedCategory));

  @override
  _SelectedCategory get _value => super._value as _SelectedCategory;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_SelectedCategory(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_SelectedCategory implements _SelectedCategory {
  const _$_SelectedCategory({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'WallpaperEvent.selectedCategory(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SelectedCategory &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$SelectedCategoryCopyWith<_SelectedCategory> get copyWith =>
      __$SelectedCategoryCopyWithImpl<_SelectedCategory>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String id) selectedCategory,
  }) {
    return selectedCategory(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String id)? selectedCategory,
    required TResult orElse(),
  }) {
    if (selectedCategory != null) {
      return selectedCategory(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SelectedCategory value) selectedCategory,
  }) {
    return selectedCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SelectedCategory value)? selectedCategory,
    required TResult orElse(),
  }) {
    if (selectedCategory != null) {
      return selectedCategory(this);
    }
    return orElse();
  }
}

abstract class _SelectedCategory implements WallpaperEvent {
  const factory _SelectedCategory({required String id}) = _$_SelectedCategory;

  String get id => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SelectedCategoryCopyWith<_SelectedCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$WallpaperStateTearOff {
  const _$WallpaperStateTearOff();

  _WallpaperState call(
      {required Option<Either<Failure, List<WallpaperCategory>>>
          wallpaperCategoriesOption,
      required Option<WallpaperCategory> selectedCategory,
      required bool categoryLoading,
      required Option<Failure> categoryError}) {
    return _WallpaperState(
      wallpaperCategoriesOption: wallpaperCategoriesOption,
      selectedCategory: selectedCategory,
      categoryLoading: categoryLoading,
      categoryError: categoryError,
    );
  }
}

/// @nodoc
const $WallpaperState = _$WallpaperStateTearOff();

/// @nodoc
mixin _$WallpaperState {
  Option<Either<Failure, List<WallpaperCategory>>>
      get wallpaperCategoriesOption => throw _privateConstructorUsedError;
  Option<WallpaperCategory> get selectedCategory =>
      throw _privateConstructorUsedError;
  bool get categoryLoading => throw _privateConstructorUsedError;
  Option<Failure> get categoryError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WallpaperStateCopyWith<WallpaperState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WallpaperStateCopyWith<$Res> {
  factory $WallpaperStateCopyWith(
          WallpaperState value, $Res Function(WallpaperState) then) =
      _$WallpaperStateCopyWithImpl<$Res>;
  $Res call(
      {Option<Either<Failure, List<WallpaperCategory>>>
          wallpaperCategoriesOption,
      Option<WallpaperCategory> selectedCategory,
      bool categoryLoading,
      Option<Failure> categoryError});
}

/// @nodoc
class _$WallpaperStateCopyWithImpl<$Res>
    implements $WallpaperStateCopyWith<$Res> {
  _$WallpaperStateCopyWithImpl(this._value, this._then);

  final WallpaperState _value;
  // ignore: unused_field
  final $Res Function(WallpaperState) _then;

  @override
  $Res call({
    Object? wallpaperCategoriesOption = freezed,
    Object? selectedCategory = freezed,
    Object? categoryLoading = freezed,
    Object? categoryError = freezed,
  }) {
    return _then(_value.copyWith(
      wallpaperCategoriesOption: wallpaperCategoriesOption == freezed
          ? _value.wallpaperCategoriesOption
          : wallpaperCategoriesOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, List<WallpaperCategory>>>,
      selectedCategory: selectedCategory == freezed
          ? _value.selectedCategory
          : selectedCategory // ignore: cast_nullable_to_non_nullable
              as Option<WallpaperCategory>,
      categoryLoading: categoryLoading == freezed
          ? _value.categoryLoading
          : categoryLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      categoryError: categoryError == freezed
          ? _value.categoryError
          : categoryError // ignore: cast_nullable_to_non_nullable
              as Option<Failure>,
    ));
  }
}

/// @nodoc
abstract class _$WallpaperStateCopyWith<$Res>
    implements $WallpaperStateCopyWith<$Res> {
  factory _$WallpaperStateCopyWith(
          _WallpaperState value, $Res Function(_WallpaperState) then) =
      __$WallpaperStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Option<Either<Failure, List<WallpaperCategory>>>
          wallpaperCategoriesOption,
      Option<WallpaperCategory> selectedCategory,
      bool categoryLoading,
      Option<Failure> categoryError});
}

/// @nodoc
class __$WallpaperStateCopyWithImpl<$Res>
    extends _$WallpaperStateCopyWithImpl<$Res>
    implements _$WallpaperStateCopyWith<$Res> {
  __$WallpaperStateCopyWithImpl(
      _WallpaperState _value, $Res Function(_WallpaperState) _then)
      : super(_value, (v) => _then(v as _WallpaperState));

  @override
  _WallpaperState get _value => super._value as _WallpaperState;

  @override
  $Res call({
    Object? wallpaperCategoriesOption = freezed,
    Object? selectedCategory = freezed,
    Object? categoryLoading = freezed,
    Object? categoryError = freezed,
  }) {
    return _then(_WallpaperState(
      wallpaperCategoriesOption: wallpaperCategoriesOption == freezed
          ? _value.wallpaperCategoriesOption
          : wallpaperCategoriesOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, List<WallpaperCategory>>>,
      selectedCategory: selectedCategory == freezed
          ? _value.selectedCategory
          : selectedCategory // ignore: cast_nullable_to_non_nullable
              as Option<WallpaperCategory>,
      categoryLoading: categoryLoading == freezed
          ? _value.categoryLoading
          : categoryLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      categoryError: categoryError == freezed
          ? _value.categoryError
          : categoryError // ignore: cast_nullable_to_non_nullable
              as Option<Failure>,
    ));
  }
}

/// @nodoc
class _$_WallpaperState implements _WallpaperState {
  const _$_WallpaperState(
      {required this.wallpaperCategoriesOption,
      required this.selectedCategory,
      required this.categoryLoading,
      required this.categoryError});

  @override
  final Option<Either<Failure, List<WallpaperCategory>>>
      wallpaperCategoriesOption;
  @override
  final Option<WallpaperCategory> selectedCategory;
  @override
  final bool categoryLoading;
  @override
  final Option<Failure> categoryError;

  @override
  String toString() {
    return 'WallpaperState(wallpaperCategoriesOption: $wallpaperCategoriesOption, selectedCategory: $selectedCategory, categoryLoading: $categoryLoading, categoryError: $categoryError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WallpaperState &&
            (identical(other.wallpaperCategoriesOption,
                    wallpaperCategoriesOption) ||
                const DeepCollectionEquality().equals(
                    other.wallpaperCategoriesOption,
                    wallpaperCategoriesOption)) &&
            (identical(other.selectedCategory, selectedCategory) ||
                const DeepCollectionEquality()
                    .equals(other.selectedCategory, selectedCategory)) &&
            (identical(other.categoryLoading, categoryLoading) ||
                const DeepCollectionEquality()
                    .equals(other.categoryLoading, categoryLoading)) &&
            (identical(other.categoryError, categoryError) ||
                const DeepCollectionEquality()
                    .equals(other.categoryError, categoryError)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(wallpaperCategoriesOption) ^
      const DeepCollectionEquality().hash(selectedCategory) ^
      const DeepCollectionEquality().hash(categoryLoading) ^
      const DeepCollectionEquality().hash(categoryError);

  @JsonKey(ignore: true)
  @override
  _$WallpaperStateCopyWith<_WallpaperState> get copyWith =>
      __$WallpaperStateCopyWithImpl<_WallpaperState>(this, _$identity);
}

abstract class _WallpaperState implements WallpaperState {
  const factory _WallpaperState(
      {required Option<Either<Failure, List<WallpaperCategory>>>
          wallpaperCategoriesOption,
      required Option<WallpaperCategory> selectedCategory,
      required bool categoryLoading,
      required Option<Failure> categoryError}) = _$_WallpaperState;

  @override
  Option<Either<Failure, List<WallpaperCategory>>>
      get wallpaperCategoriesOption => throw _privateConstructorUsedError;
  @override
  Option<WallpaperCategory> get selectedCategory =>
      throw _privateConstructorUsedError;
  @override
  bool get categoryLoading => throw _privateConstructorUsedError;
  @override
  Option<Failure> get categoryError => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$WallpaperStateCopyWith<_WallpaperState> get copyWith =>
      throw _privateConstructorUsedError;
}
