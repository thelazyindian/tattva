import 'package:freezed_annotation/freezed_annotation.dart';

part 'player_view.freezed.dart';
part 'player_view.g.dart';

@freezed
class PlayerView with _$PlayerView {
  const factory PlayerView.expanded() = _Expanded;
  const factory PlayerView.collapsed() = _Collapsed;
  const factory PlayerView.none() = _None;

  factory PlayerView.fromJson(Map<String, dynamic> json) =>
      _$PlayerViewFromJson(json);
}
