// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blog.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Blog _$_$_BlogFromJson(Map<String, dynamic> json) {
  return _$_Blog(
    id: json['id'] as String,
    title: json['title'] as String,
    slug: json['slug'] as String,
    author: json['author'] as String,
    date: DateTime.parse(json['date'] as String),
    coverImage: (json['coverImage'] as List<dynamic>)
        .map((e) => TattvaImage.fromJson(e as Map<String, dynamic>))
        .toList(),
    durationInMins: json['durationInMins'] as int,
    summary: json['summary'] as String,
    likes: json['likes'] as int,
  );
}

Map<String, dynamic> _$_$_BlogToJson(_$_Blog instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'slug': instance.slug,
      'author': instance.author,
      'date': instance.date.toIso8601String(),
      'coverImage': instance.coverImage,
      'durationInMins': instance.durationInMins,
      'summary': instance.summary,
      'likes': instance.likes,
    };
