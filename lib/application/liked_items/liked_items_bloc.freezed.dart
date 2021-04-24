// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'liked_items_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LikedItemsEventTearOff {
  const _$LikedItemsEventTearOff();

  _Started started() {
    return const _Started();
  }

  _LoadMoreAudios loadMoreAudios({required String id}) {
    return _LoadMoreAudios(
      id: id,
    );
  }

  _LoadMoreBlogs loadMoreBlogs({required String id}) {
    return _LoadMoreBlogs(
      id: id,
    );
  }

  _LoadMoreWallpapers loadMoreWallpapers({required String id}) {
    return _LoadMoreWallpapers(
      id: id,
    );
  }

  _DislikedAudios dislikedAudios({required String id}) {
    return _DislikedAudios(
      id: id,
    );
  }

  _DislikedBlogs dislikedBlogs({required String id}) {
    return _DislikedBlogs(
      id: id,
    );
  }

  _DislikedWallpapers dislikedWallpapers({required String id}) {
    return _DislikedWallpapers(
      id: id,
    );
  }

  _RestoredAudios restoredAudios({required String id}) {
    return _RestoredAudios(
      id: id,
    );
  }

  _RestoredBlogs restoredBlogs({required String id}) {
    return _RestoredBlogs(
      id: id,
    );
  }

  _RestoredWallpapers restoredWallpapers({required String id}) {
    return _RestoredWallpapers(
      id: id,
    );
  }

  _UpdatedLikedItemsList updatedLikedItemsList(
      {required LikedItemsDataModel data}) {
    return _UpdatedLikedItemsList(
      data: data,
    );
  }
}

/// @nodoc
const $LikedItemsEvent = _$LikedItemsEventTearOff();

/// @nodoc
mixin _$LikedItemsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String id) loadMoreAudios,
    required TResult Function(String id) loadMoreBlogs,
    required TResult Function(String id) loadMoreWallpapers,
    required TResult Function(String id) dislikedAudios,
    required TResult Function(String id) dislikedBlogs,
    required TResult Function(String id) dislikedWallpapers,
    required TResult Function(String id) restoredAudios,
    required TResult Function(String id) restoredBlogs,
    required TResult Function(String id) restoredWallpapers,
    required TResult Function(LikedItemsDataModel data) updatedLikedItemsList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String id)? loadMoreAudios,
    TResult Function(String id)? loadMoreBlogs,
    TResult Function(String id)? loadMoreWallpapers,
    TResult Function(String id)? dislikedAudios,
    TResult Function(String id)? dislikedBlogs,
    TResult Function(String id)? dislikedWallpapers,
    TResult Function(String id)? restoredAudios,
    TResult Function(String id)? restoredBlogs,
    TResult Function(String id)? restoredWallpapers,
    TResult Function(LikedItemsDataModel data)? updatedLikedItemsList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadMoreAudios value) loadMoreAudios,
    required TResult Function(_LoadMoreBlogs value) loadMoreBlogs,
    required TResult Function(_LoadMoreWallpapers value) loadMoreWallpapers,
    required TResult Function(_DislikedAudios value) dislikedAudios,
    required TResult Function(_DislikedBlogs value) dislikedBlogs,
    required TResult Function(_DislikedWallpapers value) dislikedWallpapers,
    required TResult Function(_RestoredAudios value) restoredAudios,
    required TResult Function(_RestoredBlogs value) restoredBlogs,
    required TResult Function(_RestoredWallpapers value) restoredWallpapers,
    required TResult Function(_UpdatedLikedItemsList value)
        updatedLikedItemsList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadMoreAudios value)? loadMoreAudios,
    TResult Function(_LoadMoreBlogs value)? loadMoreBlogs,
    TResult Function(_LoadMoreWallpapers value)? loadMoreWallpapers,
    TResult Function(_DislikedAudios value)? dislikedAudios,
    TResult Function(_DislikedBlogs value)? dislikedBlogs,
    TResult Function(_DislikedWallpapers value)? dislikedWallpapers,
    TResult Function(_RestoredAudios value)? restoredAudios,
    TResult Function(_RestoredBlogs value)? restoredBlogs,
    TResult Function(_RestoredWallpapers value)? restoredWallpapers,
    TResult Function(_UpdatedLikedItemsList value)? updatedLikedItemsList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LikedItemsEventCopyWith<$Res> {
  factory $LikedItemsEventCopyWith(
          LikedItemsEvent value, $Res Function(LikedItemsEvent) then) =
      _$LikedItemsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LikedItemsEventCopyWithImpl<$Res>
    implements $LikedItemsEventCopyWith<$Res> {
  _$LikedItemsEventCopyWithImpl(this._value, this._then);

  final LikedItemsEvent _value;
  // ignore: unused_field
  final $Res Function(LikedItemsEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$LikedItemsEventCopyWithImpl<$Res>
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
    return 'LikedItemsEvent.started()';
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
    required TResult Function(String id) loadMoreAudios,
    required TResult Function(String id) loadMoreBlogs,
    required TResult Function(String id) loadMoreWallpapers,
    required TResult Function(String id) dislikedAudios,
    required TResult Function(String id) dislikedBlogs,
    required TResult Function(String id) dislikedWallpapers,
    required TResult Function(String id) restoredAudios,
    required TResult Function(String id) restoredBlogs,
    required TResult Function(String id) restoredWallpapers,
    required TResult Function(LikedItemsDataModel data) updatedLikedItemsList,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String id)? loadMoreAudios,
    TResult Function(String id)? loadMoreBlogs,
    TResult Function(String id)? loadMoreWallpapers,
    TResult Function(String id)? dislikedAudios,
    TResult Function(String id)? dislikedBlogs,
    TResult Function(String id)? dislikedWallpapers,
    TResult Function(String id)? restoredAudios,
    TResult Function(String id)? restoredBlogs,
    TResult Function(String id)? restoredWallpapers,
    TResult Function(LikedItemsDataModel data)? updatedLikedItemsList,
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
    required TResult Function(_LoadMoreAudios value) loadMoreAudios,
    required TResult Function(_LoadMoreBlogs value) loadMoreBlogs,
    required TResult Function(_LoadMoreWallpapers value) loadMoreWallpapers,
    required TResult Function(_DislikedAudios value) dislikedAudios,
    required TResult Function(_DislikedBlogs value) dislikedBlogs,
    required TResult Function(_DislikedWallpapers value) dislikedWallpapers,
    required TResult Function(_RestoredAudios value) restoredAudios,
    required TResult Function(_RestoredBlogs value) restoredBlogs,
    required TResult Function(_RestoredWallpapers value) restoredWallpapers,
    required TResult Function(_UpdatedLikedItemsList value)
        updatedLikedItemsList,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadMoreAudios value)? loadMoreAudios,
    TResult Function(_LoadMoreBlogs value)? loadMoreBlogs,
    TResult Function(_LoadMoreWallpapers value)? loadMoreWallpapers,
    TResult Function(_DislikedAudios value)? dislikedAudios,
    TResult Function(_DislikedBlogs value)? dislikedBlogs,
    TResult Function(_DislikedWallpapers value)? dislikedWallpapers,
    TResult Function(_RestoredAudios value)? restoredAudios,
    TResult Function(_RestoredBlogs value)? restoredBlogs,
    TResult Function(_RestoredWallpapers value)? restoredWallpapers,
    TResult Function(_UpdatedLikedItemsList value)? updatedLikedItemsList,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements LikedItemsEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$LoadMoreAudiosCopyWith<$Res> {
  factory _$LoadMoreAudiosCopyWith(
          _LoadMoreAudios value, $Res Function(_LoadMoreAudios) then) =
      __$LoadMoreAudiosCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class __$LoadMoreAudiosCopyWithImpl<$Res>
    extends _$LikedItemsEventCopyWithImpl<$Res>
    implements _$LoadMoreAudiosCopyWith<$Res> {
  __$LoadMoreAudiosCopyWithImpl(
      _LoadMoreAudios _value, $Res Function(_LoadMoreAudios) _then)
      : super(_value, (v) => _then(v as _LoadMoreAudios));

  @override
  _LoadMoreAudios get _value => super._value as _LoadMoreAudios;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_LoadMoreAudios(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_LoadMoreAudios implements _LoadMoreAudios {
  const _$_LoadMoreAudios({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'LikedItemsEvent.loadMoreAudios(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadMoreAudios &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$LoadMoreAudiosCopyWith<_LoadMoreAudios> get copyWith =>
      __$LoadMoreAudiosCopyWithImpl<_LoadMoreAudios>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String id) loadMoreAudios,
    required TResult Function(String id) loadMoreBlogs,
    required TResult Function(String id) loadMoreWallpapers,
    required TResult Function(String id) dislikedAudios,
    required TResult Function(String id) dislikedBlogs,
    required TResult Function(String id) dislikedWallpapers,
    required TResult Function(String id) restoredAudios,
    required TResult Function(String id) restoredBlogs,
    required TResult Function(String id) restoredWallpapers,
    required TResult Function(LikedItemsDataModel data) updatedLikedItemsList,
  }) {
    return loadMoreAudios(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String id)? loadMoreAudios,
    TResult Function(String id)? loadMoreBlogs,
    TResult Function(String id)? loadMoreWallpapers,
    TResult Function(String id)? dislikedAudios,
    TResult Function(String id)? dislikedBlogs,
    TResult Function(String id)? dislikedWallpapers,
    TResult Function(String id)? restoredAudios,
    TResult Function(String id)? restoredBlogs,
    TResult Function(String id)? restoredWallpapers,
    TResult Function(LikedItemsDataModel data)? updatedLikedItemsList,
    required TResult orElse(),
  }) {
    if (loadMoreAudios != null) {
      return loadMoreAudios(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadMoreAudios value) loadMoreAudios,
    required TResult Function(_LoadMoreBlogs value) loadMoreBlogs,
    required TResult Function(_LoadMoreWallpapers value) loadMoreWallpapers,
    required TResult Function(_DislikedAudios value) dislikedAudios,
    required TResult Function(_DislikedBlogs value) dislikedBlogs,
    required TResult Function(_DislikedWallpapers value) dislikedWallpapers,
    required TResult Function(_RestoredAudios value) restoredAudios,
    required TResult Function(_RestoredBlogs value) restoredBlogs,
    required TResult Function(_RestoredWallpapers value) restoredWallpapers,
    required TResult Function(_UpdatedLikedItemsList value)
        updatedLikedItemsList,
  }) {
    return loadMoreAudios(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadMoreAudios value)? loadMoreAudios,
    TResult Function(_LoadMoreBlogs value)? loadMoreBlogs,
    TResult Function(_LoadMoreWallpapers value)? loadMoreWallpapers,
    TResult Function(_DislikedAudios value)? dislikedAudios,
    TResult Function(_DislikedBlogs value)? dislikedBlogs,
    TResult Function(_DislikedWallpapers value)? dislikedWallpapers,
    TResult Function(_RestoredAudios value)? restoredAudios,
    TResult Function(_RestoredBlogs value)? restoredBlogs,
    TResult Function(_RestoredWallpapers value)? restoredWallpapers,
    TResult Function(_UpdatedLikedItemsList value)? updatedLikedItemsList,
    required TResult orElse(),
  }) {
    if (loadMoreAudios != null) {
      return loadMoreAudios(this);
    }
    return orElse();
  }
}

abstract class _LoadMoreAudios implements LikedItemsEvent {
  const factory _LoadMoreAudios({required String id}) = _$_LoadMoreAudios;

  String get id => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadMoreAudiosCopyWith<_LoadMoreAudios> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadMoreBlogsCopyWith<$Res> {
  factory _$LoadMoreBlogsCopyWith(
          _LoadMoreBlogs value, $Res Function(_LoadMoreBlogs) then) =
      __$LoadMoreBlogsCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class __$LoadMoreBlogsCopyWithImpl<$Res>
    extends _$LikedItemsEventCopyWithImpl<$Res>
    implements _$LoadMoreBlogsCopyWith<$Res> {
  __$LoadMoreBlogsCopyWithImpl(
      _LoadMoreBlogs _value, $Res Function(_LoadMoreBlogs) _then)
      : super(_value, (v) => _then(v as _LoadMoreBlogs));

  @override
  _LoadMoreBlogs get _value => super._value as _LoadMoreBlogs;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_LoadMoreBlogs(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_LoadMoreBlogs implements _LoadMoreBlogs {
  const _$_LoadMoreBlogs({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'LikedItemsEvent.loadMoreBlogs(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadMoreBlogs &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$LoadMoreBlogsCopyWith<_LoadMoreBlogs> get copyWith =>
      __$LoadMoreBlogsCopyWithImpl<_LoadMoreBlogs>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String id) loadMoreAudios,
    required TResult Function(String id) loadMoreBlogs,
    required TResult Function(String id) loadMoreWallpapers,
    required TResult Function(String id) dislikedAudios,
    required TResult Function(String id) dislikedBlogs,
    required TResult Function(String id) dislikedWallpapers,
    required TResult Function(String id) restoredAudios,
    required TResult Function(String id) restoredBlogs,
    required TResult Function(String id) restoredWallpapers,
    required TResult Function(LikedItemsDataModel data) updatedLikedItemsList,
  }) {
    return loadMoreBlogs(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String id)? loadMoreAudios,
    TResult Function(String id)? loadMoreBlogs,
    TResult Function(String id)? loadMoreWallpapers,
    TResult Function(String id)? dislikedAudios,
    TResult Function(String id)? dislikedBlogs,
    TResult Function(String id)? dislikedWallpapers,
    TResult Function(String id)? restoredAudios,
    TResult Function(String id)? restoredBlogs,
    TResult Function(String id)? restoredWallpapers,
    TResult Function(LikedItemsDataModel data)? updatedLikedItemsList,
    required TResult orElse(),
  }) {
    if (loadMoreBlogs != null) {
      return loadMoreBlogs(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadMoreAudios value) loadMoreAudios,
    required TResult Function(_LoadMoreBlogs value) loadMoreBlogs,
    required TResult Function(_LoadMoreWallpapers value) loadMoreWallpapers,
    required TResult Function(_DislikedAudios value) dislikedAudios,
    required TResult Function(_DislikedBlogs value) dislikedBlogs,
    required TResult Function(_DislikedWallpapers value) dislikedWallpapers,
    required TResult Function(_RestoredAudios value) restoredAudios,
    required TResult Function(_RestoredBlogs value) restoredBlogs,
    required TResult Function(_RestoredWallpapers value) restoredWallpapers,
    required TResult Function(_UpdatedLikedItemsList value)
        updatedLikedItemsList,
  }) {
    return loadMoreBlogs(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadMoreAudios value)? loadMoreAudios,
    TResult Function(_LoadMoreBlogs value)? loadMoreBlogs,
    TResult Function(_LoadMoreWallpapers value)? loadMoreWallpapers,
    TResult Function(_DislikedAudios value)? dislikedAudios,
    TResult Function(_DislikedBlogs value)? dislikedBlogs,
    TResult Function(_DislikedWallpapers value)? dislikedWallpapers,
    TResult Function(_RestoredAudios value)? restoredAudios,
    TResult Function(_RestoredBlogs value)? restoredBlogs,
    TResult Function(_RestoredWallpapers value)? restoredWallpapers,
    TResult Function(_UpdatedLikedItemsList value)? updatedLikedItemsList,
    required TResult orElse(),
  }) {
    if (loadMoreBlogs != null) {
      return loadMoreBlogs(this);
    }
    return orElse();
  }
}

abstract class _LoadMoreBlogs implements LikedItemsEvent {
  const factory _LoadMoreBlogs({required String id}) = _$_LoadMoreBlogs;

  String get id => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadMoreBlogsCopyWith<_LoadMoreBlogs> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadMoreWallpapersCopyWith<$Res> {
  factory _$LoadMoreWallpapersCopyWith(
          _LoadMoreWallpapers value, $Res Function(_LoadMoreWallpapers) then) =
      __$LoadMoreWallpapersCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class __$LoadMoreWallpapersCopyWithImpl<$Res>
    extends _$LikedItemsEventCopyWithImpl<$Res>
    implements _$LoadMoreWallpapersCopyWith<$Res> {
  __$LoadMoreWallpapersCopyWithImpl(
      _LoadMoreWallpapers _value, $Res Function(_LoadMoreWallpapers) _then)
      : super(_value, (v) => _then(v as _LoadMoreWallpapers));

  @override
  _LoadMoreWallpapers get _value => super._value as _LoadMoreWallpapers;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_LoadMoreWallpapers(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_LoadMoreWallpapers implements _LoadMoreWallpapers {
  const _$_LoadMoreWallpapers({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'LikedItemsEvent.loadMoreWallpapers(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadMoreWallpapers &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$LoadMoreWallpapersCopyWith<_LoadMoreWallpapers> get copyWith =>
      __$LoadMoreWallpapersCopyWithImpl<_LoadMoreWallpapers>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String id) loadMoreAudios,
    required TResult Function(String id) loadMoreBlogs,
    required TResult Function(String id) loadMoreWallpapers,
    required TResult Function(String id) dislikedAudios,
    required TResult Function(String id) dislikedBlogs,
    required TResult Function(String id) dislikedWallpapers,
    required TResult Function(String id) restoredAudios,
    required TResult Function(String id) restoredBlogs,
    required TResult Function(String id) restoredWallpapers,
    required TResult Function(LikedItemsDataModel data) updatedLikedItemsList,
  }) {
    return loadMoreWallpapers(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String id)? loadMoreAudios,
    TResult Function(String id)? loadMoreBlogs,
    TResult Function(String id)? loadMoreWallpapers,
    TResult Function(String id)? dislikedAudios,
    TResult Function(String id)? dislikedBlogs,
    TResult Function(String id)? dislikedWallpapers,
    TResult Function(String id)? restoredAudios,
    TResult Function(String id)? restoredBlogs,
    TResult Function(String id)? restoredWallpapers,
    TResult Function(LikedItemsDataModel data)? updatedLikedItemsList,
    required TResult orElse(),
  }) {
    if (loadMoreWallpapers != null) {
      return loadMoreWallpapers(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadMoreAudios value) loadMoreAudios,
    required TResult Function(_LoadMoreBlogs value) loadMoreBlogs,
    required TResult Function(_LoadMoreWallpapers value) loadMoreWallpapers,
    required TResult Function(_DislikedAudios value) dislikedAudios,
    required TResult Function(_DislikedBlogs value) dislikedBlogs,
    required TResult Function(_DislikedWallpapers value) dislikedWallpapers,
    required TResult Function(_RestoredAudios value) restoredAudios,
    required TResult Function(_RestoredBlogs value) restoredBlogs,
    required TResult Function(_RestoredWallpapers value) restoredWallpapers,
    required TResult Function(_UpdatedLikedItemsList value)
        updatedLikedItemsList,
  }) {
    return loadMoreWallpapers(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadMoreAudios value)? loadMoreAudios,
    TResult Function(_LoadMoreBlogs value)? loadMoreBlogs,
    TResult Function(_LoadMoreWallpapers value)? loadMoreWallpapers,
    TResult Function(_DislikedAudios value)? dislikedAudios,
    TResult Function(_DislikedBlogs value)? dislikedBlogs,
    TResult Function(_DislikedWallpapers value)? dislikedWallpapers,
    TResult Function(_RestoredAudios value)? restoredAudios,
    TResult Function(_RestoredBlogs value)? restoredBlogs,
    TResult Function(_RestoredWallpapers value)? restoredWallpapers,
    TResult Function(_UpdatedLikedItemsList value)? updatedLikedItemsList,
    required TResult orElse(),
  }) {
    if (loadMoreWallpapers != null) {
      return loadMoreWallpapers(this);
    }
    return orElse();
  }
}

abstract class _LoadMoreWallpapers implements LikedItemsEvent {
  const factory _LoadMoreWallpapers({required String id}) =
      _$_LoadMoreWallpapers;

  String get id => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadMoreWallpapersCopyWith<_LoadMoreWallpapers> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DislikedAudiosCopyWith<$Res> {
  factory _$DislikedAudiosCopyWith(
          _DislikedAudios value, $Res Function(_DislikedAudios) then) =
      __$DislikedAudiosCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class __$DislikedAudiosCopyWithImpl<$Res>
    extends _$LikedItemsEventCopyWithImpl<$Res>
    implements _$DislikedAudiosCopyWith<$Res> {
  __$DislikedAudiosCopyWithImpl(
      _DislikedAudios _value, $Res Function(_DislikedAudios) _then)
      : super(_value, (v) => _then(v as _DislikedAudios));

  @override
  _DislikedAudios get _value => super._value as _DislikedAudios;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_DislikedAudios(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_DislikedAudios implements _DislikedAudios {
  const _$_DislikedAudios({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'LikedItemsEvent.dislikedAudios(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DislikedAudios &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$DislikedAudiosCopyWith<_DislikedAudios> get copyWith =>
      __$DislikedAudiosCopyWithImpl<_DislikedAudios>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String id) loadMoreAudios,
    required TResult Function(String id) loadMoreBlogs,
    required TResult Function(String id) loadMoreWallpapers,
    required TResult Function(String id) dislikedAudios,
    required TResult Function(String id) dislikedBlogs,
    required TResult Function(String id) dislikedWallpapers,
    required TResult Function(String id) restoredAudios,
    required TResult Function(String id) restoredBlogs,
    required TResult Function(String id) restoredWallpapers,
    required TResult Function(LikedItemsDataModel data) updatedLikedItemsList,
  }) {
    return dislikedAudios(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String id)? loadMoreAudios,
    TResult Function(String id)? loadMoreBlogs,
    TResult Function(String id)? loadMoreWallpapers,
    TResult Function(String id)? dislikedAudios,
    TResult Function(String id)? dislikedBlogs,
    TResult Function(String id)? dislikedWallpapers,
    TResult Function(String id)? restoredAudios,
    TResult Function(String id)? restoredBlogs,
    TResult Function(String id)? restoredWallpapers,
    TResult Function(LikedItemsDataModel data)? updatedLikedItemsList,
    required TResult orElse(),
  }) {
    if (dislikedAudios != null) {
      return dislikedAudios(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadMoreAudios value) loadMoreAudios,
    required TResult Function(_LoadMoreBlogs value) loadMoreBlogs,
    required TResult Function(_LoadMoreWallpapers value) loadMoreWallpapers,
    required TResult Function(_DislikedAudios value) dislikedAudios,
    required TResult Function(_DislikedBlogs value) dislikedBlogs,
    required TResult Function(_DislikedWallpapers value) dislikedWallpapers,
    required TResult Function(_RestoredAudios value) restoredAudios,
    required TResult Function(_RestoredBlogs value) restoredBlogs,
    required TResult Function(_RestoredWallpapers value) restoredWallpapers,
    required TResult Function(_UpdatedLikedItemsList value)
        updatedLikedItemsList,
  }) {
    return dislikedAudios(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadMoreAudios value)? loadMoreAudios,
    TResult Function(_LoadMoreBlogs value)? loadMoreBlogs,
    TResult Function(_LoadMoreWallpapers value)? loadMoreWallpapers,
    TResult Function(_DislikedAudios value)? dislikedAudios,
    TResult Function(_DislikedBlogs value)? dislikedBlogs,
    TResult Function(_DislikedWallpapers value)? dislikedWallpapers,
    TResult Function(_RestoredAudios value)? restoredAudios,
    TResult Function(_RestoredBlogs value)? restoredBlogs,
    TResult Function(_RestoredWallpapers value)? restoredWallpapers,
    TResult Function(_UpdatedLikedItemsList value)? updatedLikedItemsList,
    required TResult orElse(),
  }) {
    if (dislikedAudios != null) {
      return dislikedAudios(this);
    }
    return orElse();
  }
}

abstract class _DislikedAudios implements LikedItemsEvent {
  const factory _DislikedAudios({required String id}) = _$_DislikedAudios;

  String get id => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DislikedAudiosCopyWith<_DislikedAudios> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DislikedBlogsCopyWith<$Res> {
  factory _$DislikedBlogsCopyWith(
          _DislikedBlogs value, $Res Function(_DislikedBlogs) then) =
      __$DislikedBlogsCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class __$DislikedBlogsCopyWithImpl<$Res>
    extends _$LikedItemsEventCopyWithImpl<$Res>
    implements _$DislikedBlogsCopyWith<$Res> {
  __$DislikedBlogsCopyWithImpl(
      _DislikedBlogs _value, $Res Function(_DislikedBlogs) _then)
      : super(_value, (v) => _then(v as _DislikedBlogs));

  @override
  _DislikedBlogs get _value => super._value as _DislikedBlogs;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_DislikedBlogs(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_DislikedBlogs implements _DislikedBlogs {
  const _$_DislikedBlogs({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'LikedItemsEvent.dislikedBlogs(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DislikedBlogs &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$DislikedBlogsCopyWith<_DislikedBlogs> get copyWith =>
      __$DislikedBlogsCopyWithImpl<_DislikedBlogs>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String id) loadMoreAudios,
    required TResult Function(String id) loadMoreBlogs,
    required TResult Function(String id) loadMoreWallpapers,
    required TResult Function(String id) dislikedAudios,
    required TResult Function(String id) dislikedBlogs,
    required TResult Function(String id) dislikedWallpapers,
    required TResult Function(String id) restoredAudios,
    required TResult Function(String id) restoredBlogs,
    required TResult Function(String id) restoredWallpapers,
    required TResult Function(LikedItemsDataModel data) updatedLikedItemsList,
  }) {
    return dislikedBlogs(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String id)? loadMoreAudios,
    TResult Function(String id)? loadMoreBlogs,
    TResult Function(String id)? loadMoreWallpapers,
    TResult Function(String id)? dislikedAudios,
    TResult Function(String id)? dislikedBlogs,
    TResult Function(String id)? dislikedWallpapers,
    TResult Function(String id)? restoredAudios,
    TResult Function(String id)? restoredBlogs,
    TResult Function(String id)? restoredWallpapers,
    TResult Function(LikedItemsDataModel data)? updatedLikedItemsList,
    required TResult orElse(),
  }) {
    if (dislikedBlogs != null) {
      return dislikedBlogs(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadMoreAudios value) loadMoreAudios,
    required TResult Function(_LoadMoreBlogs value) loadMoreBlogs,
    required TResult Function(_LoadMoreWallpapers value) loadMoreWallpapers,
    required TResult Function(_DislikedAudios value) dislikedAudios,
    required TResult Function(_DislikedBlogs value) dislikedBlogs,
    required TResult Function(_DislikedWallpapers value) dislikedWallpapers,
    required TResult Function(_RestoredAudios value) restoredAudios,
    required TResult Function(_RestoredBlogs value) restoredBlogs,
    required TResult Function(_RestoredWallpapers value) restoredWallpapers,
    required TResult Function(_UpdatedLikedItemsList value)
        updatedLikedItemsList,
  }) {
    return dislikedBlogs(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadMoreAudios value)? loadMoreAudios,
    TResult Function(_LoadMoreBlogs value)? loadMoreBlogs,
    TResult Function(_LoadMoreWallpapers value)? loadMoreWallpapers,
    TResult Function(_DislikedAudios value)? dislikedAudios,
    TResult Function(_DislikedBlogs value)? dislikedBlogs,
    TResult Function(_DislikedWallpapers value)? dislikedWallpapers,
    TResult Function(_RestoredAudios value)? restoredAudios,
    TResult Function(_RestoredBlogs value)? restoredBlogs,
    TResult Function(_RestoredWallpapers value)? restoredWallpapers,
    TResult Function(_UpdatedLikedItemsList value)? updatedLikedItemsList,
    required TResult orElse(),
  }) {
    if (dislikedBlogs != null) {
      return dislikedBlogs(this);
    }
    return orElse();
  }
}

abstract class _DislikedBlogs implements LikedItemsEvent {
  const factory _DislikedBlogs({required String id}) = _$_DislikedBlogs;

  String get id => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DislikedBlogsCopyWith<_DislikedBlogs> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DislikedWallpapersCopyWith<$Res> {
  factory _$DislikedWallpapersCopyWith(
          _DislikedWallpapers value, $Res Function(_DislikedWallpapers) then) =
      __$DislikedWallpapersCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class __$DislikedWallpapersCopyWithImpl<$Res>
    extends _$LikedItemsEventCopyWithImpl<$Res>
    implements _$DislikedWallpapersCopyWith<$Res> {
  __$DislikedWallpapersCopyWithImpl(
      _DislikedWallpapers _value, $Res Function(_DislikedWallpapers) _then)
      : super(_value, (v) => _then(v as _DislikedWallpapers));

  @override
  _DislikedWallpapers get _value => super._value as _DislikedWallpapers;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_DislikedWallpapers(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_DislikedWallpapers implements _DislikedWallpapers {
  const _$_DislikedWallpapers({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'LikedItemsEvent.dislikedWallpapers(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DislikedWallpapers &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$DislikedWallpapersCopyWith<_DislikedWallpapers> get copyWith =>
      __$DislikedWallpapersCopyWithImpl<_DislikedWallpapers>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String id) loadMoreAudios,
    required TResult Function(String id) loadMoreBlogs,
    required TResult Function(String id) loadMoreWallpapers,
    required TResult Function(String id) dislikedAudios,
    required TResult Function(String id) dislikedBlogs,
    required TResult Function(String id) dislikedWallpapers,
    required TResult Function(String id) restoredAudios,
    required TResult Function(String id) restoredBlogs,
    required TResult Function(String id) restoredWallpapers,
    required TResult Function(LikedItemsDataModel data) updatedLikedItemsList,
  }) {
    return dislikedWallpapers(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String id)? loadMoreAudios,
    TResult Function(String id)? loadMoreBlogs,
    TResult Function(String id)? loadMoreWallpapers,
    TResult Function(String id)? dislikedAudios,
    TResult Function(String id)? dislikedBlogs,
    TResult Function(String id)? dislikedWallpapers,
    TResult Function(String id)? restoredAudios,
    TResult Function(String id)? restoredBlogs,
    TResult Function(String id)? restoredWallpapers,
    TResult Function(LikedItemsDataModel data)? updatedLikedItemsList,
    required TResult orElse(),
  }) {
    if (dislikedWallpapers != null) {
      return dislikedWallpapers(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadMoreAudios value) loadMoreAudios,
    required TResult Function(_LoadMoreBlogs value) loadMoreBlogs,
    required TResult Function(_LoadMoreWallpapers value) loadMoreWallpapers,
    required TResult Function(_DislikedAudios value) dislikedAudios,
    required TResult Function(_DislikedBlogs value) dislikedBlogs,
    required TResult Function(_DislikedWallpapers value) dislikedWallpapers,
    required TResult Function(_RestoredAudios value) restoredAudios,
    required TResult Function(_RestoredBlogs value) restoredBlogs,
    required TResult Function(_RestoredWallpapers value) restoredWallpapers,
    required TResult Function(_UpdatedLikedItemsList value)
        updatedLikedItemsList,
  }) {
    return dislikedWallpapers(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadMoreAudios value)? loadMoreAudios,
    TResult Function(_LoadMoreBlogs value)? loadMoreBlogs,
    TResult Function(_LoadMoreWallpapers value)? loadMoreWallpapers,
    TResult Function(_DislikedAudios value)? dislikedAudios,
    TResult Function(_DislikedBlogs value)? dislikedBlogs,
    TResult Function(_DislikedWallpapers value)? dislikedWallpapers,
    TResult Function(_RestoredAudios value)? restoredAudios,
    TResult Function(_RestoredBlogs value)? restoredBlogs,
    TResult Function(_RestoredWallpapers value)? restoredWallpapers,
    TResult Function(_UpdatedLikedItemsList value)? updatedLikedItemsList,
    required TResult orElse(),
  }) {
    if (dislikedWallpapers != null) {
      return dislikedWallpapers(this);
    }
    return orElse();
  }
}

abstract class _DislikedWallpapers implements LikedItemsEvent {
  const factory _DislikedWallpapers({required String id}) =
      _$_DislikedWallpapers;

  String get id => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DislikedWallpapersCopyWith<_DislikedWallpapers> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RestoredAudiosCopyWith<$Res> {
  factory _$RestoredAudiosCopyWith(
          _RestoredAudios value, $Res Function(_RestoredAudios) then) =
      __$RestoredAudiosCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class __$RestoredAudiosCopyWithImpl<$Res>
    extends _$LikedItemsEventCopyWithImpl<$Res>
    implements _$RestoredAudiosCopyWith<$Res> {
  __$RestoredAudiosCopyWithImpl(
      _RestoredAudios _value, $Res Function(_RestoredAudios) _then)
      : super(_value, (v) => _then(v as _RestoredAudios));

  @override
  _RestoredAudios get _value => super._value as _RestoredAudios;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_RestoredAudios(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_RestoredAudios implements _RestoredAudios {
  const _$_RestoredAudios({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'LikedItemsEvent.restoredAudios(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RestoredAudios &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$RestoredAudiosCopyWith<_RestoredAudios> get copyWith =>
      __$RestoredAudiosCopyWithImpl<_RestoredAudios>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String id) loadMoreAudios,
    required TResult Function(String id) loadMoreBlogs,
    required TResult Function(String id) loadMoreWallpapers,
    required TResult Function(String id) dislikedAudios,
    required TResult Function(String id) dislikedBlogs,
    required TResult Function(String id) dislikedWallpapers,
    required TResult Function(String id) restoredAudios,
    required TResult Function(String id) restoredBlogs,
    required TResult Function(String id) restoredWallpapers,
    required TResult Function(LikedItemsDataModel data) updatedLikedItemsList,
  }) {
    return restoredAudios(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String id)? loadMoreAudios,
    TResult Function(String id)? loadMoreBlogs,
    TResult Function(String id)? loadMoreWallpapers,
    TResult Function(String id)? dislikedAudios,
    TResult Function(String id)? dislikedBlogs,
    TResult Function(String id)? dislikedWallpapers,
    TResult Function(String id)? restoredAudios,
    TResult Function(String id)? restoredBlogs,
    TResult Function(String id)? restoredWallpapers,
    TResult Function(LikedItemsDataModel data)? updatedLikedItemsList,
    required TResult orElse(),
  }) {
    if (restoredAudios != null) {
      return restoredAudios(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadMoreAudios value) loadMoreAudios,
    required TResult Function(_LoadMoreBlogs value) loadMoreBlogs,
    required TResult Function(_LoadMoreWallpapers value) loadMoreWallpapers,
    required TResult Function(_DislikedAudios value) dislikedAudios,
    required TResult Function(_DislikedBlogs value) dislikedBlogs,
    required TResult Function(_DislikedWallpapers value) dislikedWallpapers,
    required TResult Function(_RestoredAudios value) restoredAudios,
    required TResult Function(_RestoredBlogs value) restoredBlogs,
    required TResult Function(_RestoredWallpapers value) restoredWallpapers,
    required TResult Function(_UpdatedLikedItemsList value)
        updatedLikedItemsList,
  }) {
    return restoredAudios(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadMoreAudios value)? loadMoreAudios,
    TResult Function(_LoadMoreBlogs value)? loadMoreBlogs,
    TResult Function(_LoadMoreWallpapers value)? loadMoreWallpapers,
    TResult Function(_DislikedAudios value)? dislikedAudios,
    TResult Function(_DislikedBlogs value)? dislikedBlogs,
    TResult Function(_DislikedWallpapers value)? dislikedWallpapers,
    TResult Function(_RestoredAudios value)? restoredAudios,
    TResult Function(_RestoredBlogs value)? restoredBlogs,
    TResult Function(_RestoredWallpapers value)? restoredWallpapers,
    TResult Function(_UpdatedLikedItemsList value)? updatedLikedItemsList,
    required TResult orElse(),
  }) {
    if (restoredAudios != null) {
      return restoredAudios(this);
    }
    return orElse();
  }
}

abstract class _RestoredAudios implements LikedItemsEvent {
  const factory _RestoredAudios({required String id}) = _$_RestoredAudios;

  String get id => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$RestoredAudiosCopyWith<_RestoredAudios> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RestoredBlogsCopyWith<$Res> {
  factory _$RestoredBlogsCopyWith(
          _RestoredBlogs value, $Res Function(_RestoredBlogs) then) =
      __$RestoredBlogsCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class __$RestoredBlogsCopyWithImpl<$Res>
    extends _$LikedItemsEventCopyWithImpl<$Res>
    implements _$RestoredBlogsCopyWith<$Res> {
  __$RestoredBlogsCopyWithImpl(
      _RestoredBlogs _value, $Res Function(_RestoredBlogs) _then)
      : super(_value, (v) => _then(v as _RestoredBlogs));

  @override
  _RestoredBlogs get _value => super._value as _RestoredBlogs;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_RestoredBlogs(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_RestoredBlogs implements _RestoredBlogs {
  const _$_RestoredBlogs({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'LikedItemsEvent.restoredBlogs(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RestoredBlogs &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$RestoredBlogsCopyWith<_RestoredBlogs> get copyWith =>
      __$RestoredBlogsCopyWithImpl<_RestoredBlogs>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String id) loadMoreAudios,
    required TResult Function(String id) loadMoreBlogs,
    required TResult Function(String id) loadMoreWallpapers,
    required TResult Function(String id) dislikedAudios,
    required TResult Function(String id) dislikedBlogs,
    required TResult Function(String id) dislikedWallpapers,
    required TResult Function(String id) restoredAudios,
    required TResult Function(String id) restoredBlogs,
    required TResult Function(String id) restoredWallpapers,
    required TResult Function(LikedItemsDataModel data) updatedLikedItemsList,
  }) {
    return restoredBlogs(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String id)? loadMoreAudios,
    TResult Function(String id)? loadMoreBlogs,
    TResult Function(String id)? loadMoreWallpapers,
    TResult Function(String id)? dislikedAudios,
    TResult Function(String id)? dislikedBlogs,
    TResult Function(String id)? dislikedWallpapers,
    TResult Function(String id)? restoredAudios,
    TResult Function(String id)? restoredBlogs,
    TResult Function(String id)? restoredWallpapers,
    TResult Function(LikedItemsDataModel data)? updatedLikedItemsList,
    required TResult orElse(),
  }) {
    if (restoredBlogs != null) {
      return restoredBlogs(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadMoreAudios value) loadMoreAudios,
    required TResult Function(_LoadMoreBlogs value) loadMoreBlogs,
    required TResult Function(_LoadMoreWallpapers value) loadMoreWallpapers,
    required TResult Function(_DislikedAudios value) dislikedAudios,
    required TResult Function(_DislikedBlogs value) dislikedBlogs,
    required TResult Function(_DislikedWallpapers value) dislikedWallpapers,
    required TResult Function(_RestoredAudios value) restoredAudios,
    required TResult Function(_RestoredBlogs value) restoredBlogs,
    required TResult Function(_RestoredWallpapers value) restoredWallpapers,
    required TResult Function(_UpdatedLikedItemsList value)
        updatedLikedItemsList,
  }) {
    return restoredBlogs(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadMoreAudios value)? loadMoreAudios,
    TResult Function(_LoadMoreBlogs value)? loadMoreBlogs,
    TResult Function(_LoadMoreWallpapers value)? loadMoreWallpapers,
    TResult Function(_DislikedAudios value)? dislikedAudios,
    TResult Function(_DislikedBlogs value)? dislikedBlogs,
    TResult Function(_DislikedWallpapers value)? dislikedWallpapers,
    TResult Function(_RestoredAudios value)? restoredAudios,
    TResult Function(_RestoredBlogs value)? restoredBlogs,
    TResult Function(_RestoredWallpapers value)? restoredWallpapers,
    TResult Function(_UpdatedLikedItemsList value)? updatedLikedItemsList,
    required TResult orElse(),
  }) {
    if (restoredBlogs != null) {
      return restoredBlogs(this);
    }
    return orElse();
  }
}

abstract class _RestoredBlogs implements LikedItemsEvent {
  const factory _RestoredBlogs({required String id}) = _$_RestoredBlogs;

  String get id => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$RestoredBlogsCopyWith<_RestoredBlogs> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RestoredWallpapersCopyWith<$Res> {
  factory _$RestoredWallpapersCopyWith(
          _RestoredWallpapers value, $Res Function(_RestoredWallpapers) then) =
      __$RestoredWallpapersCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class __$RestoredWallpapersCopyWithImpl<$Res>
    extends _$LikedItemsEventCopyWithImpl<$Res>
    implements _$RestoredWallpapersCopyWith<$Res> {
  __$RestoredWallpapersCopyWithImpl(
      _RestoredWallpapers _value, $Res Function(_RestoredWallpapers) _then)
      : super(_value, (v) => _then(v as _RestoredWallpapers));

  @override
  _RestoredWallpapers get _value => super._value as _RestoredWallpapers;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_RestoredWallpapers(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_RestoredWallpapers implements _RestoredWallpapers {
  const _$_RestoredWallpapers({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'LikedItemsEvent.restoredWallpapers(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RestoredWallpapers &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$RestoredWallpapersCopyWith<_RestoredWallpapers> get copyWith =>
      __$RestoredWallpapersCopyWithImpl<_RestoredWallpapers>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String id) loadMoreAudios,
    required TResult Function(String id) loadMoreBlogs,
    required TResult Function(String id) loadMoreWallpapers,
    required TResult Function(String id) dislikedAudios,
    required TResult Function(String id) dislikedBlogs,
    required TResult Function(String id) dislikedWallpapers,
    required TResult Function(String id) restoredAudios,
    required TResult Function(String id) restoredBlogs,
    required TResult Function(String id) restoredWallpapers,
    required TResult Function(LikedItemsDataModel data) updatedLikedItemsList,
  }) {
    return restoredWallpapers(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String id)? loadMoreAudios,
    TResult Function(String id)? loadMoreBlogs,
    TResult Function(String id)? loadMoreWallpapers,
    TResult Function(String id)? dislikedAudios,
    TResult Function(String id)? dislikedBlogs,
    TResult Function(String id)? dislikedWallpapers,
    TResult Function(String id)? restoredAudios,
    TResult Function(String id)? restoredBlogs,
    TResult Function(String id)? restoredWallpapers,
    TResult Function(LikedItemsDataModel data)? updatedLikedItemsList,
    required TResult orElse(),
  }) {
    if (restoredWallpapers != null) {
      return restoredWallpapers(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadMoreAudios value) loadMoreAudios,
    required TResult Function(_LoadMoreBlogs value) loadMoreBlogs,
    required TResult Function(_LoadMoreWallpapers value) loadMoreWallpapers,
    required TResult Function(_DislikedAudios value) dislikedAudios,
    required TResult Function(_DislikedBlogs value) dislikedBlogs,
    required TResult Function(_DislikedWallpapers value) dislikedWallpapers,
    required TResult Function(_RestoredAudios value) restoredAudios,
    required TResult Function(_RestoredBlogs value) restoredBlogs,
    required TResult Function(_RestoredWallpapers value) restoredWallpapers,
    required TResult Function(_UpdatedLikedItemsList value)
        updatedLikedItemsList,
  }) {
    return restoredWallpapers(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadMoreAudios value)? loadMoreAudios,
    TResult Function(_LoadMoreBlogs value)? loadMoreBlogs,
    TResult Function(_LoadMoreWallpapers value)? loadMoreWallpapers,
    TResult Function(_DislikedAudios value)? dislikedAudios,
    TResult Function(_DislikedBlogs value)? dislikedBlogs,
    TResult Function(_DislikedWallpapers value)? dislikedWallpapers,
    TResult Function(_RestoredAudios value)? restoredAudios,
    TResult Function(_RestoredBlogs value)? restoredBlogs,
    TResult Function(_RestoredWallpapers value)? restoredWallpapers,
    TResult Function(_UpdatedLikedItemsList value)? updatedLikedItemsList,
    required TResult orElse(),
  }) {
    if (restoredWallpapers != null) {
      return restoredWallpapers(this);
    }
    return orElse();
  }
}

abstract class _RestoredWallpapers implements LikedItemsEvent {
  const factory _RestoredWallpapers({required String id}) =
      _$_RestoredWallpapers;

  String get id => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$RestoredWallpapersCopyWith<_RestoredWallpapers> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UpdatedLikedItemsListCopyWith<$Res> {
  factory _$UpdatedLikedItemsListCopyWith(_UpdatedLikedItemsList value,
          $Res Function(_UpdatedLikedItemsList) then) =
      __$UpdatedLikedItemsListCopyWithImpl<$Res>;
  $Res call({LikedItemsDataModel data});

  $LikedItemsDataModelCopyWith<$Res> get data;
}

/// @nodoc
class __$UpdatedLikedItemsListCopyWithImpl<$Res>
    extends _$LikedItemsEventCopyWithImpl<$Res>
    implements _$UpdatedLikedItemsListCopyWith<$Res> {
  __$UpdatedLikedItemsListCopyWithImpl(_UpdatedLikedItemsList _value,
      $Res Function(_UpdatedLikedItemsList) _then)
      : super(_value, (v) => _then(v as _UpdatedLikedItemsList));

  @override
  _UpdatedLikedItemsList get _value => super._value as _UpdatedLikedItemsList;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_UpdatedLikedItemsList(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as LikedItemsDataModel,
    ));
  }

  @override
  $LikedItemsDataModelCopyWith<$Res> get data {
    return $LikedItemsDataModelCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
class _$_UpdatedLikedItemsList implements _UpdatedLikedItemsList {
  const _$_UpdatedLikedItemsList({required this.data});

  @override
  final LikedItemsDataModel data;

  @override
  String toString() {
    return 'LikedItemsEvent.updatedLikedItemsList(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdatedLikedItemsList &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$UpdatedLikedItemsListCopyWith<_UpdatedLikedItemsList> get copyWith =>
      __$UpdatedLikedItemsListCopyWithImpl<_UpdatedLikedItemsList>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String id) loadMoreAudios,
    required TResult Function(String id) loadMoreBlogs,
    required TResult Function(String id) loadMoreWallpapers,
    required TResult Function(String id) dislikedAudios,
    required TResult Function(String id) dislikedBlogs,
    required TResult Function(String id) dislikedWallpapers,
    required TResult Function(String id) restoredAudios,
    required TResult Function(String id) restoredBlogs,
    required TResult Function(String id) restoredWallpapers,
    required TResult Function(LikedItemsDataModel data) updatedLikedItemsList,
  }) {
    return updatedLikedItemsList(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String id)? loadMoreAudios,
    TResult Function(String id)? loadMoreBlogs,
    TResult Function(String id)? loadMoreWallpapers,
    TResult Function(String id)? dislikedAudios,
    TResult Function(String id)? dislikedBlogs,
    TResult Function(String id)? dislikedWallpapers,
    TResult Function(String id)? restoredAudios,
    TResult Function(String id)? restoredBlogs,
    TResult Function(String id)? restoredWallpapers,
    TResult Function(LikedItemsDataModel data)? updatedLikedItemsList,
    required TResult orElse(),
  }) {
    if (updatedLikedItemsList != null) {
      return updatedLikedItemsList(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadMoreAudios value) loadMoreAudios,
    required TResult Function(_LoadMoreBlogs value) loadMoreBlogs,
    required TResult Function(_LoadMoreWallpapers value) loadMoreWallpapers,
    required TResult Function(_DislikedAudios value) dislikedAudios,
    required TResult Function(_DislikedBlogs value) dislikedBlogs,
    required TResult Function(_DislikedWallpapers value) dislikedWallpapers,
    required TResult Function(_RestoredAudios value) restoredAudios,
    required TResult Function(_RestoredBlogs value) restoredBlogs,
    required TResult Function(_RestoredWallpapers value) restoredWallpapers,
    required TResult Function(_UpdatedLikedItemsList value)
        updatedLikedItemsList,
  }) {
    return updatedLikedItemsList(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadMoreAudios value)? loadMoreAudios,
    TResult Function(_LoadMoreBlogs value)? loadMoreBlogs,
    TResult Function(_LoadMoreWallpapers value)? loadMoreWallpapers,
    TResult Function(_DislikedAudios value)? dislikedAudios,
    TResult Function(_DislikedBlogs value)? dislikedBlogs,
    TResult Function(_DislikedWallpapers value)? dislikedWallpapers,
    TResult Function(_RestoredAudios value)? restoredAudios,
    TResult Function(_RestoredBlogs value)? restoredBlogs,
    TResult Function(_RestoredWallpapers value)? restoredWallpapers,
    TResult Function(_UpdatedLikedItemsList value)? updatedLikedItemsList,
    required TResult orElse(),
  }) {
    if (updatedLikedItemsList != null) {
      return updatedLikedItemsList(this);
    }
    return orElse();
  }
}

abstract class _UpdatedLikedItemsList implements LikedItemsEvent {
  const factory _UpdatedLikedItemsList({required LikedItemsDataModel data}) =
      _$_UpdatedLikedItemsList;

  LikedItemsDataModel get data => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$UpdatedLikedItemsListCopyWith<_UpdatedLikedItemsList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$LikedItemsStateTearOff {
  const _$LikedItemsStateTearOff();

  _LikedItemsState call(
      {required Option<Either<Failure, LikedItemsDataModel>> likedItemsOption,
      required Option<CachedLikedItemsDataModel> cachedLikedItemsOption,
      required bool loadingMore,
      required bool completelyFetchedWallpapers,
      required bool completelyFetchedBlogs,
      required bool completelyFetchedAudios}) {
    return _LikedItemsState(
      likedItemsOption: likedItemsOption,
      cachedLikedItemsOption: cachedLikedItemsOption,
      loadingMore: loadingMore,
      completelyFetchedWallpapers: completelyFetchedWallpapers,
      completelyFetchedBlogs: completelyFetchedBlogs,
      completelyFetchedAudios: completelyFetchedAudios,
    );
  }
}

/// @nodoc
const $LikedItemsState = _$LikedItemsStateTearOff();

/// @nodoc
mixin _$LikedItemsState {
  Option<Either<Failure, LikedItemsDataModel>> get likedItemsOption =>
      throw _privateConstructorUsedError;
  Option<CachedLikedItemsDataModel> get cachedLikedItemsOption =>
      throw _privateConstructorUsedError;
  bool get loadingMore => throw _privateConstructorUsedError;
  bool get completelyFetchedWallpapers => throw _privateConstructorUsedError;
  bool get completelyFetchedBlogs => throw _privateConstructorUsedError;
  bool get completelyFetchedAudios => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LikedItemsStateCopyWith<LikedItemsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LikedItemsStateCopyWith<$Res> {
  factory $LikedItemsStateCopyWith(
          LikedItemsState value, $Res Function(LikedItemsState) then) =
      _$LikedItemsStateCopyWithImpl<$Res>;
  $Res call(
      {Option<Either<Failure, LikedItemsDataModel>> likedItemsOption,
      Option<CachedLikedItemsDataModel> cachedLikedItemsOption,
      bool loadingMore,
      bool completelyFetchedWallpapers,
      bool completelyFetchedBlogs,
      bool completelyFetchedAudios});
}

/// @nodoc
class _$LikedItemsStateCopyWithImpl<$Res>
    implements $LikedItemsStateCopyWith<$Res> {
  _$LikedItemsStateCopyWithImpl(this._value, this._then);

  final LikedItemsState _value;
  // ignore: unused_field
  final $Res Function(LikedItemsState) _then;

  @override
  $Res call({
    Object? likedItemsOption = freezed,
    Object? cachedLikedItemsOption = freezed,
    Object? loadingMore = freezed,
    Object? completelyFetchedWallpapers = freezed,
    Object? completelyFetchedBlogs = freezed,
    Object? completelyFetchedAudios = freezed,
  }) {
    return _then(_value.copyWith(
      likedItemsOption: likedItemsOption == freezed
          ? _value.likedItemsOption
          : likedItemsOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, LikedItemsDataModel>>,
      cachedLikedItemsOption: cachedLikedItemsOption == freezed
          ? _value.cachedLikedItemsOption
          : cachedLikedItemsOption // ignore: cast_nullable_to_non_nullable
              as Option<CachedLikedItemsDataModel>,
      loadingMore: loadingMore == freezed
          ? _value.loadingMore
          : loadingMore // ignore: cast_nullable_to_non_nullable
              as bool,
      completelyFetchedWallpapers: completelyFetchedWallpapers == freezed
          ? _value.completelyFetchedWallpapers
          : completelyFetchedWallpapers // ignore: cast_nullable_to_non_nullable
              as bool,
      completelyFetchedBlogs: completelyFetchedBlogs == freezed
          ? _value.completelyFetchedBlogs
          : completelyFetchedBlogs // ignore: cast_nullable_to_non_nullable
              as bool,
      completelyFetchedAudios: completelyFetchedAudios == freezed
          ? _value.completelyFetchedAudios
          : completelyFetchedAudios // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$LikedItemsStateCopyWith<$Res>
    implements $LikedItemsStateCopyWith<$Res> {
  factory _$LikedItemsStateCopyWith(
          _LikedItemsState value, $Res Function(_LikedItemsState) then) =
      __$LikedItemsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Option<Either<Failure, LikedItemsDataModel>> likedItemsOption,
      Option<CachedLikedItemsDataModel> cachedLikedItemsOption,
      bool loadingMore,
      bool completelyFetchedWallpapers,
      bool completelyFetchedBlogs,
      bool completelyFetchedAudios});
}

/// @nodoc
class __$LikedItemsStateCopyWithImpl<$Res>
    extends _$LikedItemsStateCopyWithImpl<$Res>
    implements _$LikedItemsStateCopyWith<$Res> {
  __$LikedItemsStateCopyWithImpl(
      _LikedItemsState _value, $Res Function(_LikedItemsState) _then)
      : super(_value, (v) => _then(v as _LikedItemsState));

  @override
  _LikedItemsState get _value => super._value as _LikedItemsState;

  @override
  $Res call({
    Object? likedItemsOption = freezed,
    Object? cachedLikedItemsOption = freezed,
    Object? loadingMore = freezed,
    Object? completelyFetchedWallpapers = freezed,
    Object? completelyFetchedBlogs = freezed,
    Object? completelyFetchedAudios = freezed,
  }) {
    return _then(_LikedItemsState(
      likedItemsOption: likedItemsOption == freezed
          ? _value.likedItemsOption
          : likedItemsOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, LikedItemsDataModel>>,
      cachedLikedItemsOption: cachedLikedItemsOption == freezed
          ? _value.cachedLikedItemsOption
          : cachedLikedItemsOption // ignore: cast_nullable_to_non_nullable
              as Option<CachedLikedItemsDataModel>,
      loadingMore: loadingMore == freezed
          ? _value.loadingMore
          : loadingMore // ignore: cast_nullable_to_non_nullable
              as bool,
      completelyFetchedWallpapers: completelyFetchedWallpapers == freezed
          ? _value.completelyFetchedWallpapers
          : completelyFetchedWallpapers // ignore: cast_nullable_to_non_nullable
              as bool,
      completelyFetchedBlogs: completelyFetchedBlogs == freezed
          ? _value.completelyFetchedBlogs
          : completelyFetchedBlogs // ignore: cast_nullable_to_non_nullable
              as bool,
      completelyFetchedAudios: completelyFetchedAudios == freezed
          ? _value.completelyFetchedAudios
          : completelyFetchedAudios // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
class _$_LikedItemsState implements _LikedItemsState {
  const _$_LikedItemsState(
      {required this.likedItemsOption,
      required this.cachedLikedItemsOption,
      required this.loadingMore,
      required this.completelyFetchedWallpapers,
      required this.completelyFetchedBlogs,
      required this.completelyFetchedAudios});

  @override
  final Option<Either<Failure, LikedItemsDataModel>> likedItemsOption;
  @override
  final Option<CachedLikedItemsDataModel> cachedLikedItemsOption;
  @override
  final bool loadingMore;
  @override
  final bool completelyFetchedWallpapers;
  @override
  final bool completelyFetchedBlogs;
  @override
  final bool completelyFetchedAudios;

  @override
  String toString() {
    return 'LikedItemsState(likedItemsOption: $likedItemsOption, cachedLikedItemsOption: $cachedLikedItemsOption, loadingMore: $loadingMore, completelyFetchedWallpapers: $completelyFetchedWallpapers, completelyFetchedBlogs: $completelyFetchedBlogs, completelyFetchedAudios: $completelyFetchedAudios)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LikedItemsState &&
            (identical(other.likedItemsOption, likedItemsOption) ||
                const DeepCollectionEquality()
                    .equals(other.likedItemsOption, likedItemsOption)) &&
            (identical(other.cachedLikedItemsOption, cachedLikedItemsOption) ||
                const DeepCollectionEquality().equals(
                    other.cachedLikedItemsOption, cachedLikedItemsOption)) &&
            (identical(other.loadingMore, loadingMore) ||
                const DeepCollectionEquality()
                    .equals(other.loadingMore, loadingMore)) &&
            (identical(other.completelyFetchedWallpapers,
                    completelyFetchedWallpapers) ||
                const DeepCollectionEquality().equals(
                    other.completelyFetchedWallpapers,
                    completelyFetchedWallpapers)) &&
            (identical(other.completelyFetchedBlogs, completelyFetchedBlogs) ||
                const DeepCollectionEquality().equals(
                    other.completelyFetchedBlogs, completelyFetchedBlogs)) &&
            (identical(
                    other.completelyFetchedAudios, completelyFetchedAudios) ||
                const DeepCollectionEquality().equals(
                    other.completelyFetchedAudios, completelyFetchedAudios)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(likedItemsOption) ^
      const DeepCollectionEquality().hash(cachedLikedItemsOption) ^
      const DeepCollectionEquality().hash(loadingMore) ^
      const DeepCollectionEquality().hash(completelyFetchedWallpapers) ^
      const DeepCollectionEquality().hash(completelyFetchedBlogs) ^
      const DeepCollectionEquality().hash(completelyFetchedAudios);

  @JsonKey(ignore: true)
  @override
  _$LikedItemsStateCopyWith<_LikedItemsState> get copyWith =>
      __$LikedItemsStateCopyWithImpl<_LikedItemsState>(this, _$identity);
}

abstract class _LikedItemsState implements LikedItemsState {
  const factory _LikedItemsState(
      {required Option<Either<Failure, LikedItemsDataModel>> likedItemsOption,
      required Option<CachedLikedItemsDataModel> cachedLikedItemsOption,
      required bool loadingMore,
      required bool completelyFetchedWallpapers,
      required bool completelyFetchedBlogs,
      required bool completelyFetchedAudios}) = _$_LikedItemsState;

  @override
  Option<Either<Failure, LikedItemsDataModel>> get likedItemsOption =>
      throw _privateConstructorUsedError;
  @override
  Option<CachedLikedItemsDataModel> get cachedLikedItemsOption =>
      throw _privateConstructorUsedError;
  @override
  bool get loadingMore => throw _privateConstructorUsedError;
  @override
  bool get completelyFetchedWallpapers => throw _privateConstructorUsedError;
  @override
  bool get completelyFetchedBlogs => throw _privateConstructorUsedError;
  @override
  bool get completelyFetchedAudios => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LikedItemsStateCopyWith<_LikedItemsState> get copyWith =>
      throw _privateConstructorUsedError;
}
