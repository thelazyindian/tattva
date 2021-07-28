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
    language: json['language'] as String,
    readingTime: json['readingTime'] as int,
    coverImage: (json['coverImage'] as List<dynamic>)
        .map((e) => TattvaImage.fromJson(e as Map<String, dynamic>))
        .toList(),
    coverImageFull: json['coverImageFull'] as String,
    summary: json['summary'] as String,
    link: json['link'] as String,
    content: json['content'] as String?,
    createdAt: json['createdAt'] == null
        ? null
        : DateTime.parse(json['createdAt'] as String),
  );
}

Map<String, dynamic> _$_$_BlogToJson(_$_Blog instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'slug': instance.slug,
      'language': instance.language,
      'readingTime': instance.readingTime,
      'coverImage': instance.coverImage,
      'coverImageFull': instance.coverImageFull,
      'summary': instance.summary,
      'link': instance.link,
      'content': instance.content,
      'createdAt': instance.createdAt?.toIso8601String(),
    };
