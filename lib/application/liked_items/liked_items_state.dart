part of 'liked_items_bloc.dart';

@freezed
class LikedItemsState with _$LikedItemsState {
  const factory LikedItemsState({
    required Option<Either<Failure, LikedItemsDataModel>> likedItemsOption,
    required Option<CachedLikedItemsDataModel> cachedLikedItemsOption,
    required bool loadingMore,
    required bool completelyFetchedWallpapers,
    required bool completelyFetchedBlogs,
    required bool completelyFetchedAudios,
  }) = _LikedItemsState;

  factory LikedItemsState.initial() => _LikedItemsState(
        likedItemsOption: none(),
        cachedLikedItemsOption: none(),
        loadingMore: false,
        completelyFetchedWallpapers: false,
        completelyFetchedBlogs: false,
        completelyFetchedAudios: false,
      );
}
