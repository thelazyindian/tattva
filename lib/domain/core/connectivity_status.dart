import 'package:freezed_annotation/freezed_annotation.dart';

part 'connectivity_status.freezed.dart';

@freezed
class ConnectivityStatus with _$ConnectivityStatus {
  const factory ConnectivityStatus({
    required bool active,
    required bool viewMessage,
  }) = _ConnectivityStatus;
}
