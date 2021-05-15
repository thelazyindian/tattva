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
    required String author,
    required DateTime date,
    required List<TattvaImage> coverImage,
    required int durationInMins,
    required String summary,
    String? content,
    DateTime? createdAt,
    required int likes,
  }) = _Blog;

  factory Blog.fromJson(Map<String, dynamic> json) => _$BlogFromJson(json);
  factory Blog.fromId(String id) => _Blog(
        id: id,
        title: '',
        slug: '',
        author: '',
        date: DateTime.now(),
        coverImage: [],
        durationInMins: 0,
        summary: '',
        likes: 0,
      );
}
