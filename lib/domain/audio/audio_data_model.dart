import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tattva/domain/audio/audio_category.dart';
import 'package:tattva/domain/core/tattva_audio.dart';

part 'audio_data_model.freezed.dart';
part 'audio_data_model.g.dart';

@freezed
class AudioDataModel with _$AudioDataModel {
  const factory AudioDataModel({
    @Default([]) List<AudioCategory> categories,
    @Default([]) List<TattvaAudio> audios,
    required List<String> likedAudios,
  }) = _AudioDataModel;
  factory AudioDataModel.fromJson(Map<String, dynamic> json) =>
      _$AudioDataModelFromJson(json);
}
