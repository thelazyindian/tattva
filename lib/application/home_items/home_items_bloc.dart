import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tattva/domain/authentication/i_auth_facade.dart';
import 'package:tattva/domain/core/tattva_items_model.dart';
import 'package:tattva/domain/failure.dart';
import 'package:tattva/domain/home_items/i_home_items_facade.dart';
import 'package:tattva/injection.dart';

part 'home_items_event.dart';
part 'home_items_state.dart';
part 'home_items_bloc.freezed.dart';

@lazySingleton
class HomeItemsBloc extends Bloc<HomeItemsEvent, HomeItemsState> {
  final IHomeItemsFacade _homeItemsFacade;

  HomeItemsBloc(this._homeItemsFacade) : super(HomeItemsState.initial());

  @override
  Stream<HomeItemsState> mapEventToState(
    HomeItemsEvent event,
  ) async* {
    yield* event.map(
      started: (e) async* {
        yield HomeItemsState.initial();
        final token = await getIt<IAuthFacade>().currentUser!.getIdToken();
        final response = await _homeItemsFacade.getAllItems(token);

        yield state.copyWith(
          tattvaItemsOption: optionOf(response),
        );
      },
      likedAudios: (e) async* {},
      likedBlogs: (e) async* {},
      likedWallpapers: (e) async* {},
      dislikedAudios: (e) async* {},
      dislikedBlogs: (e) async* {},
      dislikedWallpapers: (e) async* {},
      updatedTattvaItems: (e) async* {},
    );
  }
}
