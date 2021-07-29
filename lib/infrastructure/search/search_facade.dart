import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:tattva/domain/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:tattva/domain/search/i_search_facade.dart';
import 'package:tattva/domain/search/search_items.dart';
import 'package:tattva/utils/api_routes.dart';

@LazySingleton(as: ISearchFacade)
class SearchFacade implements ISearchFacade {
  final Dio _dio;

  SearchFacade(this._dio);

  @override
  Future<Either<Failure, SearchItems>> getSearchItems({
    required String token,
    required String query,
    required int page,
    String? type,
  }) async {
    try {
      final response = await _dio.get(
        ApiRoutes.search,
        queryParameters: {
          'token': token,
          'q': query,
          'page': page,
          if (type != null) 'type': type,
        },
      );
      final data = Map<String, dynamic>.from(response.data);
      return right(SearchItems.fromJson(data));
    } on DioError catch (e) {
      debugPrint('ERROR: $e');
      return left(Failure.serverError());
    }
  }
}
