import 'package:dartz/dartz.dart';
import 'package:tattva/domain/failure.dart';

abstract class IFeedbackFacade {
  Future<Either<Failure, Unit>> sendFeedback({
    required String token,
    required String feedback,
  });
}
