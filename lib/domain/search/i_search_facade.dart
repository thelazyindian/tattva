import 'package:dartz/dartz.dart';
import 'package:tattva/domain/failure.dart';
import 'package:tattva/domain/search/search_items.dart';

abstract class ISearchFacade {
  Future<Either<Failure, SearchItems>> getSearchItems({
    required String token,
    required String query,
    required int page,
    String? type,
  });
}
