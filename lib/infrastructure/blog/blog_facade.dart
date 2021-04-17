import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:tattva/domain/blog/blog_data_model.dart';
import 'package:dartz/dartz.dart';
import 'package:tattva/domain/blog/i_blog_facade.dart';
import 'package:tattva/domain/failure.dart';

@LazySingleton(as: IBlogFacade)
class BlogFacade implements IBlogFacade {
  final Dio _dio;

  BlogFacade(this._dio);

  @override
  Future<Either<Failure, BlogDataModel>> getAllBlogs(
      {required String token, String? startAfter}) async {
    try {
      final response = await _dio.get(
        '/getAllBlogs',
        queryParameters: {
          'token': token,
          if (startAfter != null) 'startAfter': startAfter,
        },
      );
      final data = Map<String, dynamic>.from(jsonDecode(response.data));
      debugPrint('blogs data $data');

      return right(BlogDataModel.fromJson(data));
    } on DioError catch (e) {
      debugPrint('ERR_CODE ${e.error}');
      debugPrint(e.message);

      return left(Failure.serverError());
    }
  }

  @override
  Future<Either<Failure, BlogDataModel>> getBlogCategories(String token) async {
    try {
      final response = await _dio.get(
        '/getBlogCategories',
        queryParameters: {
          'token': token,
        },
      );
      final data = Map<String, dynamic>.from(jsonDecode(response.data));

      return right(BlogDataModel.fromJson(data));
    } on DioError catch (e) {
      debugPrint('ERR_CODE ${e.error}');
      debugPrint(e.message);

      return left(Failure.serverError());
    }
  }

  @override
  Future<Either<Failure, BlogDataModel>> getBlogsFromCategory(
      {required String token,
      required String categoryId,
      String? startAfter}) async {
    try {
      final response = await _dio.get(
        '/getBlogsFromCategory',
        queryParameters: {
          'token': token,
          'id': categoryId,
          if (startAfter != null) 'startAfter': startAfter,
        },
      );
      final data = Map<String, dynamic>.from(jsonDecode(response.data));
      debugPrint('blogs data $data');

      return right(BlogDataModel.fromJson(data));
    } on DioError catch (e) {
      debugPrint('ERR_CODE ${e.error}');
      debugPrint(e.message);

      return left(Failure.serverError());
    }
  }

  @override
  Future<Either<Failure, Unit>> likeDislikeBlog(
      String token, String blogId, bool liked) async {
    try {
      final response = await _dio.get(
        '/likeDislikeBlog',
        queryParameters: {
          'token': token,
          'itemId': blogId,
          'liked': liked,
        },
      );
      final data = Map<String, dynamic>.from(jsonDecode(response.data));
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
}
