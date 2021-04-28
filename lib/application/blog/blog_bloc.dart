import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tattva/application/liked_items/liked_items_bloc.dart';
import 'package:tattva/domain/authentication/i_auth_facade.dart';
import 'package:tattva/domain/blog/blog.dart';
import 'package:tattva/domain/blog/blog_category.dart';
import 'package:tattva/domain/blog/blog_data_model.dart';
import 'package:tattva/domain/blog/i_blog_facade.dart';
import 'package:tattva/domain/failure.dart';
import 'package:tattva/injection.dart';

part 'blog_event.dart';
part 'blog_state.dart';
part 'blog_bloc.freezed.dart';

@lazySingleton
class BlogBloc extends Bloc<BlogEvent, BlogState> {
  final IBlogFacade _blogFacade;

  BlogBloc(this._blogFacade) : super(BlogState.initial());

  @override
  Stream<BlogState> mapEventToState(
    BlogEvent event,
  ) async* {
    yield* event.map(
      started: (e) async* {
        yield BlogState.initial();
        final token = await getIt<IAuthFacade>().currentUser!.getIdToken();
        final response = await _blogFacade.getBlogCategories(token);

        yield* response.fold(
          (failure) async* {
            yield state.copyWith(blogCategoriesOption: optionOf(left(failure)));
          },
          (success) async* {
            final List<BlogCategory> allblogCategories = [
              BlogCategory(
                id: 'all',
                name: 'All',
                blogs: success.blogs,
              ),
            ];
            allblogCategories.addAll(success.categories!);

            yield state.copyWith(
              blogCategoriesOption: optionOf(right(allblogCategories)),
              selectedCategory: optionOf(allblogCategories.first),
              likedBlogs: success.likedBlogs,
            );
          },
        );
      },
      selectedCategory: (e) async* {
        final categories = List<BlogCategory>.from(state.blogCategoriesOption
            .fold(() => [], (sOrF) => sOrF.fold((l) => [], (r) => r)));
        final categoryIdx =
            categories.indexWhere((element) => element.id == e.id);
        if (categoryIdx >= 0) {
          final currentCategory = categories[categoryIdx];
          if (currentCategory.blogs.isEmpty) {
            yield state.copyWith(
              categoryLoading: true,
              categoryError: none(),
              selectedCategory: optionOf(currentCategory),
            );

            final token = await getIt<IAuthFacade>().currentUser!.getIdToken();
            final response = await _blogFacade.getBlogsFromCategory(
              token: token,
              categoryId: e.id,
            );
            yield* response.fold(
              (failure) async* {
                yield state.copyWith(
                  categoryLoading: false,
                  categoryError: optionOf(failure),
                );
              },
              (success) async* {
                categories[categoryIdx] =
                    currentCategory.copyWith(blogs: success.blogs);
                final likedBlogs = List<String>.from(state.likedBlogs);
                likedBlogs.addAll(success.likedBlogs);

                yield state.copyWith(
                  categoryLoading: false,
                  blogCategoriesOption: optionOf(right(categories)),
                  selectedCategory: optionOf(categories[categoryIdx]),
                  likedBlogs: likedBlogs,
                );
              },
            );
          } else {
            yield state.copyWith(
              categoryError: none(),
              selectedCategory: optionOf(currentCategory),
            );
          }
        }
      },
      selectedCategoryLoadMore: (e) async* {
        final categories = List<BlogCategory>.from(state.blogCategoriesOption
            .fold(() => [], (sOrF) => sOrF.fold((l) => [], (r) => r)));
        final categoryIdx =
            categories.indexWhere((element) => element.id == e.id);
        if (categoryIdx >= 0) {
          final selectedCategory = categories[categoryIdx];
          if (!selectedCategory.completelyFetched) {
            yield state.copyWith(loadingMore: true);

            final token = await getIt<IAuthFacade>().currentUser!.getIdToken();
            final Either<Failure, BlogDataModel> response;
            if (selectedCategory.id == 'all') {
              response = await _blogFacade.getAllBlogs(
                token: token,
                startAfter: selectedCategory.blogs.last.id,
              );
            } else {
              response = await _blogFacade.getBlogsFromCategory(
                token: token,
                categoryId: e.id,
                startAfter: selectedCategory.blogs.last.id,
              );
            }

            yield* response.fold(
              (failure) async* {
                yield state.copyWith(loadingMore: false);
              },
              (success) async* {
                if (success.blogs.isEmpty) {
                  categories[categoryIdx] =
                      selectedCategory.copyWith(completelyFetched: true);
                  yield state.copyWith(
                    loadingMore: false,
                    blogCategoriesOption: optionOf(right(categories)),
                    selectedCategory: optionOf(categories[categoryIdx]),
                  );
                } else {
                  final blogs = List<Blog>.from(selectedCategory.blogs);
                  blogs.addAll(success.blogs);
                  categories[categoryIdx] =
                      selectedCategory.copyWith(blogs: blogs);
                  final likedBlogs = List<String>.from(state.likedBlogs);
                  likedBlogs.addAll(success.likedBlogs);

                  yield state.copyWith(
                    loadingMore: false,
                    blogCategoriesOption: optionOf(right(categories)),
                    selectedCategory: optionOf(categories[categoryIdx]),
                    likedBlogs: likedBlogs,
                  );
                }
              },
            );
          }
        }
      },
      likedBlog: (e) async* {
        final token = await getIt<IAuthFacade>().currentUser!.getIdToken();
        _blogFacade
            .likeDislikeBlog(token, e.id, true)
            .then((value) => value.fold((l) {
                  final likedBlogs = List<String>.from(state.likedBlogs);
                  likedBlogs.removeWhere((element) => element == e.id);
                  add(BlogEvent.updateLikedBlogs(blogIds: likedBlogs));
                }, (r) => null));
        final likedBlogs = List<String>.from(state.likedBlogs);
        likedBlogs.add(e.id);
        add(BlogEvent.updateLikedBlogs(blogIds: likedBlogs));
      },
      dislikedBlog: (e) async* {
        final token = await getIt<IAuthFacade>().currentUser!.getIdToken();
        _blogFacade
            .likeDislikeBlog(token, e.id, false)
            .then((value) => value.fold((l) {
                  final likedBlogs = List<String>.from(state.likedBlogs);
                  likedBlogs.add(e.id);
                  add(BlogEvent.updateLikedBlogs(blogIds: likedBlogs));
                  getIt<LikedItemsBloc>()
                      .add(LikedItemsEvent.restoredBlogs(id: e.id));
                }, (r) => null));
        final likedBlogs = List<String>.from(state.likedBlogs);
        likedBlogs.remove(e.id);
        add(BlogEvent.updateLikedBlogs(blogIds: likedBlogs));
        getIt<LikedItemsBloc>().add(LikedItemsEvent.dislikedBlogs(id: e.id));
      },
      updateLikedBlogs: (e) async* {
        yield state.copyWith(likedBlogs: e.blogIds);
      },
      readBlog: (e) async* {
        if (e.blogReaderTabType == BlogReaderTabType.likedItems) {
          yield* getIt<LikedItemsBloc>().state.likedItemsOption.fold(
                () async* {},
                (sOrF) => sOrF.fold(
                  (l) async* {},
                  (likedItems) async* {
                    yield state.copyWith(
                      readerLoading: true,
                      readerOption: none(),
                    );

                    final blogs = List<Blog>.from(likedItems.likedBlogs);
                    final blogIdx =
                        blogs.indexWhere((element) => element.id == e.id);
                    if (blogIdx >= 0) {
                      if (blogs[blogIdx].content != null) {
                        yield state.copyWith(
                          readerLoading: false,
                          readerOption:
                              optionOf(right(blogs[blogIdx].content!)),
                        );
                      } else {
                        final token = await getIt<IAuthFacade>()
                            .currentUser!
                            .getIdToken();

                        final responseSorF = await _blogFacade.getBlogContent(
                          token,
                          e.id,
                        );

                        yield* responseSorF.fold(
                          (failure) async* {
                            yield state.copyWith(
                              readerLoading: false,
                              readerOption: optionOf(left(failure)),
                            );
                          },
                          (success) async* {
                            blogs[blogIdx] =
                                blogs[blogIdx].copyWith(content: success);

                            yield state.copyWith(
                              readerLoading: false,
                              readerOption:
                                  optionOf(right(blogs[blogIdx].content!)),
                            );

                            getIt<LikedItemsBloc>().add(
                              LikedItemsEvent.updatedLikedItemsList(
                                  data: likedItems.copyWith(likedBlogs: blogs)),
                            );
                          },
                        );
                      }
                    }
                  },
                ),
              );
        } else if (e.blogReaderTabType == BlogReaderTabType.homeItems ||
            e.blogReaderTabType == BlogReaderTabType.searchItems) {
          yield state.copyWith(
            readerLoading: true,
            readerOption: none(),
          );

          final token = await getIt<IAuthFacade>().currentUser!.getIdToken();
          final responseSorF = await _blogFacade.getBlogContent(
            token,
            e.id,
          );

          yield* responseSorF.fold(
            (failure) async* {
              yield state.copyWith(
                readerLoading: false,
                readerOption: optionOf(left(failure)),
              );
            },
            (success) async* {
              yield state.copyWith(
                readerLoading: false,
                readerOption: optionOf(right(success)),
              );
            },
          );
        } else {
          yield* state.selectedCategory.fold(
            () async* {},
            (selectedCategory) async* {
              yield state.copyWith(
                readerLoading: true,
                readerOption: none(),
              );

              final blogIdx = selectedCategory.blogs
                  .indexWhere((element) => element.id == e.id);
              if (blogIdx >= 0) {
                if (selectedCategory.blogs[blogIdx].content != null) {
                  yield state.copyWith(
                    readerLoading: false,
                    readerOption: optionOf(
                        right(selectedCategory.blogs[blogIdx].content!)),
                  );
                } else {
                  final token =
                      await getIt<IAuthFacade>().currentUser!.getIdToken();

                  final responseSorF = await _blogFacade.getBlogContent(
                    token,
                    e.id,
                  );

                  yield* responseSorF.fold(
                    (failure) async* {
                      yield state.copyWith(
                        readerLoading: false,
                        readerOption: optionOf(left(failure)),
                      );
                    },
                    (success) async* {
                      final blogs = List<Blog>.from(selectedCategory.blogs);
                      blogs[blogIdx] =
                          blogs[blogIdx].copyWith(content: success);
                      final updatedCategory =
                          selectedCategory.copyWith(blogs: blogs);
                      final blogCategories = List<BlogCategory>.from(
                          state.blogCategoriesOption.fold(() => [],
                              (sOrF) => sOrF.fold((l) => [], (r) => r)));
                      final blogCategoryIdx = blogCategories.indexWhere(
                          (element) => element.id == selectedCategory.id);
                      if (blogCategoryIdx >= 0) {
                        blogCategories[blogCategoryIdx] = updatedCategory;
                      }

                      yield state.copyWith(
                        readerLoading: false,
                        readerOption: optionOf(right(blogs[blogIdx].content!)),
                        blogCategoriesOption: optionOf(right(blogCategories)),
                        selectedCategory: optionOf(updatedCategory),
                      );
                    },
                  );
                }
              }
            },
          );
        }
      },
    );
  }
}
