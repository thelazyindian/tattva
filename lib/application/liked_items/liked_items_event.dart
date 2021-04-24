part of 'liked_items_bloc.dart';

@freezed
class LikedItemsEvent with _$LikedItemsEvent {
  const factory LikedItemsEvent.started() = _Started;
  const factory LikedItemsEvent.loadMoreAudios({required String id}) =
      _LoadMoreAudios;
  const factory LikedItemsEvent.loadMoreBlogs({required String id}) =
      _LoadMoreBlogs;
  const factory LikedItemsEvent.loadMoreWallpapers({required String id}) =
      _LoadMoreWallpapers;
  const factory LikedItemsEvent.dislikedAudios({required String id}) =
      _DislikedAudios;
  const factory LikedItemsEvent.dislikedBlogs({required String id}) =
      _DislikedBlogs;
  const factory LikedItemsEvent.dislikedWallpapers({required String id}) =
      _DislikedWallpapers;
  const factory LikedItemsEvent.restoredAudios({required String id}) =
      _RestoredAudios;
  const factory LikedItemsEvent.restoredBlogs({required String id}) =
      _RestoredBlogs;
  const factory LikedItemsEvent.restoredWallpapers({required String id}) =
      _RestoredWallpapers;
  const factory LikedItemsEvent.updatedLikedItemsList(
      {required LikedItemsDataModel data}) = _UpdatedLikedItemsList;
}
