part of 'subscriptions_bloc.dart';

@freezed
class SubscriptionsState with _$SubscriptionsState {
  const factory SubscriptionsState({
    required Option<Either<Failure, List<Subscription>>> subscriptionsOption,
    required String activeSubscriptionId,
    required bool subscribing,
  }) = _SubscriptionsState;

  factory SubscriptionsState.initial() => _SubscriptionsState(
        subscriptionsOption: none(),
        activeSubscriptionId: '',
        subscribing: false,
      );
}
