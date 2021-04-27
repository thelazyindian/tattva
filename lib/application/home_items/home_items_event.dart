part of 'home_items_bloc.dart';

@freezed
class HomeItemsEvent with _$HomeItemsEvent {
  const factory HomeItemsEvent.started() = _Started;
  const factory HomeItemsEvent.likedAudios({required String id}) = _LikedAudios;
  const factory HomeItemsEvent.likedBlogs({required String id}) = _LikedBlogs;
  const factory HomeItemsEvent.likedWallpapers({required String id}) =
      _LikedWallpapers;
  const factory HomeItemsEvent.dislikedAudios({required String id}) =
      _DislikedAudios;
  const factory HomeItemsEvent.dislikedBlogs({required String id}) =
      _DislikedBlogs;
  const factory HomeItemsEvent.dislikedWallpapers({required String id}) =
      _DislikedWallpapers;
  const factory HomeItemsEvent.updatedTattvaItems(
      {required TattvaItemsModel data}) = _UpdatedTattvaItems;
}
