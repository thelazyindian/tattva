part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState.all({
    required Option<Either<Failure, SearchItems>> searchItems,
    required bool loading,
    required bool loadingMore,
    required String query,
  }) = _SearchStateAll;
  const factory SearchState.audios({
    required Option<Either<Failure, SearchItems>> searchItems,
    required bool loading,
    required bool loadingMore,
    required String query,
  }) = _SearchStateAudios;
  const factory SearchState.blogs({
    required Option<Either<Failure, SearchItems>> searchItems,
    required bool loading,
    required bool loadingMore,
    required String query,
  }) = _SearchStateBlogs;
  const factory SearchState.wallpapers({
    required Option<Either<Failure, SearchItems>> searchItems,
    required bool loading,
    required bool loadingMore,
    required String query,
  }) = _SearchStateWallpapers;

  factory SearchState.initial() => SearchState.all(
        searchItems: none(),
        loading: false,
        loadingMore: false,
        query: '',
      );
}
