import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tattva/domain/authentication/i_auth_facade.dart';
import 'package:tattva/domain/blog/blog.dart';
import 'package:tattva/domain/core/tattva_audio.dart';
import 'package:tattva/domain/failure.dart';
import 'package:tattva/domain/search/i_search_facade.dart';
import 'package:tattva/domain/search/search_items.dart';
import 'package:tattva/domain/wallpaper/wallpaper.dart';
import 'package:tattva/injection.dart';

part 'search_bloc.freezed.dart';
part 'search_event.dart';
part 'search_state.dart';

@lazySingleton
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final ISearchFacade _searchFacade;

  SearchBloc(this._searchFacade) : super(SearchState.initial());

  Timer? timer;

  @override
  Stream<SearchState> mapEventToState(
    SearchEvent event,
  ) async* {
    yield* event.map(
      onQueryChanged: (e) async* {
        yield state.copyWith(query: e.value);
        timer?.cancel();
        timer =
            Timer(Duration(milliseconds: 350), () => add(SearchEvent.search()));
      },
      search: (e) async* {
        yield state.copyWith(loading: true);
        debugPrint(state.toString());
        final token = await getIt<IAuthFacade>().currentUser!.getIdToken();
        final response = await _searchFacade.getSearchItems(
          token: token,
          query: state.query,
          page: 0,
          type: state.map(
            all: (_) => null,
            audios: (_) => 'audio',
            blogs: (_) => 'blog',
            wallpapers: (_) => 'wallpaper',
          ),
        );

        yield state.copyWith(
          loading: false,
          searchItems: optionOf(response),
        );
      },
      cancel: (e) async* {
        yield state.copyWith(
          query: '',
          loading: false,
          loadingMore: false,
          searchItems: none(),
        );
      },
      loadMore: (e) async* {
        yield* state.searchItems.fold(
          () async* {},
          (sOrF) => sOrF.fold(
            (l) async* {},
            (searchItems) async* {
              if (searchItems.page + 1 != searchItems.nbPages) {
                yield state.copyWith(loadingMore: true);

                final token =
                    await getIt<IAuthFacade>().currentUser!.getIdToken();
                final response = await _searchFacade.getSearchItems(
                  token: token,
                  query: state.query,
                  page: searchItems.page + 1,
                  type: state.map(
                    all: (_) => null,
                    audios: (_) => 'audio',
                    blogs: (_) => 'blog',
                    wallpapers: (_) => 'wallpaper',
                  ),
                );

                yield* response.fold(
                  (l) async* {
                    yield state.copyWith(
                      loadingMore: false,
                      searchItems: optionOf(response),
                    );
                  },
                  (success) async* {
                    final audios = List<TattvaAudio>.from(searchItems.audios);
                    audios.addAll(success.audios);
                    final blogs = List<Blog>.from(searchItems.blogs);
                    blogs.addAll(success.blogs);
                    final wallpapers =
                        List<Wallpaper>.from(searchItems.wallpapers);
                    wallpapers.addAll(success.wallpapers);

                    yield state.copyWith(
                      loadingMore: false,
                      searchItems: optionOf(right(success.copyWith(
                        audios: audios,
                        blogs: blogs,
                        wallpapers: wallpapers,
                      ))),
                    );
                  },
                );
              }
            },
          ),
        );
      },
      changedTab: (e) async* {
        if (e.index == 0) {
          yield SearchState.all(
            searchItems: none(),
            loading: false,
            loadingMore: false,
            query: state.query,
          );
        } else if (e.index == 1) {
          yield SearchState.audios(
            searchItems: none(),
            loading: false,
            loadingMore: false,
            query: state.query,
          );
        } else if (e.index == 2) {
          yield SearchState.blogs(
            searchItems: none(),
            loading: false,
            loadingMore: false,
            query: state.query,
          );
        } else {
          yield SearchState.wallpapers(
            searchItems: none(),
            loading: false,
            loadingMore: false,
            query: state.query,
          );
        }
        if (state.query.isNotEmpty) {
          add(SearchEvent.search());
        }
      },
    );
  }
}
