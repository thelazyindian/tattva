import 'dart:async';

import 'package:audio_service/audio_service.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tattva/application/audio/audio_bloc.dart';
import 'package:tattva/application/audio_player/audio_player_bloc.dart';
import 'package:tattva/application/authentication/authentication_bloc.dart';
import 'package:tattva/application/blog/blog_bloc.dart';
import 'package:tattva/application/dynamic_links/dynamic_links_cubit.dart';
import 'package:tattva/application/wallpaper/wallpaper_bloc.dart';
import 'package:tattva/domain/blog/blog.dart';
import 'package:tattva/infrastructure/core/connection_status_singleton.dart';
import 'package:tattva/injection.dart';
import 'package:tattva/pages/audio_player/audio_player_page.dart';
import 'package:tattva/pages/core/custom_bottom_navigation_bar.dart';
import 'package:tattva/pages/home/widgets/connectivity_status_messsage.dart';
import 'package:tattva/router/router.gr.dart';
import 'package:tattva/utils/dimens.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with WidgetsBindingObserver {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AudioBloc, AudioState>(
      bloc: getIt<AudioBloc>(),
      listenWhen: (previous, current) =>
          previous.audioFromIdOption != current.audioFromIdOption,
      listener: (context, state) {
        state.audioFromIdOption.fold(
          () => null,
          (sOrF) => sOrF.fold(
            (failure) => ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Error fetching audio'),
                behavior: SnackBarBehavior.floating,
              ),
            ),
            (audio) =>
                getIt<AudioPlayerBloc>().add(AudioPlayerEvent.audioItemClicked(
              categoryName: 'From Url',
              audios: [audio],
              idx: 0,
            )),
          ),
        );
      },
      child: BlocListener<DynamicLinksCubit, DynamicLinksState>(
        bloc: getIt<DynamicLinksCubit>(),
        listenWhen: (previous, current) =>
            previous.linkType != current.linkType,
        listener: (context, state) {
          final routerPath = context.router.root
              .innerRouterOf<StackRouter>('HomeWrapperRoute')
              ?.innerRouterOf<TabsRouter>('HomeRoute')
              ?.innerRouterOf<StackRouter>('HomeItemsWrapperRoute');
          state.linkType.fold(
            () => null,
            (linkType) => linkType.map(
              audio: (e) =>
                  SchedulerBinding.instance?.addPostFrameCallback((timeStamp) {
                getIt<AudioBloc>().add(AudioEvent.audioFromId(id: e.id));
              }),
              blog: (e) => routerPath?.push(HomeItemsBlogReaderRoute(
                blog: Blog.fromId(e.id),
                blogReaderTabType: BlogReaderTabType.fromUrl,
              )),
              wallpaper: (e) =>
                  routerPath?.push(HomeItemsWallpaperExpandedRoute(
                wallpaperEvent: WallpaperEvent.wallpaperFromId(id: e.id),
              )),
            ),
          );
        },
        child: AutoTabsRouter(
          routes: [
            AudioWrapperRoute(),
            WallpaperWrapperRoute(),
            HomeItemsWrapperRoute(),
            BlogWrapperRoute(),
            SearchWrapperRoute(),
          ],
          duration: Duration(milliseconds: 400),
          builder: (context, child, animation) {
            return Scaffold(
              body: Stack(
                children: [
                  FadeTransition(child: child, opacity: animation),
                  AudioPlayerPage(),
                  connectivityStatus(),
                  Positioned(
                    bottom: .0,
                    width: MediaQuery.of(context).size.width,
                    child: CustomBottomNavigationBar(),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  Widget connectivityStatus() => BlocBuilder<AudioPlayerBloc, AudioPlayerState>(
        bloc: getIt<AudioPlayerBloc>(),
        buildWhen: (previous, current) =>
            previous.playerView != current.playerView,
        builder: (context, state) {
          return AnimatedPositioned(
            width: MediaQuery.of(context).size.width,
            bottom: state.playerView.maybeMap(
              collapsed: (_) => bottomNavbarHeight + audioCollapsedBar,
              orElse: () => bottomNavbarHeight,
            ),
            duration: Duration(milliseconds: 300),
            child: ConnectivityStatusMessage(),
          );
        },
      );

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addObserver(this);
    AudioService.connect();
    getIt<ConnectionStatusSingleton>().initialize();
    getIt<AudioPlayerBloc>().add(AudioPlayerEvent.started());
    getIt<DynamicLinksCubit>().started();
    getIt<AuthenticationBloc>()
        .add(AuthenticationEvent.subscribeIdTokenChanges());
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
