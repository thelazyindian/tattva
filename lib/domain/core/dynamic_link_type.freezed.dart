// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'dynamic_link_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DynamicLinkTypeTearOff {
  const _$DynamicLinkTypeTearOff();

  _Audio audio({required String id}) {
    return _Audio(
      id: id,
    );
  }

  _Blog blog({required String id}) {
    return _Blog(
      id: id,
    );
  }

  _Wallpaper wallpaper({required String id}) {
    return _Wallpaper(
      id: id,
    );
  }
}

/// @nodoc
const $DynamicLinkType = _$DynamicLinkTypeTearOff();

/// @nodoc
mixin _$DynamicLinkType {
  String get id => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) audio,
    required TResult Function(String id) blog,
    required TResult Function(String id) wallpaper,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? audio,
    TResult Function(String id)? blog,
    TResult Function(String id)? wallpaper,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Audio value) audio,
    required TResult Function(_Blog value) blog,
    required TResult Function(_Wallpaper value) wallpaper,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Audio value)? audio,
    TResult Function(_Blog value)? blog,
    TResult Function(_Wallpaper value)? wallpaper,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DynamicLinkTypeCopyWith<DynamicLinkType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DynamicLinkTypeCopyWith<$Res> {
  factory $DynamicLinkTypeCopyWith(
          DynamicLinkType value, $Res Function(DynamicLinkType) then) =
      _$DynamicLinkTypeCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class _$DynamicLinkTypeCopyWithImpl<$Res>
    implements $DynamicLinkTypeCopyWith<$Res> {
  _$DynamicLinkTypeCopyWithImpl(this._value, this._then);

  final DynamicLinkType _value;
  // ignore: unused_field
  final $Res Function(DynamicLinkType) _then;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$AudioCopyWith<$Res> implements $DynamicLinkTypeCopyWith<$Res> {
  factory _$AudioCopyWith(_Audio value, $Res Function(_Audio) then) =
      __$AudioCopyWithImpl<$Res>;
  @override
  $Res call({String id});
}

/// @nodoc
class __$AudioCopyWithImpl<$Res> extends _$DynamicLinkTypeCopyWithImpl<$Res>
    implements _$AudioCopyWith<$Res> {
  __$AudioCopyWithImpl(_Audio _value, $Res Function(_Audio) _then)
      : super(_value, (v) => _then(v as _Audio));

  @override
  _Audio get _value => super._value as _Audio;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_Audio(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_Audio implements _Audio {
  const _$_Audio({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'DynamicLinkType.audio(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Audio &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$AudioCopyWith<_Audio> get copyWith =>
      __$AudioCopyWithImpl<_Audio>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) audio,
    required TResult Function(String id) blog,
    required TResult Function(String id) wallpaper,
  }) {
    return audio(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? audio,
    TResult Function(String id)? blog,
    TResult Function(String id)? wallpaper,
    required TResult orElse(),
  }) {
    if (audio != null) {
      return audio(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Audio value) audio,
    required TResult Function(_Blog value) blog,
    required TResult Function(_Wallpaper value) wallpaper,
  }) {
    return audio(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Audio value)? audio,
    TResult Function(_Blog value)? blog,
    TResult Function(_Wallpaper value)? wallpaper,
    required TResult orElse(),
  }) {
    if (audio != null) {
      return audio(this);
    }
    return orElse();
  }
}

abstract class _Audio implements DynamicLinkType {
  const factory _Audio({required String id}) = _$_Audio;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AudioCopyWith<_Audio> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$BlogCopyWith<$Res> implements $DynamicLinkTypeCopyWith<$Res> {
  factory _$BlogCopyWith(_Blog value, $Res Function(_Blog) then) =
      __$BlogCopyWithImpl<$Res>;
  @override
  $Res call({String id});
}

/// @nodoc
class __$BlogCopyWithImpl<$Res> extends _$DynamicLinkTypeCopyWithImpl<$Res>
    implements _$BlogCopyWith<$Res> {
  __$BlogCopyWithImpl(_Blog _value, $Res Function(_Blog) _then)
      : super(_value, (v) => _then(v as _Blog));

  @override
  _Blog get _value => super._value as _Blog;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_Blog(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_Blog implements _Blog {
  const _$_Blog({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'DynamicLinkType.blog(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Blog &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$BlogCopyWith<_Blog> get copyWith =>
      __$BlogCopyWithImpl<_Blog>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) audio,
    required TResult Function(String id) blog,
    required TResult Function(String id) wallpaper,
  }) {
    return blog(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? audio,
    TResult Function(String id)? blog,
    TResult Function(String id)? wallpaper,
    required TResult orElse(),
  }) {
    if (blog != null) {
      return blog(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Audio value) audio,
    required TResult Function(_Blog value) blog,
    required TResult Function(_Wallpaper value) wallpaper,
  }) {
    return blog(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Audio value)? audio,
    TResult Function(_Blog value)? blog,
    TResult Function(_Wallpaper value)? wallpaper,
    required TResult orElse(),
  }) {
    if (blog != null) {
      return blog(this);
    }
    return orElse();
  }
}

abstract class _Blog implements DynamicLinkType {
  const factory _Blog({required String id}) = _$_Blog;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BlogCopyWith<_Blog> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$WallpaperCopyWith<$Res>
    implements $DynamicLinkTypeCopyWith<$Res> {
  factory _$WallpaperCopyWith(
          _Wallpaper value, $Res Function(_Wallpaper) then) =
      __$WallpaperCopyWithImpl<$Res>;
  @override
  $Res call({String id});
}

/// @nodoc
class __$WallpaperCopyWithImpl<$Res> extends _$DynamicLinkTypeCopyWithImpl<$Res>
    implements _$WallpaperCopyWith<$Res> {
  __$WallpaperCopyWithImpl(_Wallpaper _value, $Res Function(_Wallpaper) _then)
      : super(_value, (v) => _then(v as _Wallpaper));

  @override
  _Wallpaper get _value => super._value as _Wallpaper;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_Wallpaper(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_Wallpaper implements _Wallpaper {
  const _$_Wallpaper({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'DynamicLinkType.wallpaper(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Wallpaper &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$WallpaperCopyWith<_Wallpaper> get copyWith =>
      __$WallpaperCopyWithImpl<_Wallpaper>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) audio,
    required TResult Function(String id) blog,
    required TResult Function(String id) wallpaper,
  }) {
    return wallpaper(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? audio,
    TResult Function(String id)? blog,
    TResult Function(String id)? wallpaper,
    required TResult orElse(),
  }) {
    if (wallpaper != null) {
      return wallpaper(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Audio value) audio,
    required TResult Function(_Blog value) blog,
    required TResult Function(_Wallpaper value) wallpaper,
  }) {
    return wallpaper(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Audio value)? audio,
    TResult Function(_Blog value)? blog,
    TResult Function(_Wallpaper value)? wallpaper,
    required TResult orElse(),
  }) {
    if (wallpaper != null) {
      return wallpaper(this);
    }
    return orElse();
  }
}

abstract class _Wallpaper implements DynamicLinkType {
  const factory _Wallpaper({required String id}) = _$_Wallpaper;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$WallpaperCopyWith<_Wallpaper> get copyWith =>
      throw _privateConstructorUsedError;
}
