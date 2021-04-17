import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tattva/domain/blog/blog.dart';

part 'blog_category.freezed.dart';
part 'blog_category.g.dart';

@freezed
class BlogCategory with _$BlogCategory {
  const factory BlogCategory({
    required String id,
    required String name,
    @Default([]) List<Blog> blogs,
  }) = _BlogCategory;

  factory BlogCategory.fromJson(Map<String, dynamic> json) =>
      _$BlogCategoryFromJson(json);
}
