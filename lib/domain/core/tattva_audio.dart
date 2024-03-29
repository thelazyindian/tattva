import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tattva/domain/core/tattva_audio_file.dart';
import 'package:tattva/domain/core/tattva_image.dart';

part 'tattva_audio.freezed.dart';
part 'tattva_audio.g.dart';

@freezed
class TattvaAudio with _$TattvaAudio {
  const factory TattvaAudio({
    required String id,
    required String name,
    required String language,
    required double durationInMins,
    required String link,
    required List<TattvaImage> thumbnail,
    required String mediaArt,
    required List<TattvaAudioFile> audioFile,
    DateTime? createdAt,
  }) = _TattvaAudio;

  factory TattvaAudio.fromJson(Map<String, dynamic> json) =>
      _$TattvaAudioFromJson(json);
}
