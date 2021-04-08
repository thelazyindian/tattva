import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tattva/domain/audio/audio_sub_category.dart';

part 'audio_sub_data_model.freezed.dart';
part 'audio_sub_data_model.g.dart';

@freezed
class AudioSubDataModel with _$AudioSubDataModel {
  const factory AudioSubDataModel({
    required List<AudioSubCategory> categories,
    required List<String> likedAudios,
  }) = _AudioSubDataModel;
  factory AudioSubDataModel.fromJson(Map<String, dynamic> json) =>
      _$AudioSubDataModelFromJson(json);
}
