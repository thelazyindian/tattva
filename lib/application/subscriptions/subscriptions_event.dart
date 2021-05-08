part of 'subscriptions_bloc.dart';

@freezed
class SubscriptionsEvent with _$SubscriptionsEvent {
  const factory SubscriptionsEvent.started() = _Started;
  const factory SubscriptionsEvent.selectedSubscription({required String id}) =
      _SelectedSubscription;
  const factory SubscriptionsEvent.paymentSuccess() = _PaymentSuccess;
  const factory SubscriptionsEvent.paymentFailure() = _PaymentFailure;
  const factory SubscriptionsEvent.subscribe() = _Subscribe;
}
