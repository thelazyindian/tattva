import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tattva/domain/blog/blog_category.dart';
import 'package:tattva/domain/blog/i_blog_facade.dart';
import 'package:tattva/domain/failure.dart';

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
      started: (e) async* {},
      selectedCategory: (e) async* {},
      likedBlog: (e) async* {},
      dislikedBlog: (e) async* {},
      updateLikedBlogs: (e) async* {},
    );
  }
}
