// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'blog.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Blog _$BlogFromJson(Map<String, dynamic> json) {
  return _Blog.fromJson(json);
}

/// @nodoc
class _$BlogTearOff {
  const _$BlogTearOff();

  _Blog call(
      {required String id,
      required String title,
      required String slug,
      required String language,
      required int readingTime,
      required List<TattvaImage> coverImage,
      required String summary,
      required String link,
      String? content,
      DateTime? createdAt}) {
    return _Blog(
      id: id,
      title: title,
      slug: slug,
      language: language,
      readingTime: readingTime,
      coverImage: coverImage,
      summary: summary,
      link: link,
      content: content,
      createdAt: createdAt,
    );
  }

  Blog fromJson(Map<String, Object> json) {
    return Blog.fromJson(json);
  }
}

/// @nodoc
const $Blog = _$BlogTearOff();

/// @nodoc
mixin _$Blog {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;
  String get language => throw _privateConstructorUsedError;
  int get readingTime => throw _privateConstructorUsedError;
  List<TattvaImage> get coverImage => throw _privateConstructorUsedError;
  String get summary => throw _privateConstructorUsedError;
  String get link => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BlogCopyWith<Blog> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlogCopyWith<$Res> {
  factory $BlogCopyWith(Blog value, $Res Function(Blog) then) =
      _$BlogCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String title,
      String slug,
      String language,
      int readingTime,
      List<TattvaImage> coverImage,
      String summary,
      String link,
      String? content,
      DateTime? createdAt});
}

/// @nodoc
class _$BlogCopyWithImpl<$Res> implements $BlogCopyWith<$Res> {
  _$BlogCopyWithImpl(this._value, this._then);

  final Blog _value;
  // ignore: unused_field
  final $Res Function(Blog) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? slug = freezed,
    Object? language = freezed,
    Object? readingTime = freezed,
    Object? coverImage = freezed,
    Object? summary = freezed,
    Object? link = freezed,
    Object? content = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      slug: slug == freezed
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      readingTime: readingTime == freezed
          ? _value.readingTime
          : readingTime // ignore: cast_nullable_to_non_nullable
              as int,
      coverImage: coverImage == freezed
          ? _value.coverImage
          : coverImage // ignore: cast_nullable_to_non_nullable
              as List<TattvaImage>,
      summary: summary == freezed
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$BlogCopyWith<$Res> implements $BlogCopyWith<$Res> {
  factory _$BlogCopyWith(_Blog value, $Res Function(_Blog) then) =
      __$BlogCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String title,
      String slug,
      String language,
      int readingTime,
      List<TattvaImage> coverImage,
      String summary,
      String link,
      String? content,
      DateTime? createdAt});
}

/// @nodoc
class __$BlogCopyWithImpl<$Res> extends _$BlogCopyWithImpl<$Res>
    implements _$BlogCopyWith<$Res> {
  __$BlogCopyWithImpl(_Blog _value, $Res Function(_Blog) _then)
      : super(_value, (v) => _then(v as _Blog));

  @override
  _Blog get _value => super._value as _Blog;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? slug = freezed,
    Object? language = freezed,
    Object? readingTime = freezed,
    Object? coverImage = freezed,
    Object? summary = freezed,
    Object? link = freezed,
    Object? content = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_Blog(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      slug: slug == freezed
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      readingTime: readingTime == freezed
          ? _value.readingTime
          : readingTime // ignore: cast_nullable_to_non_nullable
              as int,
      coverImage: coverImage == freezed
          ? _value.coverImage
          : coverImage // ignore: cast_nullable_to_non_nullable
              as List<TattvaImage>,
      summary: summary == freezed
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Blog implements _Blog {
  const _$_Blog(
      {required this.id,
      required this.title,
      required this.slug,
      required this.language,
      required this.readingTime,
      required this.coverImage,
      required this.summary,
      required this.link,
      this.content,
      this.createdAt});

  factory _$_Blog.fromJson(Map<String, dynamic> json) =>
      _$_$_BlogFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String slug;
  @override
  final String language;
  @override
  final int readingTime;
  @override
  final List<TattvaImage> coverImage;
  @override
  final String summary;
  @override
  final String link;
  @override
  final String? content;
  @override
  final DateTime? createdAt;

  @override
  String toString() {
    return 'Blog(id: $id, title: $title, slug: $slug, language: $language, readingTime: $readingTime, coverImage: $coverImage, summary: $summary, link: $link, content: $content, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Blog &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.slug, slug) ||
                const DeepCollectionEquality().equals(other.slug, slug)) &&
            (identical(other.language, language) ||
                const DeepCollectionEquality()
                    .equals(other.language, language)) &&
            (identical(other.readingTime, readingTime) ||
                const DeepCollectionEquality()
                    .equals(other.readingTime, readingTime)) &&
            (identical(other.coverImage, coverImage) ||
                const DeepCollectionEquality()
                    .equals(other.coverImage, coverImage)) &&
            (identical(other.summary, summary) ||
                const DeepCollectionEquality()
                    .equals(other.summary, summary)) &&
            (identical(other.link, link) ||
                const DeepCollectionEquality().equals(other.link, link)) &&
            (identical(other.content, content) ||
                const DeepCollectionEquality()
                    .equals(other.content, content)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(slug) ^
      const DeepCollectionEquality().hash(language) ^
      const DeepCollectionEquality().hash(readingTime) ^
      const DeepCollectionEquality().hash(coverImage) ^
      const DeepCollectionEquality().hash(summary) ^
      const DeepCollectionEquality().hash(link) ^
      const DeepCollectionEquality().hash(content) ^
      const DeepCollectionEquality().hash(createdAt);

  @JsonKey(ignore: true)
  @override
  _$BlogCopyWith<_Blog> get copyWith =>
      __$BlogCopyWithImpl<_Blog>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_BlogToJson(this);
  }
}

abstract class _Blog implements Blog {
  const factory _Blog(
      {required String id,
      required String title,
      required String slug,
      required String language,
      required int readingTime,
      required List<TattvaImage> coverImage,
      required String summary,
      required String link,
      String? content,
      DateTime? createdAt}) = _$_Blog;

  factory _Blog.fromJson(Map<String, dynamic> json) = _$_Blog.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get slug => throw _privateConstructorUsedError;
  @override
  String get language => throw _privateConstructorUsedError;
  @override
  int get readingTime => throw _privateConstructorUsedError;
  @override
  List<TattvaImage> get coverImage => throw _privateConstructorUsedError;
  @override
  String get summary => throw _privateConstructorUsedError;
  @override
  String get link => throw _privateConstructorUsedError;
  @override
  String? get content => throw _privateConstructorUsedError;
  @override
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BlogCopyWith<_Blog> get copyWith => throw _privateConstructorUsedError;
}
