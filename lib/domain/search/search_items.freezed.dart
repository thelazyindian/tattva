// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'search_items.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchItems _$SearchItemsFromJson(Map<String, dynamic> json) {
  return _SearchItems.fromJson(json);
}

/// @nodoc
class _$SearchItemsTearOff {
  const _$SearchItemsTearOff();

  _SearchItems call(
      {required List<TattvaAudio> audios,
      required List<Wallpaper> wallpapers,
      required List<Blog> blogs,
      required int page,
      required int nbHits,
      required int nbPages,
      required int hitsPerPage}) {
    return _SearchItems(
      audios: audios,
      wallpapers: wallpapers,
      blogs: blogs,
      page: page,
      nbHits: nbHits,
      nbPages: nbPages,
      hitsPerPage: hitsPerPage,
    );
  }

  SearchItems fromJson(Map<String, Object> json) {
    return SearchItems.fromJson(json);
  }
}

/// @nodoc
const $SearchItems = _$SearchItemsTearOff();

/// @nodoc
mixin _$SearchItems {
  List<TattvaAudio> get audios => throw _privateConstructorUsedError;
  List<Wallpaper> get wallpapers => throw _privateConstructorUsedError;
  List<Blog> get blogs => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  int get nbHits => throw _privateConstructorUsedError;
  int get nbPages => throw _privateConstructorUsedError;
  int get hitsPerPage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchItemsCopyWith<SearchItems> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchItemsCopyWith<$Res> {
  factory $SearchItemsCopyWith(
          SearchItems value, $Res Function(SearchItems) then) =
      _$SearchItemsCopyWithImpl<$Res>;
  $Res call(
      {List<TattvaAudio> audios,
      List<Wallpaper> wallpapers,
      List<Blog> blogs,
      int page,
      int nbHits,
      int nbPages,
      int hitsPerPage});
}

/// @nodoc
class _$SearchItemsCopyWithImpl<$Res> implements $SearchItemsCopyWith<$Res> {
  _$SearchItemsCopyWithImpl(this._value, this._then);

  final SearchItems _value;
  // ignore: unused_field
  final $Res Function(SearchItems) _then;

  @override
  $Res call({
    Object? audios = freezed,
    Object? wallpapers = freezed,
    Object? blogs = freezed,
    Object? page = freezed,
    Object? nbHits = freezed,
    Object? nbPages = freezed,
    Object? hitsPerPage = freezed,
  }) {
    return _then(_value.copyWith(
      audios: audios == freezed
          ? _value.audios
          : audios // ignore: cast_nullable_to_non_nullable
              as List<TattvaAudio>,
      wallpapers: wallpapers == freezed
          ? _value.wallpapers
          : wallpapers // ignore: cast_nullable_to_non_nullable
              as List<Wallpaper>,
      blogs: blogs == freezed
          ? _value.blogs
          : blogs // ignore: cast_nullable_to_non_nullable
              as List<Blog>,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      nbHits: nbHits == freezed
          ? _value.nbHits
          : nbHits // ignore: cast_nullable_to_non_nullable
              as int,
      nbPages: nbPages == freezed
          ? _value.nbPages
          : nbPages // ignore: cast_nullable_to_non_nullable
              as int,
      hitsPerPage: hitsPerPage == freezed
          ? _value.hitsPerPage
          : hitsPerPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$SearchItemsCopyWith<$Res>
    implements $SearchItemsCopyWith<$Res> {
  factory _$SearchItemsCopyWith(
          _SearchItems value, $Res Function(_SearchItems) then) =
      __$SearchItemsCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<TattvaAudio> audios,
      List<Wallpaper> wallpapers,
      List<Blog> blogs,
      int page,
      int nbHits,
      int nbPages,
      int hitsPerPage});
}

/// @nodoc
class __$SearchItemsCopyWithImpl<$Res> extends _$SearchItemsCopyWithImpl<$Res>
    implements _$SearchItemsCopyWith<$Res> {
  __$SearchItemsCopyWithImpl(
      _SearchItems _value, $Res Function(_SearchItems) _then)
      : super(_value, (v) => _then(v as _SearchItems));

  @override
  _SearchItems get _value => super._value as _SearchItems;

  @override
  $Res call({
    Object? audios = freezed,
    Object? wallpapers = freezed,
    Object? blogs = freezed,
    Object? page = freezed,
    Object? nbHits = freezed,
    Object? nbPages = freezed,
    Object? hitsPerPage = freezed,
  }) {
    return _then(_SearchItems(
      audios: audios == freezed
          ? _value.audios
          : audios // ignore: cast_nullable_to_non_nullable
              as List<TattvaAudio>,
      wallpapers: wallpapers == freezed
          ? _value.wallpapers
          : wallpapers // ignore: cast_nullable_to_non_nullable
              as List<Wallpaper>,
      blogs: blogs == freezed
          ? _value.blogs
          : blogs // ignore: cast_nullable_to_non_nullable
              as List<Blog>,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      nbHits: nbHits == freezed
          ? _value.nbHits
          : nbHits // ignore: cast_nullable_to_non_nullable
              as int,
      nbPages: nbPages == freezed
          ? _value.nbPages
          : nbPages // ignore: cast_nullable_to_non_nullable
              as int,
      hitsPerPage: hitsPerPage == freezed
          ? _value.hitsPerPage
          : hitsPerPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_SearchItems implements _SearchItems {
  const _$_SearchItems(
      {required this.audios,
      required this.wallpapers,
      required this.blogs,
      required this.page,
      required this.nbHits,
      required this.nbPages,
      required this.hitsPerPage});

  factory _$_SearchItems.fromJson(Map<String, dynamic> json) =>
      _$_$_SearchItemsFromJson(json);

  @override
  final List<TattvaAudio> audios;
  @override
  final List<Wallpaper> wallpapers;
  @override
  final List<Blog> blogs;
  @override
  final int page;
  @override
  final int nbHits;
  @override
  final int nbPages;
  @override
  final int hitsPerPage;

  @override
  String toString() {
    return 'SearchItems(audios: $audios, wallpapers: $wallpapers, blogs: $blogs, page: $page, nbHits: $nbHits, nbPages: $nbPages, hitsPerPage: $hitsPerPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchItems &&
            (identical(other.audios, audios) ||
                const DeepCollectionEquality().equals(other.audios, audios)) &&
            (identical(other.wallpapers, wallpapers) ||
                const DeepCollectionEquality()
                    .equals(other.wallpapers, wallpapers)) &&
            (identical(other.blogs, blogs) ||
                const DeepCollectionEquality().equals(other.blogs, blogs)) &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)) &&
            (identical(other.nbHits, nbHits) ||
                const DeepCollectionEquality().equals(other.nbHits, nbHits)) &&
            (identical(other.nbPages, nbPages) ||
                const DeepCollectionEquality()
                    .equals(other.nbPages, nbPages)) &&
            (identical(other.hitsPerPage, hitsPerPage) ||
                const DeepCollectionEquality()
                    .equals(other.hitsPerPage, hitsPerPage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(audios) ^
      const DeepCollectionEquality().hash(wallpapers) ^
      const DeepCollectionEquality().hash(blogs) ^
      const DeepCollectionEquality().hash(page) ^
      const DeepCollectionEquality().hash(nbHits) ^
      const DeepCollectionEquality().hash(nbPages) ^
      const DeepCollectionEquality().hash(hitsPerPage);

  @JsonKey(ignore: true)
  @override
  _$SearchItemsCopyWith<_SearchItems> get copyWith =>
      __$SearchItemsCopyWithImpl<_SearchItems>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SearchItemsToJson(this);
  }
}

abstract class _SearchItems implements SearchItems {
  const factory _SearchItems(
      {required List<TattvaAudio> audios,
      required List<Wallpaper> wallpapers,
      required List<Blog> blogs,
      required int page,
      required int nbHits,
      required int nbPages,
      required int hitsPerPage}) = _$_SearchItems;

  factory _SearchItems.fromJson(Map<String, dynamic> json) =
      _$_SearchItems.fromJson;

  @override
  List<TattvaAudio> get audios => throw _privateConstructorUsedError;
  @override
  List<Wallpaper> get wallpapers => throw _privateConstructorUsedError;
  @override
  List<Blog> get blogs => throw _privateConstructorUsedError;
  @override
  int get page => throw _privateConstructorUsedError;
  @override
  int get nbHits => throw _privateConstructorUsedError;
  @override
  int get nbPages => throw _privateConstructorUsedError;
  @override
  int get hitsPerPage => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SearchItemsCopyWith<_SearchItems> get copyWith =>
      throw _privateConstructorUsedError;
}
