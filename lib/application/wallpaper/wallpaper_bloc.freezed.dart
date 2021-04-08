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

  _LikedWallpaper likedWallpaper({required String id}) {
    return _LikedWallpaper(
      id: id,
    );
  }

  _DislikedWallpaper dislikedWallpaper({required String id}) {
    return _DislikedWallpaper(
      id: id,
    );
  }

  _UpdateLikedWallpapers updateLikedWallpapers(
      {required List<String> wallpaperIds}) {
    return _UpdateLikedWallpapers(
      wallpaperIds: wallpaperIds,
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
    required TResult Function(String id) likedWallpaper,
    required TResult Function(String id) dislikedWallpaper,
    required TResult Function(List<String> wallpaperIds) updateLikedWallpapers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String id)? selectedCategory,
    TResult Function(String id)? likedWallpaper,
    TResult Function(String id)? dislikedWallpaper,
    TResult Function(List<String> wallpaperIds)? updateLikedWallpapers,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SelectedCategory value) selectedCategory,
    required TResult Function(_LikedWallpaper value) likedWallpaper,
    required TResult Function(_DislikedWallpaper value) dislikedWallpaper,
    required TResult Function(_UpdateLikedWallpapers value)
        updateLikedWallpapers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SelectedCategory value)? selectedCategory,
    TResult Function(_LikedWallpaper value)? likedWallpaper,
    TResult Function(_DislikedWallpaper value)? dislikedWallpaper,
    TResult Function(_UpdateLikedWallpapers value)? updateLikedWallpapers,
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
    required TResult Function(String id) likedWallpaper,
    required TResult Function(String id) dislikedWallpaper,
    required TResult Function(List<String> wallpaperIds) updateLikedWallpapers,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String id)? selectedCategory,
    TResult Function(String id)? likedWallpaper,
    TResult Function(String id)? dislikedWallpaper,
    TResult Function(List<String> wallpaperIds)? updateLikedWallpapers,
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
    required TResult Function(_LikedWallpaper value) likedWallpaper,
    required TResult Function(_DislikedWallpaper value) dislikedWallpaper,
    required TResult Function(_UpdateLikedWallpapers value)
        updateLikedWallpapers,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SelectedCategory value)? selectedCategory,
    TResult Function(_LikedWallpaper value)? likedWallpaper,
    TResult Function(_DislikedWallpaper value)? dislikedWallpaper,
    TResult Function(_UpdateLikedWallpapers value)? updateLikedWallpapers,
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
    required TResult Function(String id) likedWallpaper,
    required TResult Function(String id) dislikedWallpaper,
    required TResult Function(List<String> wallpaperIds) updateLikedWallpapers,
  }) {
    return selectedCategory(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String id)? selectedCategory,
    TResult Function(String id)? likedWallpaper,
    TResult Function(String id)? dislikedWallpaper,
    TResult Function(List<String> wallpaperIds)? updateLikedWallpapers,
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
    required TResult Function(_LikedWallpaper value) likedWallpaper,
    required TResult Function(_DislikedWallpaper value) dislikedWallpaper,
    required TResult Function(_UpdateLikedWallpapers value)
        updateLikedWallpapers,
  }) {
    return selectedCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SelectedCategory value)? selectedCategory,
    TResult Function(_LikedWallpaper value)? likedWallpaper,
    TResult Function(_DislikedWallpaper value)? dislikedWallpaper,
    TResult Function(_UpdateLikedWallpapers value)? updateLikedWallpapers,
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
abstract class _$LikedWallpaperCopyWith<$Res> {
  factory _$LikedWallpaperCopyWith(
          _LikedWallpaper value, $Res Function(_LikedWallpaper) then) =
      __$LikedWallpaperCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class __$LikedWallpaperCopyWithImpl<$Res>
    extends _$WallpaperEventCopyWithImpl<$Res>
    implements _$LikedWallpaperCopyWith<$Res> {
  __$LikedWallpaperCopyWithImpl(
      _LikedWallpaper _value, $Res Function(_LikedWallpaper) _then)
      : super(_value, (v) => _then(v as _LikedWallpaper));

  @override
  _LikedWallpaper get _value => super._value as _LikedWallpaper;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_LikedWallpaper(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_LikedWallpaper implements _LikedWallpaper {
  const _$_LikedWallpaper({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'WallpaperEvent.likedWallpaper(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LikedWallpaper &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$LikedWallpaperCopyWith<_LikedWallpaper> get copyWith =>
      __$LikedWallpaperCopyWithImpl<_LikedWallpaper>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String id) selectedCategory,
    required TResult Function(String id) likedWallpaper,
    required TResult Function(String id) dislikedWallpaper,
    required TResult Function(List<String> wallpaperIds) updateLikedWallpapers,
  }) {
    return likedWallpaper(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String id)? selectedCategory,
    TResult Function(String id)? likedWallpaper,
    TResult Function(String id)? dislikedWallpaper,
    TResult Function(List<String> wallpaperIds)? updateLikedWallpapers,
    required TResult orElse(),
  }) {
    if (likedWallpaper != null) {
      return likedWallpaper(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SelectedCategory value) selectedCategory,
    required TResult Function(_LikedWallpaper value) likedWallpaper,
    required TResult Function(_DislikedWallpaper value) dislikedWallpaper,
    required TResult Function(_UpdateLikedWallpapers value)
        updateLikedWallpapers,
  }) {
    return likedWallpaper(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SelectedCategory value)? selectedCategory,
    TResult Function(_LikedWallpaper value)? likedWallpaper,
    TResult Function(_DislikedWallpaper value)? dislikedWallpaper,
    TResult Function(_UpdateLikedWallpapers value)? updateLikedWallpapers,
    required TResult orElse(),
  }) {
    if (likedWallpaper != null) {
      return likedWallpaper(this);
    }
    return orElse();
  }
}

abstract class _LikedWallpaper implements WallpaperEvent {
  const factory _LikedWallpaper({required String id}) = _$_LikedWallpaper;

  String get id => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LikedWallpaperCopyWith<_LikedWallpaper> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DislikedWallpaperCopyWith<$Res> {
  factory _$DislikedWallpaperCopyWith(
          _DislikedWallpaper value, $Res Function(_DislikedWallpaper) then) =
      __$DislikedWallpaperCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class __$DislikedWallpaperCopyWithImpl<$Res>
    extends _$WallpaperEventCopyWithImpl<$Res>
    implements _$DislikedWallpaperCopyWith<$Res> {
  __$DislikedWallpaperCopyWithImpl(
      _DislikedWallpaper _value, $Res Function(_DislikedWallpaper) _then)
      : super(_value, (v) => _then(v as _DislikedWallpaper));

  @override
  _DislikedWallpaper get _value => super._value as _DislikedWallpaper;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_DislikedWallpaper(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_DislikedWallpaper implements _DislikedWallpaper {
  const _$_DislikedWallpaper({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'WallpaperEvent.dislikedWallpaper(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DislikedWallpaper &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$DislikedWallpaperCopyWith<_DislikedWallpaper> get copyWith =>
      __$DislikedWallpaperCopyWithImpl<_DislikedWallpaper>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String id) selectedCategory,
    required TResult Function(String id) likedWallpaper,
    required TResult Function(String id) dislikedWallpaper,
    required TResult Function(List<String> wallpaperIds) updateLikedWallpapers,
  }) {
    return dislikedWallpaper(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String id)? selectedCategory,
    TResult Function(String id)? likedWallpaper,
    TResult Function(String id)? dislikedWallpaper,
    TResult Function(List<String> wallpaperIds)? updateLikedWallpapers,
    required TResult orElse(),
  }) {
    if (dislikedWallpaper != null) {
      return dislikedWallpaper(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SelectedCategory value) selectedCategory,
    required TResult Function(_LikedWallpaper value) likedWallpaper,
    required TResult Function(_DislikedWallpaper value) dislikedWallpaper,
    required TResult Function(_UpdateLikedWallpapers value)
        updateLikedWallpapers,
  }) {
    return dislikedWallpaper(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SelectedCategory value)? selectedCategory,
    TResult Function(_LikedWallpaper value)? likedWallpaper,
    TResult Function(_DislikedWallpaper value)? dislikedWallpaper,
    TResult Function(_UpdateLikedWallpapers value)? updateLikedWallpapers,
    required TResult orElse(),
  }) {
    if (dislikedWallpaper != null) {
      return dislikedWallpaper(this);
    }
    return orElse();
  }
}

abstract class _DislikedWallpaper implements WallpaperEvent {
  const factory _DislikedWallpaper({required String id}) = _$_DislikedWallpaper;

  String get id => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DislikedWallpaperCopyWith<_DislikedWallpaper> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UpdateLikedWallpapersCopyWith<$Res> {
  factory _$UpdateLikedWallpapersCopyWith(_UpdateLikedWallpapers value,
          $Res Function(_UpdateLikedWallpapers) then) =
      __$UpdateLikedWallpapersCopyWithImpl<$Res>;
  $Res call({List<String> wallpaperIds});
}

/// @nodoc
class __$UpdateLikedWallpapersCopyWithImpl<$Res>
    extends _$WallpaperEventCopyWithImpl<$Res>
    implements _$UpdateLikedWallpapersCopyWith<$Res> {
  __$UpdateLikedWallpapersCopyWithImpl(_UpdateLikedWallpapers _value,
      $Res Function(_UpdateLikedWallpapers) _then)
      : super(_value, (v) => _then(v as _UpdateLikedWallpapers));

  @override
  _UpdateLikedWallpapers get _value => super._value as _UpdateLikedWallpapers;

  @override
  $Res call({
    Object? wallpaperIds = freezed,
  }) {
    return _then(_UpdateLikedWallpapers(
      wallpaperIds: wallpaperIds == freezed
          ? _value.wallpaperIds
          : wallpaperIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
class _$_UpdateLikedWallpapers implements _UpdateLikedWallpapers {
  const _$_UpdateLikedWallpapers({required this.wallpaperIds});

  @override
  final List<String> wallpaperIds;

  @override
  String toString() {
    return 'WallpaperEvent.updateLikedWallpapers(wallpaperIds: $wallpaperIds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateLikedWallpapers &&
            (identical(other.wallpaperIds, wallpaperIds) ||
                const DeepCollectionEquality()
                    .equals(other.wallpaperIds, wallpaperIds)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(wallpaperIds);

  @JsonKey(ignore: true)
  @override
  _$UpdateLikedWallpapersCopyWith<_UpdateLikedWallpapers> get copyWith =>
      __$UpdateLikedWallpapersCopyWithImpl<_UpdateLikedWallpapers>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String id) selectedCategory,
    required TResult Function(String id) likedWallpaper,
    required TResult Function(String id) dislikedWallpaper,
    required TResult Function(List<String> wallpaperIds) updateLikedWallpapers,
  }) {
    return updateLikedWallpapers(wallpaperIds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String id)? selectedCategory,
    TResult Function(String id)? likedWallpaper,
    TResult Function(String id)? dislikedWallpaper,
    TResult Function(List<String> wallpaperIds)? updateLikedWallpapers,
    required TResult orElse(),
  }) {
    if (updateLikedWallpapers != null) {
      return updateLikedWallpapers(wallpaperIds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SelectedCategory value) selectedCategory,
    required TResult Function(_LikedWallpaper value) likedWallpaper,
    required TResult Function(_DislikedWallpaper value) dislikedWallpaper,
    required TResult Function(_UpdateLikedWallpapers value)
        updateLikedWallpapers,
  }) {
    return updateLikedWallpapers(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SelectedCategory value)? selectedCategory,
    TResult Function(_LikedWallpaper value)? likedWallpaper,
    TResult Function(_DislikedWallpaper value)? dislikedWallpaper,
    TResult Function(_UpdateLikedWallpapers value)? updateLikedWallpapers,
    required TResult orElse(),
  }) {
    if (updateLikedWallpapers != null) {
      return updateLikedWallpapers(this);
    }
    return orElse();
  }
}

abstract class _UpdateLikedWallpapers implements WallpaperEvent {
  const factory _UpdateLikedWallpapers({required List<String> wallpaperIds}) =
      _$_UpdateLikedWallpapers;

  List<String> get wallpaperIds => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$UpdateLikedWallpapersCopyWith<_UpdateLikedWallpapers> get copyWith =>
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
      required Option<Failure> categoryError,
      required List<String> likedWallpapers}) {
    return _WallpaperState(
      wallpaperCategoriesOption: wallpaperCategoriesOption,
      selectedCategory: selectedCategory,
      categoryLoading: categoryLoading,
      categoryError: categoryError,
      likedWallpapers: likedWallpapers,
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
  List<String> get likedWallpapers => throw _privateConstructorUsedError;

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
      Option<Failure> categoryError,
      List<String> likedWallpapers});
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
    Object? likedWallpapers = freezed,
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
      likedWallpapers: likedWallpapers == freezed
          ? _value.likedWallpapers
          : likedWallpapers // ignore: cast_nullable_to_non_nullable
              as List<String>,
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
      Option<Failure> categoryError,
      List<String> likedWallpapers});
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
    Object? likedWallpapers = freezed,
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
      likedWallpapers: likedWallpapers == freezed
          ? _value.likedWallpapers
          : likedWallpapers // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
class _$_WallpaperState implements _WallpaperState {
  const _$_WallpaperState(
      {required this.wallpaperCategoriesOption,
      required this.selectedCategory,
      required this.categoryLoading,
      required this.categoryError,
      required this.likedWallpapers});

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
  final List<String> likedWallpapers;

  @override
  String toString() {
    return 'WallpaperState(wallpaperCategoriesOption: $wallpaperCategoriesOption, selectedCategory: $selectedCategory, categoryLoading: $categoryLoading, categoryError: $categoryError, likedWallpapers: $likedWallpapers)';
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
                    .equals(other.categoryError, categoryError)) &&
            (identical(other.likedWallpapers, likedWallpapers) ||
                const DeepCollectionEquality()
                    .equals(other.likedWallpapers, likedWallpapers)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(wallpaperCategoriesOption) ^
      const DeepCollectionEquality().hash(selectedCategory) ^
      const DeepCollectionEquality().hash(categoryLoading) ^
      const DeepCollectionEquality().hash(categoryError) ^
      const DeepCollectionEquality().hash(likedWallpapers);

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
      required Option<Failure> categoryError,
      required List<String> likedWallpapers}) = _$_WallpaperState;

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
  List<String> get likedWallpapers => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$WallpaperStateCopyWith<_WallpaperState> get copyWith =>
      throw _privateConstructorUsedError;
}
