// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$_$_UserFromJson(Map<String, dynamic> json) {
  return _$_User(
    uid: json['uid'] as String?,
    displayName: json['displayName'] as String,
    email: json['email'] as String,
    creationTime:
        const TimestampConverter().fromJson(json['creationTime'] as Timestamp),
    lastSignInTime: const TimestampConverter()
        .fromJson(json['lastSignInTime'] as Timestamp),
    photoURL: json['photoURL'] as String?,
  );
}

Map<String, dynamic> _$_$_UserToJson(_$_User instance) => <String, dynamic>{
      'uid': instance.uid,
      'displayName': instance.displayName,
      'email': instance.email,
      'creationTime': const TimestampConverter().toJson(instance.creationTime),
      'lastSignInTime':
          const TimestampConverter().toJson(instance.lastSignInTime),
      'photoURL': instance.photoURL,
    };
