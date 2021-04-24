import 'package:audio_service/audio_service.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:tattva/pages/audio_player/audio_player_page.dart';
import 'package:tattva/pages/core/custom_bottom_navigation_bar.dart';
import 'package:tattva/router/router.gr.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with WidgetsBindingObserver {
  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: [
        AudioWrapperRoute(),
        WallpaperWrapperRoute(),
        LikedItemsWrapperRoute(),
        BlogWrapperRoute(),
      ],
      duration: Duration(milliseconds: 400),
      builder: (context, child, animation) {
        return Scaffold(
          body: Stack(
            children: [
              FadeTransition(child: child, opacity: animation),
              AudioPlayerPage(),
              Positioned(
                bottom: .0,
                width: MediaQuery.of(context).size.width,
                child: CustomBottomNavigationBar(),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addObserver(this);
    AudioService.connect();
    debugPrint('AudioService.connect');
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
