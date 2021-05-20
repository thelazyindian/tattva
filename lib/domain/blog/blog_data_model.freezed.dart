// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'blog_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BlogDataModel _$BlogDataModelFromJson(Map<String, dynamic> json) {
  return _BlogDataModel.fromJson(json);
}

/// @nodoc
class _$BlogDataModelTearOff {
  const _$BlogDataModelTearOff();

  _BlogDataModel call(
      {List<BlogCategory> categories = const [],
      required List<Blog> blogs,
      required List<String> likedBlogs}) {
    return _BlogDataModel(
      categories: categories,
      blogs: blogs,
      likedBlogs: likedBlogs,
    );
  }

  BlogDataModel fromJson(Map<String, Object> json) {
    return BlogDataModel.fromJson(json);
  }
}

/// @nodoc
const $BlogDataModel = _$BlogDataModelTearOff();

/// @nodoc
mixin _$BlogDataModel {
  List<BlogCategory> get categories => throw _privateConstructorUsedError;
  List<Blog> get blogs => throw _privateConstructorUsedError;
  List<String> get likedBlogs => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BlogDataModelCopyWith<BlogDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlogDataModelCopyWith<$Res> {
  factory $BlogDataModelCopyWith(
          BlogDataModel value, $Res Function(BlogDataModel) then) =
      _$BlogDataModelCopyWithImpl<$Res>;
  $Res call(
      {List<BlogCategory> categories,
      List<Blog> blogs,
      List<String> likedBlogs});
}

/// @nodoc
class _$BlogDataModelCopyWithImpl<$Res>
    implements $BlogDataModelCopyWith<$Res> {
  _$BlogDataModelCopyWithImpl(this._value, this._then);

  final BlogDataModel _value;
  // ignore: unused_field
  final $Res Function(BlogDataModel) _then;

  @override
  $Res call({
    Object? categories = freezed,
    Object? blogs = freezed,
    Object? likedBlogs = freezed,
  }) {
    return _then(_value.copyWith(
      categories: categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<BlogCategory>,
      blogs: blogs == freezed
          ? _value.blogs
          : blogs // ignore: cast_nullable_to_non_nullable
              as List<Blog>,
      likedBlogs: likedBlogs == freezed
          ? _value.likedBlogs
          : likedBlogs // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$BlogDataModelCopyWith<$Res>
    implements $BlogDataModelCopyWith<$Res> {
  factory _$BlogDataModelCopyWith(
          _BlogDataModel value, $Res Function(_BlogDataModel) then) =
      __$BlogDataModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<BlogCategory> categories,
      List<Blog> blogs,
      List<String> likedBlogs});
}

/// @nodoc
class __$BlogDataModelCopyWithImpl<$Res>
    extends _$BlogDataModelCopyWithImpl<$Res>
    implements _$BlogDataModelCopyWith<$Res> {
  __$BlogDataModelCopyWithImpl(
      _BlogDataModel _value, $Res Function(_BlogDataModel) _then)
      : super(_value, (v) => _then(v as _BlogDataModel));

  @override
  _BlogDataModel get _value => super._value as _BlogDataModel;

  @override
  $Res call({
    Object? categories = freezed,
    Object? blogs = freezed,
    Object? likedBlogs = freezed,
  }) {
    return _then(_BlogDataModel(
      categories: categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<BlogCategory>,
      blogs: blogs == freezed
          ? _value.blogs
          : blogs // ignore: cast_nullable_to_non_nullable
              as List<Blog>,
      likedBlogs: likedBlogs == freezed
          ? _value.likedBlogs
          : likedBlogs // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_BlogDataModel implements _BlogDataModel {
  const _$_BlogDataModel(
      {this.categories = const [],
      required this.blogs,
      required this.likedBlogs});

  factory _$_BlogDataModel.fromJson(Map<String, dynamic> json) =>
      _$_$_BlogDataModelFromJson(json);

  @JsonKey(defaultValue: const [])
  @override
  final List<BlogCategory> categories;
  @override
  final List<Blog> blogs;
  @override
  final List<String> likedBlogs;

  @override
  String toString() {
    return 'BlogDataModel(categories: $categories, blogs: $blogs, likedBlogs: $likedBlogs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BlogDataModel &&
            (identical(other.categories, categories) ||
                const DeepCollectionEquality()
                    .equals(other.categories, categories)) &&
            (identical(other.blogs, blogs) ||
                const DeepCollectionEquality().equals(other.blogs, blogs)) &&
            (identical(other.likedBlogs, likedBlogs) ||
                const DeepCollectionEquality()
                    .equals(other.likedBlogs, likedBlogs)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(categories) ^
      const DeepCollectionEquality().hash(blogs) ^
      const DeepCollectionEquality().hash(likedBlogs);

  @JsonKey(ignore: true)
  @override
  _$BlogDataModelCopyWith<_BlogDataModel> get copyWith =>
      __$BlogDataModelCopyWithImpl<_BlogDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_BlogDataModelToJson(this);
  }
}

abstract class _BlogDataModel implements BlogDataModel {
  const factory _BlogDataModel(
      {List<BlogCategory> categories,
      required List<Blog> blogs,
      required List<String> likedBlogs}) = _$_BlogDataModel;

  factory _BlogDataModel.fromJson(Map<String, dynamic> json) =
      _$_BlogDataModel.fromJson;

  @override
  List<BlogCategory> get categories => throw _privateConstructorUsedError;
  @override
  List<Blog> get blogs => throw _privateConstructorUsedError;
  @override
  List<String> get likedBlogs => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BlogDataModelCopyWith<_BlogDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
