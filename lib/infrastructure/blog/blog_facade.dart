import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:tattva/domain/blog/blog_data_model.dart';
import 'package:tattva/domain/blog/i_blog_facade.dart';
import 'package:tattva/domain/failure.dart';
import 'package:tattva/utils/api_routes.dart';

@LazySingleton(as: IBlogFacade)
class BlogFacade implements IBlogFacade {
  final Dio _dio;

  BlogFacade(this._dio);

  @override
  Future<Either<Failure, BlogDataModel>> getAllBlogs({
    required String token,
    String? startAfter,
  }) async {
    try {
      final response = await _dio.get(
        ApiRoutes.blogAll,
        queryParameters: {
          'token': token,
          if (startAfter != null) 'startAfter': startAfter,
        },
      );
      final data = Map<String, dynamic>.from(response.data);
      debugPrint('blogs data $data');

      return right(BlogDataModel.fromJson(data));
    } on DioError catch (e) {
      debugPrint('ERR_CODE ${e.error}');
      debugPrint(e.message);

      return left(Failure.serverError());
    }
  }

  @override
  Future<Either<Failure, BlogDataModel>> getBlogCategories(
      {required String token}) async {
    try {
      final response = await _dio.get(
        ApiRoutes.blogCategories,
        queryParameters: {
          'token': token,
        },
      );
      final data = Map<String, dynamic>.from(response.data);

      return right(BlogDataModel.fromJson(data));
    } on DioError catch (e) {
      debugPrint('ERR_CODE ${e.error}');
      debugPrint(e.message);

      return left(Failure.serverError());
    }
  }

  @override
  Future<Either<Failure, BlogDataModel>> getBlogsFromCategory({
    required String token,
    required String categoryId,
    String? startAfter,
  }) async {
    try {
      debugPrint('getBlogsFromCategory: $categoryId');
      final response = await _dio.get(
        ApiRoutes.blogCategory,
        queryParameters: {
          'token': token,
          'id': categoryId,
          if (startAfter != null) 'startAfter': startAfter,
        },
      );
      final data = Map<String, dynamic>.from(response.data);
      debugPrint('blogs data $data');

      return right(BlogDataModel.fromJson(data));
    } on DioError catch (e) {
      debugPrint('ERR_CODE ${e.error}');
      debugPrint(e.message);

      return left(Failure.serverError());
    }
  }

  @override
  Future<Either<Failure, Unit>> likeDislikeBlog({
    required String token,
    required String blogId,
    required bool liked,
  }) async {
    try {
      final response = await _dio.get(
        ApiRoutes.blogLike,
        queryParameters: {
          'token': token,
          'itemId': blogId,
          'liked': liked,
        },
      );
      final data = Map<String, dynamic>.from(response.data);
      debugPrint('likeDislikeBlog $data');
      if (data.containsKey('success') && (data['success'] as bool)) {
        return right(unit);
      } else {
        return left(Failure.serverError());
      }
    } on DioError catch (e) {
      debugPrint('likeDislikeBlog ERR_CODE ${e.response}');
      debugPrint(e.message);

      return left(Failure.serverError());
    }
  }

  @override
  Future<Either<Failure, String>> getBlogContent({
    required String token,
    required String blogId,
  }) async {
    try {
      final response = await _dio.get(
        ApiRoutes.blogContent,
        queryParameters: {
          'token': token,
          'id': blogId,
        },
      );
      final data = Map<String, dynamic>.from(response.data);
      debugPrint(data.toString());
      return right(data['content']);
    } on DioError catch (e) {
      debugPrint('likeDislikeBlog ERR_CODE ${e.response}');
      debugPrint(e.message);

      return left(Failure.serverError());
    }
  }

  @override
  Future<Either<Failure, BlogDataModel>> getBlogFromId({
    required String token,
    required String blogId,
  }) async {
    try {
      final response = await _dio.get(
        ApiRoutes.blog,
        queryParameters: {
          'token': token,
          'id': blogId,
        },
      );
      final data = Map<String, dynamic>.from(response.data);
      debugPrint(data.toString());
      return right(BlogDataModel.fromJson(data));
    } on DioError catch (e) {
      debugPrint('likeDislikeBlog ERR_CODE ${e.response}');
      debugPrint(e.message);

      return left(Failure.serverError());
    }
  }
}
