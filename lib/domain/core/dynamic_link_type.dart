import 'package:freezed_annotation/freezed_annotation.dart';

part 'dynamic_link_type.freezed.dart';

@freezed
class DynamicLinkType with _$DynamicLinkType {
  const factory DynamicLinkType.audio({required String id}) = _Audio;
  const factory DynamicLinkType.blog({required String id}) = _Blog;
  const factory DynamicLinkType.wallpaper({required String id}) = _Wallpaper;
}
