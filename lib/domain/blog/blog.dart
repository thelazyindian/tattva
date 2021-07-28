import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tattva/domain/core/tattva_image.dart';

part 'blog.freezed.dart';
part 'blog.g.dart';

@freezed
class Blog with _$Blog {
  const factory Blog({
    required String id,
    required String title,
    required String slug,
    required String language,
    required int readingTime,
    required List<TattvaImage> coverImage,
    required String coverImageFull,
    required String summary,
    required String link,
    String? content,
    DateTime? createdAt,
  }) = _Blog;

  factory Blog.fromJson(Map<String, dynamic> json) => _$BlogFromJson(json);
  factory Blog.fromId(String id) => _Blog(
        id: id,
        title: '',
        slug: '',
        language: '',
        readingTime: 0,
        link: '',
        coverImage: [],
        coverImageFull: '',
        summary: '',
      );
}
