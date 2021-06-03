import 'package:flutter/material.dart';
import 'package:tattva/domain/core/connectivity_status.dart';
import 'package:tattva/infrastructure/core/connection_status_singleton.dart';
import 'package:tattva/injection.dart';

class ConnectivityStatusMessage extends StatelessWidget {
  const ConnectivityStatusMessage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<ConnectivityStatus>(
      stream: getIt<ConnectionStatusSingleton>().connectionChange,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          if (snapshot.data!.viewMessage) {
            final active = snapshot.data!.active;
            return Container(
              margin: const EdgeInsets.all(6.0),
              padding: const EdgeInsets.all(8.0),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: active ? Colors.green.shade400 : Colors.red.shade400,
              ),
              child: Text(
                active ? 'Connected to Internet' : 'Not Connected to Internet',
                style: TextStyle(
                  fontSize: 12.0,
                  color: Colors.white,
                ),
              ),
            );
          }
        }
        return Container();
      },
    );
  }
}
