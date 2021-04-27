import 'package:dartz/dartz.dart';
import 'package:tattva/domain/core/tattva_items_model.dart';
import 'package:tattva/domain/failure.dart';

abstract class IHomeItemsFacade {
  Future<Either<Failure, TattvaItemsModel>> getAllItems(
    String token,
  );
}
