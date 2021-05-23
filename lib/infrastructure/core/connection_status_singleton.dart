import 'dart:io'; //InternetAddress utility
import 'dart:async'; //For StreamController/Stream

import 'package:connectivity/connectivity.dart';
import 'package:injectable/injectable.dart';
import 'package:tattva/domain/core/connectivity_status.dart';

@lazySingleton
class ConnectionStatusSingleton {
  bool hasConnection = false;
  Timer? _timer;

  StreamController<ConnectivityStatus> connectionChangeController =
      StreamController.broadcast();

  final Connectivity _connectivity = Connectivity();

  void initialize() {
    _connectivity.onConnectivityChanged.listen(_connectionChange);
    checkConnection();
  }

  Stream<ConnectivityStatus> get connectionChange =>
      connectionChangeController.stream;

  void dispose() {
    connectionChangeController.close();
  }

  void _connectionChange(ConnectivityResult result) {
    checkConnection();
  }

  Future<bool> checkConnection() async {
    _timer?.cancel();
    bool previousConnection = hasConnection;

    try {
      final result = await InternetAddress.lookup('google.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        hasConnection = true;
      } else {
        hasConnection = false;
      }
    } on SocketException catch (_) {
      hasConnection = false;
    }

    if (previousConnection != hasConnection) {
      if (!previousConnection && hasConnection) {
        _timer = Timer(Duration(milliseconds: 800), () {
          connectionChangeController.add(ConnectivityStatus(
            active: hasConnection,
            viewMessage: false,
          ));
        });
      }
      connectionChangeController.add(ConnectivityStatus(
        active: hasConnection,
        viewMessage: true,
      ));
    }

    return hasConnection;
  }
}
