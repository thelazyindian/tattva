import 'dart:async';
import 'dart:io';

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
    checkConnection(result);
  }

  Future<bool> checkConnection([ConnectivityResult? result]) async {
    _timer?.cancel();
    bool previousConnection = hasConnection;
    try {
      // if (result != null) {
      //   hasConnection = !(result == ConnectivityResult.none);
      //   debugPrint('hasConnectionResult: $hasConnection');
      // }
      await Future.delayed(Duration(milliseconds: 500));
      final addressResult = await InternetAddress.lookup('google.com');
      if (addressResult.isNotEmpty && addressResult[0].rawAddress.isNotEmpty) {
        hasConnection = true;
      } else {
        hasConnection = false;
      }
    } on SocketException catch (_) {
      hasConnection = false;
    }

    if (previousConnection != hasConnection) {
      if (!previousConnection && hasConnection) {
        connectionChangeController.add(ConnectivityStatus(
          active: hasConnection,
          viewMessage: true,
        ));
        _timer = Timer(Duration(milliseconds: 800), () {
          connectionChangeController.add(ConnectivityStatus(
            active: hasConnection,
            viewMessage: false,
          ));
        });
      } else if (!hasConnection) {
        connectionChangeController.add(ConnectivityStatus(
          active: hasConnection,
          viewMessage: true,
        ));
      }
    }

    return hasConnection;
  }
}
