// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'blog_category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BlogCategory _$BlogCategoryFromJson(Map<String, dynamic> json) {
  return _BlogCategory.fromJson(json);
}

/// @nodoc
class _$BlogCategoryTearOff {
  const _$BlogCategoryTearOff();

  _BlogCategory call(
      {required String id, required String name, List<Blog> blogs = const []}) {
    return _BlogCategory(
      id: id,
      name: name,
      blogs: blogs,
    );
  }

  BlogCategory fromJson(Map<String, Object> json) {
    return BlogCategory.fromJson(json);
  }
}

/// @nodoc
const $BlogCategory = _$BlogCategoryTearOff();

/// @nodoc
mixin _$BlogCategory {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<Blog> get blogs => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BlogCategoryCopyWith<BlogCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlogCategoryCopyWith<$Res> {
  factory $BlogCategoryCopyWith(
          BlogCategory value, $Res Function(BlogCategory) then) =
      _$BlogCategoryCopyWithImpl<$Res>;
  $Res call({String id, String name, List<Blog> blogs});
}

/// @nodoc
class _$BlogCategoryCopyWithImpl<$Res> implements $BlogCategoryCopyWith<$Res> {
  _$BlogCategoryCopyWithImpl(this._value, this._then);

  final BlogCategory _value;
  // ignore: unused_field
  final $Res Function(BlogCategory) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? blogs = freezed,
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
      blogs: blogs == freezed
          ? _value.blogs
          : blogs // ignore: cast_nullable_to_non_nullable
              as List<Blog>,
    ));
  }
}

/// @nodoc
abstract class _$BlogCategoryCopyWith<$Res>
    implements $BlogCategoryCopyWith<$Res> {
  factory _$BlogCategoryCopyWith(
          _BlogCategory value, $Res Function(_BlogCategory) then) =
      __$BlogCategoryCopyWithImpl<$Res>;
  @override
  $Res call({String id, String name, List<Blog> blogs});
}

/// @nodoc
class __$BlogCategoryCopyWithImpl<$Res> extends _$BlogCategoryCopyWithImpl<$Res>
    implements _$BlogCategoryCopyWith<$Res> {
  __$BlogCategoryCopyWithImpl(
      _BlogCategory _value, $Res Function(_BlogCategory) _then)
      : super(_value, (v) => _then(v as _BlogCategory));

  @override
  _BlogCategory get _value => super._value as _BlogCategory;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? blogs = freezed,
  }) {
    return _then(_BlogCategory(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      blogs: blogs == freezed
          ? _value.blogs
          : blogs // ignore: cast_nullable_to_non_nullable
              as List<Blog>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_BlogCategory implements _BlogCategory {
  const _$_BlogCategory(
      {required this.id, required this.name, this.blogs = const []});

  factory _$_BlogCategory.fromJson(Map<String, dynamic> json) =>
      _$_$_BlogCategoryFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @JsonKey(defaultValue: const [])
  @override
  final List<Blog> blogs;

  @override
  String toString() {
    return 'BlogCategory(id: $id, name: $name, blogs: $blogs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BlogCategory &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.blogs, blogs) ||
                const DeepCollectionEquality().equals(other.blogs, blogs)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(blogs);

  @JsonKey(ignore: true)
  @override
  _$BlogCategoryCopyWith<_BlogCategory> get copyWith =>
      __$BlogCategoryCopyWithImpl<_BlogCategory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_BlogCategoryToJson(this);
  }
}

abstract class _BlogCategory implements BlogCategory {
  const factory _BlogCategory(
      {required String id,
      required String name,
      List<Blog> blogs}) = _$_BlogCategory;

  factory _BlogCategory.fromJson(Map<String, dynamic> json) =
      _$_BlogCategory.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  List<Blog> get blogs => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BlogCategoryCopyWith<_BlogCategory> get copyWith =>
      throw _privateConstructorUsedError;
}
