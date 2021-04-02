import 'package:audio_service/audio_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tattva/pages/audio/widgets/audio_page_body.dart';
import 'package:tattva/pages/audio_player/audio_player_page.dart';
import 'package:tattva/pages/core/custom_app_bar.dart';
import 'package:tattva/pages/core/custom_bottom_navigation_bar.dart';
import 'package:tattva/utils/styles.dart';

class AudioPage extends StatefulWidget {
  @override
  _AudioPageState createState() => _AudioPageState();
}

class _AudioPageState extends State<AudioPage> with WidgetsBindingObserver {
  final _navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          MaterialApp(
            theme: appTheme,
            navigatorKey: _navigatorKey,
            home: Provider.value(
              value: _navigatorKey,
              child: Scaffold(
                appBar: CustomAppBar(
                  title: "Audio",
                  suffixIcon: 'icons/person.svg',
                  customAppBarType: CustomAppBarType.head,
                  onSuffixPressed: () {
                    final _navigatorKeyStateFirst =
                        Provider.of<GlobalKey<NavigatorState>>(context,
                                listen: false)
                            .currentState!;
                    _navigatorKeyStateFirst.pushNamed('/profile');
                  },
                ),
                backgroundColor: Theme.of(context).primaryColor,
                body: AudioPageBody(),
              ),
            ),
          ),
          AudioPlayerPage(),
          Positioned(
            bottom: .0,
            width: MediaQuery.of(context).size.width,
            child: CustomBottomNavigationBar(),
          ),
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addObserver(this);
    AudioService.connect();
  }

  @override
  void dispose() {
    AudioService.disconnect();
    WidgetsBinding.instance!.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    switch (state) {
      case AppLifecycleState.resumed:
        AudioService.connect();
        break;
      case AppLifecycleState.paused:
        AudioService.disconnect();
        break;
      default:
        break;
    }
  }

  @override
  Future<bool> didPopRoute() async {
    AudioService.disconnect();
    return false;
  }
}
