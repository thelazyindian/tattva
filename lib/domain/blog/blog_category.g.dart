// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blog_category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BlogCategory _$_$_BlogCategoryFromJson(Map<String, dynamic> json) {
  return _$_BlogCategory(
    id: json['id'] as String,
    name: json['name'] as String,
    blogs: (json['blogs'] as List<dynamic>?)
            ?.map((e) => Blog.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
    completelyFetched: json['completelyFetched'] as bool? ?? false,
  );
}

Map<String, dynamic> _$_$_BlogCategoryToJson(_$_BlogCategory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'blogs': instance.blogs,
      'completelyFetched': instance.completelyFetched,
    };
