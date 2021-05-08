// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Subscription _$_$_SubscriptionFromJson(Map<String, dynamic> json) {
  return _$_Subscription(
    id: json['id'] as String,
    name: json['name'] as String,
    description: json['description'] as String,
    amount: json['amount'] as int,
  );
}

Map<String, dynamic> _$_$_SubscriptionToJson(_$_Subscription instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'amount': instance.amount,
    };
