import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tattva/domain/blog/blog.dart';
import 'package:tattva/domain/blog/blog_category.dart';

part 'blog_data_model.freezed.dart';
part 'blog_data_model.g.dart';

@freezed
class BlogDataModel with _$BlogDataModel {
  const factory BlogDataModel({
    @Default([]) List<BlogCategory> categories,
    required List<Blog> blogs,
    required List<String> likedBlogs,
  }) = _BlogDataModel;

  factory BlogDataModel.fromJson(Map<String, dynamic> json) =>
      _$BlogDataModelFromJson(json);
}
