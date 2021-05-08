import 'package:freezed_annotation/freezed_annotation.dart';

part 'subscription.freezed.dart';
part 'subscription.g.dart';

@freezed
class Subscription with _$Subscription {
  const factory Subscription({
    required String id,
    required String name,
    required String description,
    required int amount,
  }) = _Subscription;

  factory Subscription.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionFromJson(json);
}
