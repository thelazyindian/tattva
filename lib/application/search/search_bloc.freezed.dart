// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SearchEventTearOff {
  const _$SearchEventTearOff();

  _Reset reset() {
    return const _Reset();
  }

  _OnQueryChanged onQueryChanged({required String value}) {
    return _OnQueryChanged(
      value: value,
    );
  }

  _Search search() {
    return const _Search();
  }

  _LoadMore loadMore() {
    return const _LoadMore();
  }

  _Cancel cancel() {
    return const _Cancel();
  }

  _ChangedTab changedTab({required int index}) {
    return _ChangedTab(
      index: index,
    );
  }
}

/// @nodoc
const $SearchEvent = _$SearchEventTearOff();

/// @nodoc
mixin _$SearchEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() reset,
    required TResult Function(String value) onQueryChanged,
    required TResult Function() search,
    required TResult Function() loadMore,
    required TResult Function() cancel,
    required TResult Function(int index) changedTab,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? reset,
    TResult Function(String value)? onQueryChanged,
    TResult Function()? search,
    TResult Function()? loadMore,
    TResult Function()? cancel,
    TResult Function(int index)? changedTab,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Reset value) reset,
    required TResult Function(_OnQueryChanged value) onQueryChanged,
    required TResult Function(_Search value) search,
    required TResult Function(_LoadMore value) loadMore,
    required TResult Function(_Cancel value) cancel,
    required TResult Function(_ChangedTab value) changedTab,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Reset value)? reset,
    TResult Function(_OnQueryChanged value)? onQueryChanged,
    TResult Function(_Search value)? search,
    TResult Function(_LoadMore value)? loadMore,
    TResult Function(_Cancel value)? cancel,
    TResult Function(_ChangedTab value)? changedTab,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchEventCopyWith<$Res> {
  factory $SearchEventCopyWith(
          SearchEvent value, $Res Function(SearchEvent) then) =
      _$SearchEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchEventCopyWithImpl<$Res> implements $SearchEventCopyWith<$Res> {
  _$SearchEventCopyWithImpl(this._value, this._then);

  final SearchEvent _value;
  // ignore: unused_field
  final $Res Function(SearchEvent) _then;
}

/// @nodoc
abstract class _$ResetCopyWith<$Res> {
  factory _$ResetCopyWith(_Reset value, $Res Function(_Reset) then) =
      __$ResetCopyWithImpl<$Res>;
}

/// @nodoc
class __$ResetCopyWithImpl<$Res> extends _$SearchEventCopyWithImpl<$Res>
    implements _$ResetCopyWith<$Res> {
  __$ResetCopyWithImpl(_Reset _value, $Res Function(_Reset) _then)
      : super(_value, (v) => _then(v as _Reset));

  @override
  _Reset get _value => super._value as _Reset;
}

/// @nodoc
class _$_Reset with DiagnosticableTreeMixin implements _Reset {
  const _$_Reset();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchEvent.reset()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'SearchEvent.reset'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Reset);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() reset,
    required TResult Function(String value) onQueryChanged,
    required TResult Function() search,
    required TResult Function() loadMore,
    required TResult Function() cancel,
    required TResult Function(int index) changedTab,
  }) {
    return reset();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? reset,
    TResult Function(String value)? onQueryChanged,
    TResult Function()? search,
    TResult Function()? loadMore,
    TResult Function()? cancel,
    TResult Function(int index)? changedTab,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Reset value) reset,
    required TResult Function(_OnQueryChanged value) onQueryChanged,
    required TResult Function(_Search value) search,
    required TResult Function(_LoadMore value) loadMore,
    required TResult Function(_Cancel value) cancel,
    required TResult Function(_ChangedTab value) changedTab,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Reset value)? reset,
    TResult Function(_OnQueryChanged value)? onQueryChanged,
    TResult Function(_Search value)? search,
    TResult Function(_LoadMore value)? loadMore,
    TResult Function(_Cancel value)? cancel,
    TResult Function(_ChangedTab value)? changedTab,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class _Reset implements SearchEvent {
  const factory _Reset() = _$_Reset;
}

/// @nodoc
abstract class _$OnQueryChangedCopyWith<$Res> {
  factory _$OnQueryChangedCopyWith(
          _OnQueryChanged value, $Res Function(_OnQueryChanged) then) =
      __$OnQueryChangedCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class __$OnQueryChangedCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res>
    implements _$OnQueryChangedCopyWith<$Res> {
  __$OnQueryChangedCopyWithImpl(
      _OnQueryChanged _value, $Res Function(_OnQueryChanged) _then)
      : super(_value, (v) => _then(v as _OnQueryChanged));

  @override
  _OnQueryChanged get _value => super._value as _OnQueryChanged;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_OnQueryChanged(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_OnQueryChanged
    with DiagnosticableTreeMixin
    implements _OnQueryChanged {
  const _$_OnQueryChanged({required this.value});

  @override
  final String value;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchEvent.onQueryChanged(value: $value)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SearchEvent.onQueryChanged'))
      ..add(DiagnosticsProperty('value', value));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OnQueryChanged &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  _$OnQueryChangedCopyWith<_OnQueryChanged> get copyWith =>
      __$OnQueryChangedCopyWithImpl<_OnQueryChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() reset,
    required TResult Function(String value) onQueryChanged,
    required TResult Function() search,
    required TResult Function() loadMore,
    required TResult Function() cancel,
    required TResult Function(int index) changedTab,
  }) {
    return onQueryChanged(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? reset,
    TResult Function(String value)? onQueryChanged,
    TResult Function()? search,
    TResult Function()? loadMore,
    TResult Function()? cancel,
    TResult Function(int index)? changedTab,
    required TResult orElse(),
  }) {
    if (onQueryChanged != null) {
      return onQueryChanged(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Reset value) reset,
    required TResult Function(_OnQueryChanged value) onQueryChanged,
    required TResult Function(_Search value) search,
    required TResult Function(_LoadMore value) loadMore,
    required TResult Function(_Cancel value) cancel,
    required TResult Function(_ChangedTab value) changedTab,
  }) {
    return onQueryChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Reset value)? reset,
    TResult Function(_OnQueryChanged value)? onQueryChanged,
    TResult Function(_Search value)? search,
    TResult Function(_LoadMore value)? loadMore,
    TResult Function(_Cancel value)? cancel,
    TResult Function(_ChangedTab value)? changedTab,
    required TResult orElse(),
  }) {
    if (onQueryChanged != null) {
      return onQueryChanged(this);
    }
    return orElse();
  }
}

abstract class _OnQueryChanged implements SearchEvent {
  const factory _OnQueryChanged({required String value}) = _$_OnQueryChanged;

  String get value => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$OnQueryChangedCopyWith<_OnQueryChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SearchCopyWith<$Res> {
  factory _$SearchCopyWith(_Search value, $Res Function(_Search) then) =
      __$SearchCopyWithImpl<$Res>;
}

/// @nodoc
class __$SearchCopyWithImpl<$Res> extends _$SearchEventCopyWithImpl<$Res>
    implements _$SearchCopyWith<$Res> {
  __$SearchCopyWithImpl(_Search _value, $Res Function(_Search) _then)
      : super(_value, (v) => _then(v as _Search));

  @override
  _Search get _value => super._value as _Search;
}

/// @nodoc
class _$_Search with DiagnosticableTreeMixin implements _Search {
  const _$_Search();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchEvent.search()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'SearchEvent.search'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Search);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() reset,
    required TResult Function(String value) onQueryChanged,
    required TResult Function() search,
    required TResult Function() loadMore,
    required TResult Function() cancel,
    required TResult Function(int index) changedTab,
  }) {
    return search();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? reset,
    TResult Function(String value)? onQueryChanged,
    TResult Function()? search,
    TResult Function()? loadMore,
    TResult Function()? cancel,
    TResult Function(int index)? changedTab,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Reset value) reset,
    required TResult Function(_OnQueryChanged value) onQueryChanged,
    required TResult Function(_Search value) search,
    required TResult Function(_LoadMore value) loadMore,
    required TResult Function(_Cancel value) cancel,
    required TResult Function(_ChangedTab value) changedTab,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Reset value)? reset,
    TResult Function(_OnQueryChanged value)? onQueryChanged,
    TResult Function(_Search value)? search,
    TResult Function(_LoadMore value)? loadMore,
    TResult Function(_Cancel value)? cancel,
    TResult Function(_ChangedTab value)? changedTab,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class _Search implements SearchEvent {
  const factory _Search() = _$_Search;
}

/// @nodoc
abstract class _$LoadMoreCopyWith<$Res> {
  factory _$LoadMoreCopyWith(_LoadMore value, $Res Function(_LoadMore) then) =
      __$LoadMoreCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadMoreCopyWithImpl<$Res> extends _$SearchEventCopyWithImpl<$Res>
    implements _$LoadMoreCopyWith<$Res> {
  __$LoadMoreCopyWithImpl(_LoadMore _value, $Res Function(_LoadMore) _then)
      : super(_value, (v) => _then(v as _LoadMore));

  @override
  _LoadMore get _value => super._value as _LoadMore;
}

/// @nodoc
class _$_LoadMore with DiagnosticableTreeMixin implements _LoadMore {
  const _$_LoadMore();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchEvent.loadMore()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'SearchEvent.loadMore'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadMore);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() reset,
    required TResult Function(String value) onQueryChanged,
    required TResult Function() search,
    required TResult Function() loadMore,
    required TResult Function() cancel,
    required TResult Function(int index) changedTab,
  }) {
    return loadMore();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? reset,
    TResult Function(String value)? onQueryChanged,
    TResult Function()? search,
    TResult Function()? loadMore,
    TResult Function()? cancel,
    TResult Function(int index)? changedTab,
    required TResult orElse(),
  }) {
    if (loadMore != null) {
      return loadMore();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Reset value) reset,
    required TResult Function(_OnQueryChanged value) onQueryChanged,
    required TResult Function(_Search value) search,
    required TResult Function(_LoadMore value) loadMore,
    required TResult Function(_Cancel value) cancel,
    required TResult Function(_ChangedTab value) changedTab,
  }) {
    return loadMore(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Reset value)? reset,
    TResult Function(_OnQueryChanged value)? onQueryChanged,
    TResult Function(_Search value)? search,
    TResult Function(_LoadMore value)? loadMore,
    TResult Function(_Cancel value)? cancel,
    TResult Function(_ChangedTab value)? changedTab,
    required TResult orElse(),
  }) {
    if (loadMore != null) {
      return loadMore(this);
    }
    return orElse();
  }
}

abstract class _LoadMore implements SearchEvent {
  const factory _LoadMore() = _$_LoadMore;
}

/// @nodoc
abstract class _$CancelCopyWith<$Res> {
  factory _$CancelCopyWith(_Cancel value, $Res Function(_Cancel) then) =
      __$CancelCopyWithImpl<$Res>;
}

/// @nodoc
class __$CancelCopyWithImpl<$Res> extends _$SearchEventCopyWithImpl<$Res>
    implements _$CancelCopyWith<$Res> {
  __$CancelCopyWithImpl(_Cancel _value, $Res Function(_Cancel) _then)
      : super(_value, (v) => _then(v as _Cancel));

  @override
  _Cancel get _value => super._value as _Cancel;
}

/// @nodoc
class _$_Cancel with DiagnosticableTreeMixin implements _Cancel {
  const _$_Cancel();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchEvent.cancel()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'SearchEvent.cancel'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Cancel);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() reset,
    required TResult Function(String value) onQueryChanged,
    required TResult Function() search,
    required TResult Function() loadMore,
    required TResult Function() cancel,
    required TResult Function(int index) changedTab,
  }) {
    return cancel();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? reset,
    TResult Function(String value)? onQueryChanged,
    TResult Function()? search,
    TResult Function()? loadMore,
    TResult Function()? cancel,
    TResult Function(int index)? changedTab,
    required TResult orElse(),
  }) {
    if (cancel != null) {
      return cancel();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Reset value) reset,
    required TResult Function(_OnQueryChanged value) onQueryChanged,
    required TResult Function(_Search value) search,
    required TResult Function(_LoadMore value) loadMore,
    required TResult Function(_Cancel value) cancel,
    required TResult Function(_ChangedTab value) changedTab,
  }) {
    return cancel(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Reset value)? reset,
    TResult Function(_OnQueryChanged value)? onQueryChanged,
    TResult Function(_Search value)? search,
    TResult Function(_LoadMore value)? loadMore,
    TResult Function(_Cancel value)? cancel,
    TResult Function(_ChangedTab value)? changedTab,
    required TResult orElse(),
  }) {
    if (cancel != null) {
      return cancel(this);
    }
    return orElse();
  }
}

abstract class _Cancel implements SearchEvent {
  const factory _Cancel() = _$_Cancel;
}

/// @nodoc
abstract class _$ChangedTabCopyWith<$Res> {
  factory _$ChangedTabCopyWith(
          _ChangedTab value, $Res Function(_ChangedTab) then) =
      __$ChangedTabCopyWithImpl<$Res>;
  $Res call({int index});
}

/// @nodoc
class __$ChangedTabCopyWithImpl<$Res> extends _$SearchEventCopyWithImpl<$Res>
    implements _$ChangedTabCopyWith<$Res> {
  __$ChangedTabCopyWithImpl(
      _ChangedTab _value, $Res Function(_ChangedTab) _then)
      : super(_value, (v) => _then(v as _ChangedTab));

  @override
  _ChangedTab get _value => super._value as _ChangedTab;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(_ChangedTab(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
class _$_ChangedTab with DiagnosticableTreeMixin implements _ChangedTab {
  const _$_ChangedTab({required this.index});

  @override
  final int index;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchEvent.changedTab(index: $index)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SearchEvent.changedTab'))
      ..add(DiagnosticsProperty('index', index));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangedTab &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(index);

  @JsonKey(ignore: true)
  @override
  _$ChangedTabCopyWith<_ChangedTab> get copyWith =>
      __$ChangedTabCopyWithImpl<_ChangedTab>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() reset,
    required TResult Function(String value) onQueryChanged,
    required TResult Function() search,
    required TResult Function() loadMore,
    required TResult Function() cancel,
    required TResult Function(int index) changedTab,
  }) {
    return changedTab(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? reset,
    TResult Function(String value)? onQueryChanged,
    TResult Function()? search,
    TResult Function()? loadMore,
    TResult Function()? cancel,
    TResult Function(int index)? changedTab,
    required TResult orElse(),
  }) {
    if (changedTab != null) {
      return changedTab(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Reset value) reset,
    required TResult Function(_OnQueryChanged value) onQueryChanged,
    required TResult Function(_Search value) search,
    required TResult Function(_LoadMore value) loadMore,
    required TResult Function(_Cancel value) cancel,
    required TResult Function(_ChangedTab value) changedTab,
  }) {
    return changedTab(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Reset value)? reset,
    TResult Function(_OnQueryChanged value)? onQueryChanged,
    TResult Function(_Search value)? search,
    TResult Function(_LoadMore value)? loadMore,
    TResult Function(_Cancel value)? cancel,
    TResult Function(_ChangedTab value)? changedTab,
    required TResult orElse(),
  }) {
    if (changedTab != null) {
      return changedTab(this);
    }
    return orElse();
  }
}

abstract class _ChangedTab implements SearchEvent {
  const factory _ChangedTab({required int index}) = _$_ChangedTab;

  int get index => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ChangedTabCopyWith<_ChangedTab> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SearchStateTearOff {
  const _$SearchStateTearOff();

  _SearchStateAll all(
      {required Option<Either<Failure, SearchItems>> searchItems,
      required bool loading,
      required bool loadingMore,
      required String query}) {
    return _SearchStateAll(
      searchItems: searchItems,
      loading: loading,
      loadingMore: loadingMore,
      query: query,
    );
  }

  _SearchStateAudios audios(
      {required Option<Either<Failure, SearchItems>> searchItems,
      required bool loading,
      required bool loadingMore,
      required String query}) {
    return _SearchStateAudios(
      searchItems: searchItems,
      loading: loading,
      loadingMore: loadingMore,
      query: query,
    );
  }

  _SearchStateBlogs blogs(
      {required Option<Either<Failure, SearchItems>> searchItems,
      required bool loading,
      required bool loadingMore,
      required String query}) {
    return _SearchStateBlogs(
      searchItems: searchItems,
      loading: loading,
      loadingMore: loadingMore,
      query: query,
    );
  }

  _SearchStateWallpapers wallpapers(
      {required Option<Either<Failure, SearchItems>> searchItems,
      required bool loading,
      required bool loadingMore,
      required String query}) {
    return _SearchStateWallpapers(
      searchItems: searchItems,
      loading: loading,
      loadingMore: loadingMore,
      query: query,
    );
  }
}

/// @nodoc
const $SearchState = _$SearchStateTearOff();

/// @nodoc
mixin _$SearchState {
  Option<Either<Failure, SearchItems>> get searchItems =>
      throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  bool get loadingMore => throw _privateConstructorUsedError;
  String get query => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Either<Failure, SearchItems>> searchItems,
            bool loading, bool loadingMore, String query)
        all,
    required TResult Function(Option<Either<Failure, SearchItems>> searchItems,
            bool loading, bool loadingMore, String query)
        audios,
    required TResult Function(Option<Either<Failure, SearchItems>> searchItems,
            bool loading, bool loadingMore, String query)
        blogs,
    required TResult Function(Option<Either<Failure, SearchItems>> searchItems,
            bool loading, bool loadingMore, String query)
        wallpapers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Either<Failure, SearchItems>> searchItems,
            bool loading, bool loadingMore, String query)?
        all,
    TResult Function(Option<Either<Failure, SearchItems>> searchItems,
            bool loading, bool loadingMore, String query)?
        audios,
    TResult Function(Option<Either<Failure, SearchItems>> searchItems,
            bool loading, bool loadingMore, String query)?
        blogs,
    TResult Function(Option<Either<Failure, SearchItems>> searchItems,
            bool loading, bool loadingMore, String query)?
        wallpapers,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchStateAll value) all,
    required TResult Function(_SearchStateAudios value) audios,
    required TResult Function(_SearchStateBlogs value) blogs,
    required TResult Function(_SearchStateWallpapers value) wallpapers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchStateAll value)? all,
    TResult Function(_SearchStateAudios value)? audios,
    TResult Function(_SearchStateBlogs value)? blogs,
    TResult Function(_SearchStateWallpapers value)? wallpapers,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchStateCopyWith<SearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res>;
  $Res call(
      {Option<Either<Failure, SearchItems>> searchItems,
      bool loading,
      bool loadingMore,
      String query});
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res> implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  final SearchState _value;
  // ignore: unused_field
  final $Res Function(SearchState) _then;

  @override
  $Res call({
    Object? searchItems = freezed,
    Object? loading = freezed,
    Object? loadingMore = freezed,
    Object? query = freezed,
  }) {
    return _then(_value.copyWith(
      searchItems: searchItems == freezed
          ? _value.searchItems
          : searchItems // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, SearchItems>>,
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      loadingMore: loadingMore == freezed
          ? _value.loadingMore
          : loadingMore // ignore: cast_nullable_to_non_nullable
              as bool,
      query: query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$SearchStateAllCopyWith<$Res>
    implements $SearchStateCopyWith<$Res> {
  factory _$SearchStateAllCopyWith(
          _SearchStateAll value, $Res Function(_SearchStateAll) then) =
      __$SearchStateAllCopyWithImpl<$Res>;
  @override
  $Res call(
      {Option<Either<Failure, SearchItems>> searchItems,
      bool loading,
      bool loadingMore,
      String query});
}

/// @nodoc
class __$SearchStateAllCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res>
    implements _$SearchStateAllCopyWith<$Res> {
  __$SearchStateAllCopyWithImpl(
      _SearchStateAll _value, $Res Function(_SearchStateAll) _then)
      : super(_value, (v) => _then(v as _SearchStateAll));

  @override
  _SearchStateAll get _value => super._value as _SearchStateAll;

  @override
  $Res call({
    Object? searchItems = freezed,
    Object? loading = freezed,
    Object? loadingMore = freezed,
    Object? query = freezed,
  }) {
    return _then(_SearchStateAll(
      searchItems: searchItems == freezed
          ? _value.searchItems
          : searchItems // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, SearchItems>>,
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      loadingMore: loadingMore == freezed
          ? _value.loadingMore
          : loadingMore // ignore: cast_nullable_to_non_nullable
              as bool,
      query: query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_SearchStateAll
    with DiagnosticableTreeMixin
    implements _SearchStateAll {
  const _$_SearchStateAll(
      {required this.searchItems,
      required this.loading,
      required this.loadingMore,
      required this.query});

  @override
  final Option<Either<Failure, SearchItems>> searchItems;
  @override
  final bool loading;
  @override
  final bool loadingMore;
  @override
  final String query;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchState.all(searchItems: $searchItems, loading: $loading, loadingMore: $loadingMore, query: $query)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SearchState.all'))
      ..add(DiagnosticsProperty('searchItems', searchItems))
      ..add(DiagnosticsProperty('loading', loading))
      ..add(DiagnosticsProperty('loadingMore', loadingMore))
      ..add(DiagnosticsProperty('query', query));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchStateAll &&
            (identical(other.searchItems, searchItems) ||
                const DeepCollectionEquality()
                    .equals(other.searchItems, searchItems)) &&
            (identical(other.loading, loading) ||
                const DeepCollectionEquality()
                    .equals(other.loading, loading)) &&
            (identical(other.loadingMore, loadingMore) ||
                const DeepCollectionEquality()
                    .equals(other.loadingMore, loadingMore)) &&
            (identical(other.query, query) ||
                const DeepCollectionEquality().equals(other.query, query)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(searchItems) ^
      const DeepCollectionEquality().hash(loading) ^
      const DeepCollectionEquality().hash(loadingMore) ^
      const DeepCollectionEquality().hash(query);

  @JsonKey(ignore: true)
  @override
  _$SearchStateAllCopyWith<_SearchStateAll> get copyWith =>
      __$SearchStateAllCopyWithImpl<_SearchStateAll>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Either<Failure, SearchItems>> searchItems,
            bool loading, bool loadingMore, String query)
        all,
    required TResult Function(Option<Either<Failure, SearchItems>> searchItems,
            bool loading, bool loadingMore, String query)
        audios,
    required TResult Function(Option<Either<Failure, SearchItems>> searchItems,
            bool loading, bool loadingMore, String query)
        blogs,
    required TResult Function(Option<Either<Failure, SearchItems>> searchItems,
            bool loading, bool loadingMore, String query)
        wallpapers,
  }) {
    return all(searchItems, loading, loadingMore, query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Either<Failure, SearchItems>> searchItems,
            bool loading, bool loadingMore, String query)?
        all,
    TResult Function(Option<Either<Failure, SearchItems>> searchItems,
            bool loading, bool loadingMore, String query)?
        audios,
    TResult Function(Option<Either<Failure, SearchItems>> searchItems,
            bool loading, bool loadingMore, String query)?
        blogs,
    TResult Function(Option<Either<Failure, SearchItems>> searchItems,
            bool loading, bool loadingMore, String query)?
        wallpapers,
    required TResult orElse(),
  }) {
    if (all != null) {
      return all(searchItems, loading, loadingMore, query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchStateAll value) all,
    required TResult Function(_SearchStateAudios value) audios,
    required TResult Function(_SearchStateBlogs value) blogs,
    required TResult Function(_SearchStateWallpapers value) wallpapers,
  }) {
    return all(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchStateAll value)? all,
    TResult Function(_SearchStateAudios value)? audios,
    TResult Function(_SearchStateBlogs value)? blogs,
    TResult Function(_SearchStateWallpapers value)? wallpapers,
    required TResult orElse(),
  }) {
    if (all != null) {
      return all(this);
    }
    return orElse();
  }
}

abstract class _SearchStateAll implements SearchState {
  const factory _SearchStateAll(
      {required Option<Either<Failure, SearchItems>> searchItems,
      required bool loading,
      required bool loadingMore,
      required String query}) = _$_SearchStateAll;

  @override
  Option<Either<Failure, SearchItems>> get searchItems =>
      throw _privateConstructorUsedError;
  @override
  bool get loading => throw _privateConstructorUsedError;
  @override
  bool get loadingMore => throw _privateConstructorUsedError;
  @override
  String get query => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SearchStateAllCopyWith<_SearchStateAll> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SearchStateAudiosCopyWith<$Res>
    implements $SearchStateCopyWith<$Res> {
  factory _$SearchStateAudiosCopyWith(
          _SearchStateAudios value, $Res Function(_SearchStateAudios) then) =
      __$SearchStateAudiosCopyWithImpl<$Res>;
  @override
  $Res call(
      {Option<Either<Failure, SearchItems>> searchItems,
      bool loading,
      bool loadingMore,
      String query});
}

/// @nodoc
class __$SearchStateAudiosCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res>
    implements _$SearchStateAudiosCopyWith<$Res> {
  __$SearchStateAudiosCopyWithImpl(
      _SearchStateAudios _value, $Res Function(_SearchStateAudios) _then)
      : super(_value, (v) => _then(v as _SearchStateAudios));

  @override
  _SearchStateAudios get _value => super._value as _SearchStateAudios;

  @override
  $Res call({
    Object? searchItems = freezed,
    Object? loading = freezed,
    Object? loadingMore = freezed,
    Object? query = freezed,
  }) {
    return _then(_SearchStateAudios(
      searchItems: searchItems == freezed
          ? _value.searchItems
          : searchItems // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, SearchItems>>,
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      loadingMore: loadingMore == freezed
          ? _value.loadingMore
          : loadingMore // ignore: cast_nullable_to_non_nullable
              as bool,
      query: query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_SearchStateAudios
    with DiagnosticableTreeMixin
    implements _SearchStateAudios {
  const _$_SearchStateAudios(
      {required this.searchItems,
      required this.loading,
      required this.loadingMore,
      required this.query});

  @override
  final Option<Either<Failure, SearchItems>> searchItems;
  @override
  final bool loading;
  @override
  final bool loadingMore;
  @override
  final String query;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchState.audios(searchItems: $searchItems, loading: $loading, loadingMore: $loadingMore, query: $query)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SearchState.audios'))
      ..add(DiagnosticsProperty('searchItems', searchItems))
      ..add(DiagnosticsProperty('loading', loading))
      ..add(DiagnosticsProperty('loadingMore', loadingMore))
      ..add(DiagnosticsProperty('query', query));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchStateAudios &&
            (identical(other.searchItems, searchItems) ||
                const DeepCollectionEquality()
                    .equals(other.searchItems, searchItems)) &&
            (identical(other.loading, loading) ||
                const DeepCollectionEquality()
                    .equals(other.loading, loading)) &&
            (identical(other.loadingMore, loadingMore) ||
                const DeepCollectionEquality()
                    .equals(other.loadingMore, loadingMore)) &&
            (identical(other.query, query) ||
                const DeepCollectionEquality().equals(other.query, query)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(searchItems) ^
      const DeepCollectionEquality().hash(loading) ^
      const DeepCollectionEquality().hash(loadingMore) ^
      const DeepCollectionEquality().hash(query);

  @JsonKey(ignore: true)
  @override
  _$SearchStateAudiosCopyWith<_SearchStateAudios> get copyWith =>
      __$SearchStateAudiosCopyWithImpl<_SearchStateAudios>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Either<Failure, SearchItems>> searchItems,
            bool loading, bool loadingMore, String query)
        all,
    required TResult Function(Option<Either<Failure, SearchItems>> searchItems,
            bool loading, bool loadingMore, String query)
        audios,
    required TResult Function(Option<Either<Failure, SearchItems>> searchItems,
            bool loading, bool loadingMore, String query)
        blogs,
    required TResult Function(Option<Either<Failure, SearchItems>> searchItems,
            bool loading, bool loadingMore, String query)
        wallpapers,
  }) {
    return audios(searchItems, loading, loadingMore, query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Either<Failure, SearchItems>> searchItems,
            bool loading, bool loadingMore, String query)?
        all,
    TResult Function(Option<Either<Failure, SearchItems>> searchItems,
            bool loading, bool loadingMore, String query)?
        audios,
    TResult Function(Option<Either<Failure, SearchItems>> searchItems,
            bool loading, bool loadingMore, String query)?
        blogs,
    TResult Function(Option<Either<Failure, SearchItems>> searchItems,
            bool loading, bool loadingMore, String query)?
        wallpapers,
    required TResult orElse(),
  }) {
    if (audios != null) {
      return audios(searchItems, loading, loadingMore, query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchStateAll value) all,
    required TResult Function(_SearchStateAudios value) audios,
    required TResult Function(_SearchStateBlogs value) blogs,
    required TResult Function(_SearchStateWallpapers value) wallpapers,
  }) {
    return audios(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchStateAll value)? all,
    TResult Function(_SearchStateAudios value)? audios,
    TResult Function(_SearchStateBlogs value)? blogs,
    TResult Function(_SearchStateWallpapers value)? wallpapers,
    required TResult orElse(),
  }) {
    if (audios != null) {
      return audios(this);
    }
    return orElse();
  }
}

abstract class _SearchStateAudios implements SearchState {
  const factory _SearchStateAudios(
      {required Option<Either<Failure, SearchItems>> searchItems,
      required bool loading,
      required bool loadingMore,
      required String query}) = _$_SearchStateAudios;

  @override
  Option<Either<Failure, SearchItems>> get searchItems =>
      throw _privateConstructorUsedError;
  @override
  bool get loading => throw _privateConstructorUsedError;
  @override
  bool get loadingMore => throw _privateConstructorUsedError;
  @override
  String get query => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SearchStateAudiosCopyWith<_SearchStateAudios> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SearchStateBlogsCopyWith<$Res>
    implements $SearchStateCopyWith<$Res> {
  factory _$SearchStateBlogsCopyWith(
          _SearchStateBlogs value, $Res Function(_SearchStateBlogs) then) =
      __$SearchStateBlogsCopyWithImpl<$Res>;
  @override
  $Res call(
      {Option<Either<Failure, SearchItems>> searchItems,
      bool loading,
      bool loadingMore,
      String query});
}

/// @nodoc
class __$SearchStateBlogsCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res>
    implements _$SearchStateBlogsCopyWith<$Res> {
  __$SearchStateBlogsCopyWithImpl(
      _SearchStateBlogs _value, $Res Function(_SearchStateBlogs) _then)
      : super(_value, (v) => _then(v as _SearchStateBlogs));

  @override
  _SearchStateBlogs get _value => super._value as _SearchStateBlogs;

  @override
  $Res call({
    Object? searchItems = freezed,
    Object? loading = freezed,
    Object? loadingMore = freezed,
    Object? query = freezed,
  }) {
    return _then(_SearchStateBlogs(
      searchItems: searchItems == freezed
          ? _value.searchItems
          : searchItems // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, SearchItems>>,
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      loadingMore: loadingMore == freezed
          ? _value.loadingMore
          : loadingMore // ignore: cast_nullable_to_non_nullable
              as bool,
      query: query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_SearchStateBlogs
    with DiagnosticableTreeMixin
    implements _SearchStateBlogs {
  const _$_SearchStateBlogs(
      {required this.searchItems,
      required this.loading,
      required this.loadingMore,
      required this.query});

  @override
  final Option<Either<Failure, SearchItems>> searchItems;
  @override
  final bool loading;
  @override
  final bool loadingMore;
  @override
  final String query;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchState.blogs(searchItems: $searchItems, loading: $loading, loadingMore: $loadingMore, query: $query)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SearchState.blogs'))
      ..add(DiagnosticsProperty('searchItems', searchItems))
      ..add(DiagnosticsProperty('loading', loading))
      ..add(DiagnosticsProperty('loadingMore', loadingMore))
      ..add(DiagnosticsProperty('query', query));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchStateBlogs &&
            (identical(other.searchItems, searchItems) ||
                const DeepCollectionEquality()
                    .equals(other.searchItems, searchItems)) &&
            (identical(other.loading, loading) ||
                const DeepCollectionEquality()
                    .equals(other.loading, loading)) &&
            (identical(other.loadingMore, loadingMore) ||
                const DeepCollectionEquality()
                    .equals(other.loadingMore, loadingMore)) &&
            (identical(other.query, query) ||
                const DeepCollectionEquality().equals(other.query, query)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(searchItems) ^
      const DeepCollectionEquality().hash(loading) ^
      const DeepCollectionEquality().hash(loadingMore) ^
      const DeepCollectionEquality().hash(query);

  @JsonKey(ignore: true)
  @override
  _$SearchStateBlogsCopyWith<_SearchStateBlogs> get copyWith =>
      __$SearchStateBlogsCopyWithImpl<_SearchStateBlogs>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Either<Failure, SearchItems>> searchItems,
            bool loading, bool loadingMore, String query)
        all,
    required TResult Function(Option<Either<Failure, SearchItems>> searchItems,
            bool loading, bool loadingMore, String query)
        audios,
    required TResult Function(Option<Either<Failure, SearchItems>> searchItems,
            bool loading, bool loadingMore, String query)
        blogs,
    required TResult Function(Option<Either<Failure, SearchItems>> searchItems,
            bool loading, bool loadingMore, String query)
        wallpapers,
  }) {
    return blogs(searchItems, loading, loadingMore, query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Either<Failure, SearchItems>> searchItems,
            bool loading, bool loadingMore, String query)?
        all,
    TResult Function(Option<Either<Failure, SearchItems>> searchItems,
            bool loading, bool loadingMore, String query)?
        audios,
    TResult Function(Option<Either<Failure, SearchItems>> searchItems,
            bool loading, bool loadingMore, String query)?
        blogs,
    TResult Function(Option<Either<Failure, SearchItems>> searchItems,
            bool loading, bool loadingMore, String query)?
        wallpapers,
    required TResult orElse(),
  }) {
    if (blogs != null) {
      return blogs(searchItems, loading, loadingMore, query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchStateAll value) all,
    required TResult Function(_SearchStateAudios value) audios,
    required TResult Function(_SearchStateBlogs value) blogs,
    required TResult Function(_SearchStateWallpapers value) wallpapers,
  }) {
    return blogs(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchStateAll value)? all,
    TResult Function(_SearchStateAudios value)? audios,
    TResult Function(_SearchStateBlogs value)? blogs,
    TResult Function(_SearchStateWallpapers value)? wallpapers,
    required TResult orElse(),
  }) {
    if (blogs != null) {
      return blogs(this);
    }
    return orElse();
  }
}

abstract class _SearchStateBlogs implements SearchState {
  const factory _SearchStateBlogs(
      {required Option<Either<Failure, SearchItems>> searchItems,
      required bool loading,
      required bool loadingMore,
      required String query}) = _$_SearchStateBlogs;

  @override
  Option<Either<Failure, SearchItems>> get searchItems =>
      throw _privateConstructorUsedError;
  @override
  bool get loading => throw _privateConstructorUsedError;
  @override
  bool get loadingMore => throw _privateConstructorUsedError;
  @override
  String get query => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SearchStateBlogsCopyWith<_SearchStateBlogs> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SearchStateWallpapersCopyWith<$Res>
    implements $SearchStateCopyWith<$Res> {
  factory _$SearchStateWallpapersCopyWith(_SearchStateWallpapers value,
          $Res Function(_SearchStateWallpapers) then) =
      __$SearchStateWallpapersCopyWithImpl<$Res>;
  @override
  $Res call(
      {Option<Either<Failure, SearchItems>> searchItems,
      bool loading,
      bool loadingMore,
      String query});
}

/// @nodoc
class __$SearchStateWallpapersCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res>
    implements _$SearchStateWallpapersCopyWith<$Res> {
  __$SearchStateWallpapersCopyWithImpl(_SearchStateWallpapers _value,
      $Res Function(_SearchStateWallpapers) _then)
      : super(_value, (v) => _then(v as _SearchStateWallpapers));

  @override
  _SearchStateWallpapers get _value => super._value as _SearchStateWallpapers;

  @override
  $Res call({
    Object? searchItems = freezed,
    Object? loading = freezed,
    Object? loadingMore = freezed,
    Object? query = freezed,
  }) {
    return _then(_SearchStateWallpapers(
      searchItems: searchItems == freezed
          ? _value.searchItems
          : searchItems // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, SearchItems>>,
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      loadingMore: loadingMore == freezed
          ? _value.loadingMore
          : loadingMore // ignore: cast_nullable_to_non_nullable
              as bool,
      query: query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_SearchStateWallpapers
    with DiagnosticableTreeMixin
    implements _SearchStateWallpapers {
  const _$_SearchStateWallpapers(
      {required this.searchItems,
      required this.loading,
      required this.loadingMore,
      required this.query});

  @override
  final Option<Either<Failure, SearchItems>> searchItems;
  @override
  final bool loading;
  @override
  final bool loadingMore;
  @override
  final String query;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchState.wallpapers(searchItems: $searchItems, loading: $loading, loadingMore: $loadingMore, query: $query)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SearchState.wallpapers'))
      ..add(DiagnosticsProperty('searchItems', searchItems))
      ..add(DiagnosticsProperty('loading', loading))
      ..add(DiagnosticsProperty('loadingMore', loadingMore))
      ..add(DiagnosticsProperty('query', query));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchStateWallpapers &&
            (identical(other.searchItems, searchItems) ||
                const DeepCollectionEquality()
                    .equals(other.searchItems, searchItems)) &&
            (identical(other.loading, loading) ||
                const DeepCollectionEquality()
                    .equals(other.loading, loading)) &&
            (identical(other.loadingMore, loadingMore) ||
                const DeepCollectionEquality()
                    .equals(other.loadingMore, loadingMore)) &&
            (identical(other.query, query) ||
                const DeepCollectionEquality().equals(other.query, query)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(searchItems) ^
      const DeepCollectionEquality().hash(loading) ^
      const DeepCollectionEquality().hash(loadingMore) ^
      const DeepCollectionEquality().hash(query);

  @JsonKey(ignore: true)
  @override
  _$SearchStateWallpapersCopyWith<_SearchStateWallpapers> get copyWith =>
      __$SearchStateWallpapersCopyWithImpl<_SearchStateWallpapers>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Either<Failure, SearchItems>> searchItems,
            bool loading, bool loadingMore, String query)
        all,
    required TResult Function(Option<Either<Failure, SearchItems>> searchItems,
            bool loading, bool loadingMore, String query)
        audios,
    required TResult Function(Option<Either<Failure, SearchItems>> searchItems,
            bool loading, bool loadingMore, String query)
        blogs,
    required TResult Function(Option<Either<Failure, SearchItems>> searchItems,
            bool loading, bool loadingMore, String query)
        wallpapers,
  }) {
    return wallpapers(searchItems, loading, loadingMore, query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Either<Failure, SearchItems>> searchItems,
            bool loading, bool loadingMore, String query)?
        all,
    TResult Function(Option<Either<Failure, SearchItems>> searchItems,
            bool loading, bool loadingMore, String query)?
        audios,
    TResult Function(Option<Either<Failure, SearchItems>> searchItems,
            bool loading, bool loadingMore, String query)?
        blogs,
    TResult Function(Option<Either<Failure, SearchItems>> searchItems,
            bool loading, bool loadingMore, String query)?
        wallpapers,
    required TResult orElse(),
  }) {
    if (wallpapers != null) {
      return wallpapers(searchItems, loading, loadingMore, query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchStateAll value) all,
    required TResult Function(_SearchStateAudios value) audios,
    required TResult Function(_SearchStateBlogs value) blogs,
    required TResult Function(_SearchStateWallpapers value) wallpapers,
  }) {
    return wallpapers(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchStateAll value)? all,
    TResult Function(_SearchStateAudios value)? audios,
    TResult Function(_SearchStateBlogs value)? blogs,
    TResult Function(_SearchStateWallpapers value)? wallpapers,
    required TResult orElse(),
  }) {
    if (wallpapers != null) {
      return wallpapers(this);
    }
    return orElse();
  }
}

abstract class _SearchStateWallpapers implements SearchState {
  const factory _SearchStateWallpapers(
      {required Option<Either<Failure, SearchItems>> searchItems,
      required bool loading,
      required bool loadingMore,
      required String query}) = _$_SearchStateWallpapers;

  @override
  Option<Either<Failure, SearchItems>> get searchItems =>
      throw _privateConstructorUsedError;
  @override
  bool get loading => throw _privateConstructorUsedError;
  @override
  bool get loadingMore => throw _privateConstructorUsedError;
  @override
  String get query => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SearchStateWallpapersCopyWith<_SearchStateWallpapers> get copyWith =>
      throw _privateConstructorUsedError;
}
