part of 'blog_bloc.dart';

enum BlogReaderTabType { blogs, likedItems, homeItems, searchItems, fromUrl }

@freezed
class BlogEvent with _$BlogEvent {
  const factory BlogEvent.started() = _Started;
  const factory BlogEvent.selectedCategory({required String id}) =
      _SelectedCategory;
  const factory BlogEvent.selectedCategoryLoadMore({required String id}) =
      _SelectedCategoryLoadMore;
  const factory BlogEvent.likedBlog({required String id}) = _LikedBlog;

  const factory BlogEvent.readBlog({
    required BlogReaderTabType blogReaderTabType,
    required Blog blog,
  }) = _ReadBlog;
  const factory BlogEvent.dislikedBlog({required String id}) = _DislikedBlog;
  const factory BlogEvent.updateLikedBlogs({required List<String> blogIds}) =
      _UpdateLikedBlogs;
}
