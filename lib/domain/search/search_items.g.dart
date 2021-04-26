// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_items.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SearchItems _$_$_SearchItemsFromJson(Map<String, dynamic> json) {
  return _$_SearchItems(
    audios: (json['audios'] as List<dynamic>)
        .map((e) => TattvaAudio.fromJson(e as Map<String, dynamic>))
        .toList(),
    wallpapers: (json['wallpapers'] as List<dynamic>)
        .map((e) => Wallpaper.fromJson(e as Map<String, dynamic>))
        .toList(),
    blogs: (json['blogs'] as List<dynamic>)
        .map((e) => Blog.fromJson(e as Map<String, dynamic>))
        .toList(),
    page: json['page'] as int,
    nbHits: json['nbHits'] as int,
    nbPages: json['nbPages'] as int,
    hitsPerPage: json['hitsPerPage'] as int,
  );
}

Map<String, dynamic> _$_$_SearchItemsToJson(_$_SearchItems instance) =>
    <String, dynamic>{
      'audios': instance.audios,
      'wallpapers': instance.wallpapers,
      'blogs': instance.blogs,
      'page': instance.page,
      'nbHits': instance.nbHits,
      'nbPages': instance.nbPages,
      'hitsPerPage': instance.hitsPerPage,
    };
