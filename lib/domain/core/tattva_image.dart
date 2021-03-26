import 'package:freezed_annotation/freezed_annotation.dart';

part 'tattva_image.freezed.dart';
part 'tattva_image.g.dart';

@freezed
class TattvaImage with _$TattvaImage {
  const factory TattvaImage({
    required String id,
    String? file,
    required String url,
  }) = _TattvaImage;

  factory TattvaImage.fromJson(Map<String, dynamic> json) =>
      _$TattvaImageFromJson(json);
}
