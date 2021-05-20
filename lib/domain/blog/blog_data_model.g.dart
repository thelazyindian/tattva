// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blog_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BlogDataModel _$_$_BlogDataModelFromJson(Map<String, dynamic> json) {
  return _$_BlogDataModel(
    categories: (json['categories'] as List<dynamic>?)
            ?.map((e) => BlogCategory.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
    blogs: (json['blogs'] as List<dynamic>)
        .map((e) => Blog.fromJson(e as Map<String, dynamic>))
        .toList(),
    likedBlogs:
        (json['likedBlogs'] as List<dynamic>).map((e) => e as String).toList(),
  );
}

Map<String, dynamic> _$_$_BlogDataModelToJson(_$_BlogDataModel instance) =>
    <String, dynamic>{
      'categories': instance.categories,
      'blogs': instance.blogs,
      'likedBlogs': instance.likedBlogs,
    };
