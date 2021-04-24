// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'blog_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$BlogEventTearOff {
  const _$BlogEventTearOff();

  _Started started() {
    return const _Started();
  }

  _SelectedCategory selectedCategory({required String id}) {
    return _SelectedCategory(
      id: id,
    );
  }

  _SelectedCategoryLoadMore selectedCategoryLoadMore({required String id}) {
    return _SelectedCategoryLoadMore(
      id: id,
    );
  }

  _LikedBlog likedBlog({required String id}) {
    return _LikedBlog(
      id: id,
    );
  }

  _ReadBlog readBlog(
      {required BlogReaderTabType blogReaderTabType, required String id}) {
    return _ReadBlog(
      blogReaderTabType: blogReaderTabType,
      id: id,
    );
  }

  _DislikedBlog dislikedBlog({required String id}) {
    return _DislikedBlog(
      id: id,
    );
  }

  _UpdateLikedBlogs updateLikedBlogs({required List<String> blogIds}) {
    return _UpdateLikedBlogs(
      blogIds: blogIds,
    );
  }
}

/// @nodoc
const $BlogEvent = _$BlogEventTearOff();

/// @nodoc
mixin _$BlogEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String id) selectedCategory,
    required TResult Function(String id) selectedCategoryLoadMore,
    required TResult Function(String id) likedBlog,
    required TResult Function(BlogReaderTabType blogReaderTabType, String id)
        readBlog,
    required TResult Function(String id) dislikedBlog,
    required TResult Function(List<String> blogIds) updateLikedBlogs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String id)? selectedCategory,
    TResult Function(String id)? selectedCategoryLoadMore,
    TResult Function(String id)? likedBlog,
    TResult Function(BlogReaderTabType blogReaderTabType, String id)? readBlog,
    TResult Function(String id)? dislikedBlog,
    TResult Function(List<String> blogIds)? updateLikedBlogs,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SelectedCategory value) selectedCategory,
    required TResult Function(_SelectedCategoryLoadMore value)
        selectedCategoryLoadMore,
    required TResult Function(_LikedBlog value) likedBlog,
    required TResult Function(_ReadBlog value) readBlog,
    required TResult Function(_DislikedBlog value) dislikedBlog,
    required TResult Function(_UpdateLikedBlogs value) updateLikedBlogs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SelectedCategory value)? selectedCategory,
    TResult Function(_SelectedCategoryLoadMore value)? selectedCategoryLoadMore,
    TResult Function(_LikedBlog value)? likedBlog,
    TResult Function(_ReadBlog value)? readBlog,
    TResult Function(_DislikedBlog value)? dislikedBlog,
    TResult Function(_UpdateLikedBlogs value)? updateLikedBlogs,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlogEventCopyWith<$Res> {
  factory $BlogEventCopyWith(BlogEvent value, $Res Function(BlogEvent) then) =
      _$BlogEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$BlogEventCopyWithImpl<$Res> implements $BlogEventCopyWith<$Res> {
  _$BlogEventCopyWithImpl(this._value, this._then);

  final BlogEvent _value;
  // ignore: unused_field
  final $Res Function(BlogEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$BlogEventCopyWithImpl<$Res>
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
    return 'BlogEvent.started()';
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
    required TResult Function(String id) selectedCategoryLoadMore,
    required TResult Function(String id) likedBlog,
    required TResult Function(BlogReaderTabType blogReaderTabType, String id)
        readBlog,
    required TResult Function(String id) dislikedBlog,
    required TResult Function(List<String> blogIds) updateLikedBlogs,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String id)? selectedCategory,
    TResult Function(String id)? selectedCategoryLoadMore,
    TResult Function(String id)? likedBlog,
    TResult Function(BlogReaderTabType blogReaderTabType, String id)? readBlog,
    TResult Function(String id)? dislikedBlog,
    TResult Function(List<String> blogIds)? updateLikedBlogs,
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
    required TResult Function(_SelectedCategoryLoadMore value)
        selectedCategoryLoadMore,
    required TResult Function(_LikedBlog value) likedBlog,
    required TResult Function(_ReadBlog value) readBlog,
    required TResult Function(_DislikedBlog value) dislikedBlog,
    required TResult Function(_UpdateLikedBlogs value) updateLikedBlogs,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SelectedCategory value)? selectedCategory,
    TResult Function(_SelectedCategoryLoadMore value)? selectedCategoryLoadMore,
    TResult Function(_LikedBlog value)? likedBlog,
    TResult Function(_ReadBlog value)? readBlog,
    TResult Function(_DislikedBlog value)? dislikedBlog,
    TResult Function(_UpdateLikedBlogs value)? updateLikedBlogs,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements BlogEvent {
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
    extends _$BlogEventCopyWithImpl<$Res>
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
    return 'BlogEvent.selectedCategory(id: $id)';
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
    required TResult Function(String id) selectedCategoryLoadMore,
    required TResult Function(String id) likedBlog,
    required TResult Function(BlogReaderTabType blogReaderTabType, String id)
        readBlog,
    required TResult Function(String id) dislikedBlog,
    required TResult Function(List<String> blogIds) updateLikedBlogs,
  }) {
    return selectedCategory(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String id)? selectedCategory,
    TResult Function(String id)? selectedCategoryLoadMore,
    TResult Function(String id)? likedBlog,
    TResult Function(BlogReaderTabType blogReaderTabType, String id)? readBlog,
    TResult Function(String id)? dislikedBlog,
    TResult Function(List<String> blogIds)? updateLikedBlogs,
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
    required TResult Function(_SelectedCategoryLoadMore value)
        selectedCategoryLoadMore,
    required TResult Function(_LikedBlog value) likedBlog,
    required TResult Function(_ReadBlog value) readBlog,
    required TResult Function(_DislikedBlog value) dislikedBlog,
    required TResult Function(_UpdateLikedBlogs value) updateLikedBlogs,
  }) {
    return selectedCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SelectedCategory value)? selectedCategory,
    TResult Function(_SelectedCategoryLoadMore value)? selectedCategoryLoadMore,
    TResult Function(_LikedBlog value)? likedBlog,
    TResult Function(_ReadBlog value)? readBlog,
    TResult Function(_DislikedBlog value)? dislikedBlog,
    TResult Function(_UpdateLikedBlogs value)? updateLikedBlogs,
    required TResult orElse(),
  }) {
    if (selectedCategory != null) {
      return selectedCategory(this);
    }
    return orElse();
  }
}

abstract class _SelectedCategory implements BlogEvent {
  const factory _SelectedCategory({required String id}) = _$_SelectedCategory;

  String get id => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SelectedCategoryCopyWith<_SelectedCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SelectedCategoryLoadMoreCopyWith<$Res> {
  factory _$SelectedCategoryLoadMoreCopyWith(_SelectedCategoryLoadMore value,
          $Res Function(_SelectedCategoryLoadMore) then) =
      __$SelectedCategoryLoadMoreCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class __$SelectedCategoryLoadMoreCopyWithImpl<$Res>
    extends _$BlogEventCopyWithImpl<$Res>
    implements _$SelectedCategoryLoadMoreCopyWith<$Res> {
  __$SelectedCategoryLoadMoreCopyWithImpl(_SelectedCategoryLoadMore _value,
      $Res Function(_SelectedCategoryLoadMore) _then)
      : super(_value, (v) => _then(v as _SelectedCategoryLoadMore));

  @override
  _SelectedCategoryLoadMore get _value =>
      super._value as _SelectedCategoryLoadMore;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_SelectedCategoryLoadMore(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_SelectedCategoryLoadMore implements _SelectedCategoryLoadMore {
  const _$_SelectedCategoryLoadMore({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'BlogEvent.selectedCategoryLoadMore(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SelectedCategoryLoadMore &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$SelectedCategoryLoadMoreCopyWith<_SelectedCategoryLoadMore> get copyWith =>
      __$SelectedCategoryLoadMoreCopyWithImpl<_SelectedCategoryLoadMore>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String id) selectedCategory,
    required TResult Function(String id) selectedCategoryLoadMore,
    required TResult Function(String id) likedBlog,
    required TResult Function(BlogReaderTabType blogReaderTabType, String id)
        readBlog,
    required TResult Function(String id) dislikedBlog,
    required TResult Function(List<String> blogIds) updateLikedBlogs,
  }) {
    return selectedCategoryLoadMore(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String id)? selectedCategory,
    TResult Function(String id)? selectedCategoryLoadMore,
    TResult Function(String id)? likedBlog,
    TResult Function(BlogReaderTabType blogReaderTabType, String id)? readBlog,
    TResult Function(String id)? dislikedBlog,
    TResult Function(List<String> blogIds)? updateLikedBlogs,
    required TResult orElse(),
  }) {
    if (selectedCategoryLoadMore != null) {
      return selectedCategoryLoadMore(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SelectedCategory value) selectedCategory,
    required TResult Function(_SelectedCategoryLoadMore value)
        selectedCategoryLoadMore,
    required TResult Function(_LikedBlog value) likedBlog,
    required TResult Function(_ReadBlog value) readBlog,
    required TResult Function(_DislikedBlog value) dislikedBlog,
    required TResult Function(_UpdateLikedBlogs value) updateLikedBlogs,
  }) {
    return selectedCategoryLoadMore(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SelectedCategory value)? selectedCategory,
    TResult Function(_SelectedCategoryLoadMore value)? selectedCategoryLoadMore,
    TResult Function(_LikedBlog value)? likedBlog,
    TResult Function(_ReadBlog value)? readBlog,
    TResult Function(_DislikedBlog value)? dislikedBlog,
    TResult Function(_UpdateLikedBlogs value)? updateLikedBlogs,
    required TResult orElse(),
  }) {
    if (selectedCategoryLoadMore != null) {
      return selectedCategoryLoadMore(this);
    }
    return orElse();
  }
}

abstract class _SelectedCategoryLoadMore implements BlogEvent {
  const factory _SelectedCategoryLoadMore({required String id}) =
      _$_SelectedCategoryLoadMore;

  String get id => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SelectedCategoryLoadMoreCopyWith<_SelectedCategoryLoadMore> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LikedBlogCopyWith<$Res> {
  factory _$LikedBlogCopyWith(
          _LikedBlog value, $Res Function(_LikedBlog) then) =
      __$LikedBlogCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class __$LikedBlogCopyWithImpl<$Res> extends _$BlogEventCopyWithImpl<$Res>
    implements _$LikedBlogCopyWith<$Res> {
  __$LikedBlogCopyWithImpl(_LikedBlog _value, $Res Function(_LikedBlog) _then)
      : super(_value, (v) => _then(v as _LikedBlog));

  @override
  _LikedBlog get _value => super._value as _LikedBlog;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_LikedBlog(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_LikedBlog implements _LikedBlog {
  const _$_LikedBlog({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'BlogEvent.likedBlog(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LikedBlog &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$LikedBlogCopyWith<_LikedBlog> get copyWith =>
      __$LikedBlogCopyWithImpl<_LikedBlog>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String id) selectedCategory,
    required TResult Function(String id) selectedCategoryLoadMore,
    required TResult Function(String id) likedBlog,
    required TResult Function(BlogReaderTabType blogReaderTabType, String id)
        readBlog,
    required TResult Function(String id) dislikedBlog,
    required TResult Function(List<String> blogIds) updateLikedBlogs,
  }) {
    return likedBlog(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String id)? selectedCategory,
    TResult Function(String id)? selectedCategoryLoadMore,
    TResult Function(String id)? likedBlog,
    TResult Function(BlogReaderTabType blogReaderTabType, String id)? readBlog,
    TResult Function(String id)? dislikedBlog,
    TResult Function(List<String> blogIds)? updateLikedBlogs,
    required TResult orElse(),
  }) {
    if (likedBlog != null) {
      return likedBlog(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SelectedCategory value) selectedCategory,
    required TResult Function(_SelectedCategoryLoadMore value)
        selectedCategoryLoadMore,
    required TResult Function(_LikedBlog value) likedBlog,
    required TResult Function(_ReadBlog value) readBlog,
    required TResult Function(_DislikedBlog value) dislikedBlog,
    required TResult Function(_UpdateLikedBlogs value) updateLikedBlogs,
  }) {
    return likedBlog(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SelectedCategory value)? selectedCategory,
    TResult Function(_SelectedCategoryLoadMore value)? selectedCategoryLoadMore,
    TResult Function(_LikedBlog value)? likedBlog,
    TResult Function(_ReadBlog value)? readBlog,
    TResult Function(_DislikedBlog value)? dislikedBlog,
    TResult Function(_UpdateLikedBlogs value)? updateLikedBlogs,
    required TResult orElse(),
  }) {
    if (likedBlog != null) {
      return likedBlog(this);
    }
    return orElse();
  }
}

abstract class _LikedBlog implements BlogEvent {
  const factory _LikedBlog({required String id}) = _$_LikedBlog;

  String get id => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LikedBlogCopyWith<_LikedBlog> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ReadBlogCopyWith<$Res> {
  factory _$ReadBlogCopyWith(_ReadBlog value, $Res Function(_ReadBlog) then) =
      __$ReadBlogCopyWithImpl<$Res>;
  $Res call({BlogReaderTabType blogReaderTabType, String id});
}

/// @nodoc
class __$ReadBlogCopyWithImpl<$Res> extends _$BlogEventCopyWithImpl<$Res>
    implements _$ReadBlogCopyWith<$Res> {
  __$ReadBlogCopyWithImpl(_ReadBlog _value, $Res Function(_ReadBlog) _then)
      : super(_value, (v) => _then(v as _ReadBlog));

  @override
  _ReadBlog get _value => super._value as _ReadBlog;

  @override
  $Res call({
    Object? blogReaderTabType = freezed,
    Object? id = freezed,
  }) {
    return _then(_ReadBlog(
      blogReaderTabType: blogReaderTabType == freezed
          ? _value.blogReaderTabType
          : blogReaderTabType // ignore: cast_nullable_to_non_nullable
              as BlogReaderTabType,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_ReadBlog implements _ReadBlog {
  const _$_ReadBlog({required this.blogReaderTabType, required this.id});

  @override
  final BlogReaderTabType blogReaderTabType;
  @override
  final String id;

  @override
  String toString() {
    return 'BlogEvent.readBlog(blogReaderTabType: $blogReaderTabType, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ReadBlog &&
            (identical(other.blogReaderTabType, blogReaderTabType) ||
                const DeepCollectionEquality()
                    .equals(other.blogReaderTabType, blogReaderTabType)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(blogReaderTabType) ^
      const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$ReadBlogCopyWith<_ReadBlog> get copyWith =>
      __$ReadBlogCopyWithImpl<_ReadBlog>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String id) selectedCategory,
    required TResult Function(String id) selectedCategoryLoadMore,
    required TResult Function(String id) likedBlog,
    required TResult Function(BlogReaderTabType blogReaderTabType, String id)
        readBlog,
    required TResult Function(String id) dislikedBlog,
    required TResult Function(List<String> blogIds) updateLikedBlogs,
  }) {
    return readBlog(blogReaderTabType, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String id)? selectedCategory,
    TResult Function(String id)? selectedCategoryLoadMore,
    TResult Function(String id)? likedBlog,
    TResult Function(BlogReaderTabType blogReaderTabType, String id)? readBlog,
    TResult Function(String id)? dislikedBlog,
    TResult Function(List<String> blogIds)? updateLikedBlogs,
    required TResult orElse(),
  }) {
    if (readBlog != null) {
      return readBlog(blogReaderTabType, id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SelectedCategory value) selectedCategory,
    required TResult Function(_SelectedCategoryLoadMore value)
        selectedCategoryLoadMore,
    required TResult Function(_LikedBlog value) likedBlog,
    required TResult Function(_ReadBlog value) readBlog,
    required TResult Function(_DislikedBlog value) dislikedBlog,
    required TResult Function(_UpdateLikedBlogs value) updateLikedBlogs,
  }) {
    return readBlog(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SelectedCategory value)? selectedCategory,
    TResult Function(_SelectedCategoryLoadMore value)? selectedCategoryLoadMore,
    TResult Function(_LikedBlog value)? likedBlog,
    TResult Function(_ReadBlog value)? readBlog,
    TResult Function(_DislikedBlog value)? dislikedBlog,
    TResult Function(_UpdateLikedBlogs value)? updateLikedBlogs,
    required TResult orElse(),
  }) {
    if (readBlog != null) {
      return readBlog(this);
    }
    return orElse();
  }
}

abstract class _ReadBlog implements BlogEvent {
  const factory _ReadBlog(
      {required BlogReaderTabType blogReaderTabType,
      required String id}) = _$_ReadBlog;

  BlogReaderTabType get blogReaderTabType => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ReadBlogCopyWith<_ReadBlog> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DislikedBlogCopyWith<$Res> {
  factory _$DislikedBlogCopyWith(
          _DislikedBlog value, $Res Function(_DislikedBlog) then) =
      __$DislikedBlogCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class __$DislikedBlogCopyWithImpl<$Res> extends _$BlogEventCopyWithImpl<$Res>
    implements _$DislikedBlogCopyWith<$Res> {
  __$DislikedBlogCopyWithImpl(
      _DislikedBlog _value, $Res Function(_DislikedBlog) _then)
      : super(_value, (v) => _then(v as _DislikedBlog));

  @override
  _DislikedBlog get _value => super._value as _DislikedBlog;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_DislikedBlog(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_DislikedBlog implements _DislikedBlog {
  const _$_DislikedBlog({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'BlogEvent.dislikedBlog(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DislikedBlog &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$DislikedBlogCopyWith<_DislikedBlog> get copyWith =>
      __$DislikedBlogCopyWithImpl<_DislikedBlog>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String id) selectedCategory,
    required TResult Function(String id) selectedCategoryLoadMore,
    required TResult Function(String id) likedBlog,
    required TResult Function(BlogReaderTabType blogReaderTabType, String id)
        readBlog,
    required TResult Function(String id) dislikedBlog,
    required TResult Function(List<String> blogIds) updateLikedBlogs,
  }) {
    return dislikedBlog(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String id)? selectedCategory,
    TResult Function(String id)? selectedCategoryLoadMore,
    TResult Function(String id)? likedBlog,
    TResult Function(BlogReaderTabType blogReaderTabType, String id)? readBlog,
    TResult Function(String id)? dislikedBlog,
    TResult Function(List<String> blogIds)? updateLikedBlogs,
    required TResult orElse(),
  }) {
    if (dislikedBlog != null) {
      return dislikedBlog(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SelectedCategory value) selectedCategory,
    required TResult Function(_SelectedCategoryLoadMore value)
        selectedCategoryLoadMore,
    required TResult Function(_LikedBlog value) likedBlog,
    required TResult Function(_ReadBlog value) readBlog,
    required TResult Function(_DislikedBlog value) dislikedBlog,
    required TResult Function(_UpdateLikedBlogs value) updateLikedBlogs,
  }) {
    return dislikedBlog(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SelectedCategory value)? selectedCategory,
    TResult Function(_SelectedCategoryLoadMore value)? selectedCategoryLoadMore,
    TResult Function(_LikedBlog value)? likedBlog,
    TResult Function(_ReadBlog value)? readBlog,
    TResult Function(_DislikedBlog value)? dislikedBlog,
    TResult Function(_UpdateLikedBlogs value)? updateLikedBlogs,
    required TResult orElse(),
  }) {
    if (dislikedBlog != null) {
      return dislikedBlog(this);
    }
    return orElse();
  }
}

abstract class _DislikedBlog implements BlogEvent {
  const factory _DislikedBlog({required String id}) = _$_DislikedBlog;

  String get id => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DislikedBlogCopyWith<_DislikedBlog> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UpdateLikedBlogsCopyWith<$Res> {
  factory _$UpdateLikedBlogsCopyWith(
          _UpdateLikedBlogs value, $Res Function(_UpdateLikedBlogs) then) =
      __$UpdateLikedBlogsCopyWithImpl<$Res>;
  $Res call({List<String> blogIds});
}

/// @nodoc
class __$UpdateLikedBlogsCopyWithImpl<$Res>
    extends _$BlogEventCopyWithImpl<$Res>
    implements _$UpdateLikedBlogsCopyWith<$Res> {
  __$UpdateLikedBlogsCopyWithImpl(
      _UpdateLikedBlogs _value, $Res Function(_UpdateLikedBlogs) _then)
      : super(_value, (v) => _then(v as _UpdateLikedBlogs));

  @override
  _UpdateLikedBlogs get _value => super._value as _UpdateLikedBlogs;

  @override
  $Res call({
    Object? blogIds = freezed,
  }) {
    return _then(_UpdateLikedBlogs(
      blogIds: blogIds == freezed
          ? _value.blogIds
          : blogIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
class _$_UpdateLikedBlogs implements _UpdateLikedBlogs {
  const _$_UpdateLikedBlogs({required this.blogIds});

  @override
  final List<String> blogIds;

  @override
  String toString() {
    return 'BlogEvent.updateLikedBlogs(blogIds: $blogIds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateLikedBlogs &&
            (identical(other.blogIds, blogIds) ||
                const DeepCollectionEquality().equals(other.blogIds, blogIds)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(blogIds);

  @JsonKey(ignore: true)
  @override
  _$UpdateLikedBlogsCopyWith<_UpdateLikedBlogs> get copyWith =>
      __$UpdateLikedBlogsCopyWithImpl<_UpdateLikedBlogs>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String id) selectedCategory,
    required TResult Function(String id) selectedCategoryLoadMore,
    required TResult Function(String id) likedBlog,
    required TResult Function(BlogReaderTabType blogReaderTabType, String id)
        readBlog,
    required TResult Function(String id) dislikedBlog,
    required TResult Function(List<String> blogIds) updateLikedBlogs,
  }) {
    return updateLikedBlogs(blogIds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String id)? selectedCategory,
    TResult Function(String id)? selectedCategoryLoadMore,
    TResult Function(String id)? likedBlog,
    TResult Function(BlogReaderTabType blogReaderTabType, String id)? readBlog,
    TResult Function(String id)? dislikedBlog,
    TResult Function(List<String> blogIds)? updateLikedBlogs,
    required TResult orElse(),
  }) {
    if (updateLikedBlogs != null) {
      return updateLikedBlogs(blogIds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SelectedCategory value) selectedCategory,
    required TResult Function(_SelectedCategoryLoadMore value)
        selectedCategoryLoadMore,
    required TResult Function(_LikedBlog value) likedBlog,
    required TResult Function(_ReadBlog value) readBlog,
    required TResult Function(_DislikedBlog value) dislikedBlog,
    required TResult Function(_UpdateLikedBlogs value) updateLikedBlogs,
  }) {
    return updateLikedBlogs(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SelectedCategory value)? selectedCategory,
    TResult Function(_SelectedCategoryLoadMore value)? selectedCategoryLoadMore,
    TResult Function(_LikedBlog value)? likedBlog,
    TResult Function(_ReadBlog value)? readBlog,
    TResult Function(_DislikedBlog value)? dislikedBlog,
    TResult Function(_UpdateLikedBlogs value)? updateLikedBlogs,
    required TResult orElse(),
  }) {
    if (updateLikedBlogs != null) {
      return updateLikedBlogs(this);
    }
    return orElse();
  }
}

abstract class _UpdateLikedBlogs implements BlogEvent {
  const factory _UpdateLikedBlogs({required List<String> blogIds}) =
      _$_UpdateLikedBlogs;

  List<String> get blogIds => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$UpdateLikedBlogsCopyWith<_UpdateLikedBlogs> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$BlogStateTearOff {
  const _$BlogStateTearOff();

  _BlogState call(
      {required Option<Either<Failure, List<BlogCategory>>>
          blogCategoriesOption,
      required Option<BlogCategory> selectedCategory,
      required bool categoryLoading,
      required bool readerLoading,
      required bool loadingMore,
      required Option<Failure> categoryError,
      required Option<Either<Failure, String>> readerOption,
      required List<String> likedBlogs}) {
    return _BlogState(
      blogCategoriesOption: blogCategoriesOption,
      selectedCategory: selectedCategory,
      categoryLoading: categoryLoading,
      readerLoading: readerLoading,
      loadingMore: loadingMore,
      categoryError: categoryError,
      readerOption: readerOption,
      likedBlogs: likedBlogs,
    );
  }
}

/// @nodoc
const $BlogState = _$BlogStateTearOff();

/// @nodoc
mixin _$BlogState {
  Option<Either<Failure, List<BlogCategory>>> get blogCategoriesOption =>
      throw _privateConstructorUsedError;
  Option<BlogCategory> get selectedCategory =>
      throw _privateConstructorUsedError;
  bool get categoryLoading => throw _privateConstructorUsedError;
  bool get readerLoading => throw _privateConstructorUsedError;
  bool get loadingMore => throw _privateConstructorUsedError;
  Option<Failure> get categoryError => throw _privateConstructorUsedError;
  Option<Either<Failure, String>> get readerOption =>
      throw _privateConstructorUsedError;
  List<String> get likedBlogs => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BlogStateCopyWith<BlogState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlogStateCopyWith<$Res> {
  factory $BlogStateCopyWith(BlogState value, $Res Function(BlogState) then) =
      _$BlogStateCopyWithImpl<$Res>;
  $Res call(
      {Option<Either<Failure, List<BlogCategory>>> blogCategoriesOption,
      Option<BlogCategory> selectedCategory,
      bool categoryLoading,
      bool readerLoading,
      bool loadingMore,
      Option<Failure> categoryError,
      Option<Either<Failure, String>> readerOption,
      List<String> likedBlogs});
}

/// @nodoc
class _$BlogStateCopyWithImpl<$Res> implements $BlogStateCopyWith<$Res> {
  _$BlogStateCopyWithImpl(this._value, this._then);

  final BlogState _value;
  // ignore: unused_field
  final $Res Function(BlogState) _then;

  @override
  $Res call({
    Object? blogCategoriesOption = freezed,
    Object? selectedCategory = freezed,
    Object? categoryLoading = freezed,
    Object? readerLoading = freezed,
    Object? loadingMore = freezed,
    Object? categoryError = freezed,
    Object? readerOption = freezed,
    Object? likedBlogs = freezed,
  }) {
    return _then(_value.copyWith(
      blogCategoriesOption: blogCategoriesOption == freezed
          ? _value.blogCategoriesOption
          : blogCategoriesOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, List<BlogCategory>>>,
      selectedCategory: selectedCategory == freezed
          ? _value.selectedCategory
          : selectedCategory // ignore: cast_nullable_to_non_nullable
              as Option<BlogCategory>,
      categoryLoading: categoryLoading == freezed
          ? _value.categoryLoading
          : categoryLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      readerLoading: readerLoading == freezed
          ? _value.readerLoading
          : readerLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      loadingMore: loadingMore == freezed
          ? _value.loadingMore
          : loadingMore // ignore: cast_nullable_to_non_nullable
              as bool,
      categoryError: categoryError == freezed
          ? _value.categoryError
          : categoryError // ignore: cast_nullable_to_non_nullable
              as Option<Failure>,
      readerOption: readerOption == freezed
          ? _value.readerOption
          : readerOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, String>>,
      likedBlogs: likedBlogs == freezed
          ? _value.likedBlogs
          : likedBlogs // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$BlogStateCopyWith<$Res> implements $BlogStateCopyWith<$Res> {
  factory _$BlogStateCopyWith(
          _BlogState value, $Res Function(_BlogState) then) =
      __$BlogStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Option<Either<Failure, List<BlogCategory>>> blogCategoriesOption,
      Option<BlogCategory> selectedCategory,
      bool categoryLoading,
      bool readerLoading,
      bool loadingMore,
      Option<Failure> categoryError,
      Option<Either<Failure, String>> readerOption,
      List<String> likedBlogs});
}

/// @nodoc
class __$BlogStateCopyWithImpl<$Res> extends _$BlogStateCopyWithImpl<$Res>
    implements _$BlogStateCopyWith<$Res> {
  __$BlogStateCopyWithImpl(_BlogState _value, $Res Function(_BlogState) _then)
      : super(_value, (v) => _then(v as _BlogState));

  @override
  _BlogState get _value => super._value as _BlogState;

  @override
  $Res call({
    Object? blogCategoriesOption = freezed,
    Object? selectedCategory = freezed,
    Object? categoryLoading = freezed,
    Object? readerLoading = freezed,
    Object? loadingMore = freezed,
    Object? categoryError = freezed,
    Object? readerOption = freezed,
    Object? likedBlogs = freezed,
  }) {
    return _then(_BlogState(
      blogCategoriesOption: blogCategoriesOption == freezed
          ? _value.blogCategoriesOption
          : blogCategoriesOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, List<BlogCategory>>>,
      selectedCategory: selectedCategory == freezed
          ? _value.selectedCategory
          : selectedCategory // ignore: cast_nullable_to_non_nullable
              as Option<BlogCategory>,
      categoryLoading: categoryLoading == freezed
          ? _value.categoryLoading
          : categoryLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      readerLoading: readerLoading == freezed
          ? _value.readerLoading
          : readerLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      loadingMore: loadingMore == freezed
          ? _value.loadingMore
          : loadingMore // ignore: cast_nullable_to_non_nullable
              as bool,
      categoryError: categoryError == freezed
          ? _value.categoryError
          : categoryError // ignore: cast_nullable_to_non_nullable
              as Option<Failure>,
      readerOption: readerOption == freezed
          ? _value.readerOption
          : readerOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, String>>,
      likedBlogs: likedBlogs == freezed
          ? _value.likedBlogs
          : likedBlogs // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
class _$_BlogState implements _BlogState {
  const _$_BlogState(
      {required this.blogCategoriesOption,
      required this.selectedCategory,
      required this.categoryLoading,
      required this.readerLoading,
      required this.loadingMore,
      required this.categoryError,
      required this.readerOption,
      required this.likedBlogs});

  @override
  final Option<Either<Failure, List<BlogCategory>>> blogCategoriesOption;
  @override
  final Option<BlogCategory> selectedCategory;
  @override
  final bool categoryLoading;
  @override
  final bool readerLoading;
  @override
  final bool loadingMore;
  @override
  final Option<Failure> categoryError;
  @override
  final Option<Either<Failure, String>> readerOption;
  @override
  final List<String> likedBlogs;

  @override
  String toString() {
    return 'BlogState(blogCategoriesOption: $blogCategoriesOption, selectedCategory: $selectedCategory, categoryLoading: $categoryLoading, readerLoading: $readerLoading, loadingMore: $loadingMore, categoryError: $categoryError, readerOption: $readerOption, likedBlogs: $likedBlogs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BlogState &&
            (identical(other.blogCategoriesOption, blogCategoriesOption) ||
                const DeepCollectionEquality().equals(
                    other.blogCategoriesOption, blogCategoriesOption)) &&
            (identical(other.selectedCategory, selectedCategory) ||
                const DeepCollectionEquality()
                    .equals(other.selectedCategory, selectedCategory)) &&
            (identical(other.categoryLoading, categoryLoading) ||
                const DeepCollectionEquality()
                    .equals(other.categoryLoading, categoryLoading)) &&
            (identical(other.readerLoading, readerLoading) ||
                const DeepCollectionEquality()
                    .equals(other.readerLoading, readerLoading)) &&
            (identical(other.loadingMore, loadingMore) ||
                const DeepCollectionEquality()
                    .equals(other.loadingMore, loadingMore)) &&
            (identical(other.categoryError, categoryError) ||
                const DeepCollectionEquality()
                    .equals(other.categoryError, categoryError)) &&
            (identical(other.readerOption, readerOption) ||
                const DeepCollectionEquality()
                    .equals(other.readerOption, readerOption)) &&
            (identical(other.likedBlogs, likedBlogs) ||
                const DeepCollectionEquality()
                    .equals(other.likedBlogs, likedBlogs)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(blogCategoriesOption) ^
      const DeepCollectionEquality().hash(selectedCategory) ^
      const DeepCollectionEquality().hash(categoryLoading) ^
      const DeepCollectionEquality().hash(readerLoading) ^
      const DeepCollectionEquality().hash(loadingMore) ^
      const DeepCollectionEquality().hash(categoryError) ^
      const DeepCollectionEquality().hash(readerOption) ^
      const DeepCollectionEquality().hash(likedBlogs);

  @JsonKey(ignore: true)
  @override
  _$BlogStateCopyWith<_BlogState> get copyWith =>
      __$BlogStateCopyWithImpl<_BlogState>(this, _$identity);
}

abstract class _BlogState implements BlogState {
  const factory _BlogState(
      {required Option<Either<Failure, List<BlogCategory>>>
          blogCategoriesOption,
      required Option<BlogCategory> selectedCategory,
      required bool categoryLoading,
      required bool readerLoading,
      required bool loadingMore,
      required Option<Failure> categoryError,
      required Option<Either<Failure, String>> readerOption,
      required List<String> likedBlogs}) = _$_BlogState;

  @override
  Option<Either<Failure, List<BlogCategory>>> get blogCategoriesOption =>
      throw _privateConstructorUsedError;
  @override
  Option<BlogCategory> get selectedCategory =>
      throw _privateConstructorUsedError;
  @override
  bool get categoryLoading => throw _privateConstructorUsedError;
  @override
  bool get readerLoading => throw _privateConstructorUsedError;
  @override
  bool get loadingMore => throw _privateConstructorUsedError;
  @override
  Option<Failure> get categoryError => throw _privateConstructorUsedError;
  @override
  Option<Either<Failure, String>> get readerOption =>
      throw _privateConstructorUsedError;
  @override
  List<String> get likedBlogs => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BlogStateCopyWith<_BlogState> get copyWith =>
      throw _privateConstructorUsedError;
}
