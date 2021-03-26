import 'package:freezed_annotation/freezed_annotation.dart';

part 'tattva_audio_file.freezed.dart';
part 'tattva_audio_file.g.dart';

@freezed
class TattvaAudioFile with _$TattvaAudioFile {
  const factory TattvaAudioFile({
    required String id,
    required String file,
    required String url,
  }) = _TattvaAudioFile;

  factory TattvaAudioFile.fromJson(Map<String, dynamic> json) =>
      _$TattvaAudioFileFromJson(json);
}
