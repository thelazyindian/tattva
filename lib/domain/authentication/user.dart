import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tattva/domain/timestamp_converter.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    String? uid,
    required String displayName,
    required String email,
    @TimestampConverter() required DateTime creationTime,
    @TimestampConverter() required DateTime lastSignInTime,
    required String username,
    String? photoURL,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
