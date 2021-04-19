import 'package:dartz/dartz.dart';
import 'package:tattva/domain/blog/blog_data_model.dart';
import 'package:tattva/domain/failure.dart';

abstract class IBlogFacade {
  Future<Either<Failure, BlogDataModel>> getBlogCategories(
    String token,
  );
  Future<Either<Failure, BlogDataModel>> getBlogsFromCategory({
    required String token,
    required String categoryId,
    String? startAfter,
  });
  Future<Either<Failure, BlogDataModel>> getAllBlogs({
    required String token,
    String? startAfter,
  });
  Future<Either<Failure, Unit>> likeDislikeBlog(
    String token,
    String blogId,
    bool liked,
  );
  Future<Either<Failure, String>> getBlogContent(
    String token,
    String blogId,
  );
}
