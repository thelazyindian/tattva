part of 'blog_bloc.dart';

@freezed
class BlogState with _$BlogState {
  const factory BlogState({
    required Option<Either<Failure, List<BlogCategory>>> blogCategoriesOption,
    required Option<BlogCategory> selectedCategory,
    required bool categoryLoading,
    required bool loadingMore,
    required Option<Failure> categoryError,
    required List<String> likedBlogs,
  }) = _BlogState;

  factory BlogState.initial() => _BlogState(
        blogCategoriesOption: none(),
        selectedCategory: none(),
        categoryLoading: false,
        loadingMore: false,
        categoryError: none(),
        likedBlogs: [],
      );
}
