import 'package:dartz/dartz.dart';
import 'package:tattva/domain/failure.dart';
import 'package:tattva/domain/subscriptions/subscription.dart';

abstract class ISubscriptionsFacade {
  Future<Either<Failure, List<Subscription>>> getSubscriptionItems(
      {required String token});
  Future<Either<Failure, String>> createSubscriptionItem({
    required String token,
    required String planId,
  });
}
