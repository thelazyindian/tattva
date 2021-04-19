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
      required String author,
      required DateTime date,
      required List<TattvaImage> coverImage,
      required int durationInMins,
      required String summary,
      String? content,
      required int likes}) {
    return _Blog(
      id: id,
      title: title,
      slug: slug,
      author: author,
      date: date,
      coverImage: coverImage,
      durationInMins: durationInMins,
      summary: summary,
      content: content,
      likes: likes,
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
  String get author => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  List<TattvaImage> get coverImage => throw _privateConstructorUsedError;
  int get durationInMins => throw _privateConstructorUsedError;
  String get summary => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  int get likes => throw _privateConstructorUsedError;

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
      String author,
      DateTime date,
      List<TattvaImage> coverImage,
      int durationInMins,
      String summary,
      String? content,
      int likes});
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
    Object? author = freezed,
    Object? date = freezed,
    Object? coverImage = freezed,
    Object? durationInMins = freezed,
    Object? summary = freezed,
    Object? content = freezed,
    Object? likes = freezed,
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
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      coverImage: coverImage == freezed
          ? _value.coverImage
          : coverImage // ignore: cast_nullable_to_non_nullable
              as List<TattvaImage>,
      durationInMins: durationInMins == freezed
          ? _value.durationInMins
          : durationInMins // ignore: cast_nullable_to_non_nullable
              as int,
      summary: summary == freezed
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      likes: likes == freezed
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int,
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
      String author,
      DateTime date,
      List<TattvaImage> coverImage,
      int durationInMins,
      String summary,
      String? content,
      int likes});
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
    Object? author = freezed,
    Object? date = freezed,
    Object? coverImage = freezed,
    Object? durationInMins = freezed,
    Object? summary = freezed,
    Object? content = freezed,
    Object? likes = freezed,
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
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      coverImage: coverImage == freezed
          ? _value.coverImage
          : coverImage // ignore: cast_nullable_to_non_nullable
              as List<TattvaImage>,
      durationInMins: durationInMins == freezed
          ? _value.durationInMins
          : durationInMins // ignore: cast_nullable_to_non_nullable
              as int,
      summary: summary == freezed
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      likes: likes == freezed
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int,
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
      required this.author,
      required this.date,
      required this.coverImage,
      required this.durationInMins,
      required this.summary,
      this.content,
      required this.likes});

  factory _$_Blog.fromJson(Map<String, dynamic> json) =>
      _$_$_BlogFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String slug;
  @override
  final String author;
  @override
  final DateTime date;
  @override
  final List<TattvaImage> coverImage;
  @override
  final int durationInMins;
  @override
  final String summary;
  @override
  final String? content;
  @override
  final int likes;

  @override
  String toString() {
    return 'Blog(id: $id, title: $title, slug: $slug, author: $author, date: $date, coverImage: $coverImage, durationInMins: $durationInMins, summary: $summary, content: $content, likes: $likes)';
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
            (identical(other.author, author) ||
                const DeepCollectionEquality().equals(other.author, author)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.coverImage, coverImage) ||
                const DeepCollectionEquality()
                    .equals(other.coverImage, coverImage)) &&
            (identical(other.durationInMins, durationInMins) ||
                const DeepCollectionEquality()
                    .equals(other.durationInMins, durationInMins)) &&
            (identical(other.summary, summary) ||
                const DeepCollectionEquality()
                    .equals(other.summary, summary)) &&
            (identical(other.content, content) ||
                const DeepCollectionEquality()
                    .equals(other.content, content)) &&
            (identical(other.likes, likes) ||
                const DeepCollectionEquality().equals(other.likes, likes)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(slug) ^
      const DeepCollectionEquality().hash(author) ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(coverImage) ^
      const DeepCollectionEquality().hash(durationInMins) ^
      const DeepCollectionEquality().hash(summary) ^
      const DeepCollectionEquality().hash(content) ^
      const DeepCollectionEquality().hash(likes);

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
      required String author,
      required DateTime date,
      required List<TattvaImage> coverImage,
      required int durationInMins,
      required String summary,
      String? content,
      required int likes}) = _$_Blog;

  factory _Blog.fromJson(Map<String, dynamic> json) = _$_Blog.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get slug => throw _privateConstructorUsedError;
  @override
  String get author => throw _privateConstructorUsedError;
  @override
  DateTime get date => throw _privateConstructorUsedError;
  @override
  List<TattvaImage> get coverImage => throw _privateConstructorUsedError;
  @override
  int get durationInMins => throw _privateConstructorUsedError;
  @override
  String get summary => throw _privateConstructorUsedError;
  @override
  String? get content => throw _privateConstructorUsedError;
  @override
  int get likes => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BlogCopyWith<_Blog> get copyWith => throw _privateConstructorUsedError;
}
