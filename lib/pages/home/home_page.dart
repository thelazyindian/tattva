import 'package:audio_service/audio_service.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tattva/application/authentication/authentication_bloc.dart';
import 'package:tattva/application/blog/blog_bloc.dart';
import 'package:tattva/application/dynamic_links/dynamic_links_cubit.dart';
import 'package:tattva/domain/blog/blog.dart';
import 'package:tattva/injection.dart';
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
    return BlocListener<DynamicLinksCubit, DynamicLinksState>(
      bloc: getIt<DynamicLinksCubit>(),
      listenWhen: (previous, current) => previous.linkType != current.linkType,
      listener: (context, state) {
        state.linkType.fold(
          () => null,
          (linkType) => context.router.root
              .innerRouterOf<StackRouter>('HomeWrapperRoute')
              ?.innerRouterOf<TabsRouter>('HomeRoute')
              ?.innerRouterOf<StackRouter>('HomeItemsWrapperRoute')
              ?.push(
                linkType.map(
                  audio: (e) => HomeItemsBlogReaderRoute(
                    blog: Blog.fromId(e.id),
                    blogReaderTabType: BlogReaderTabType.fromUrl,
                  ),
                  blog: (e) => HomeItemsBlogReaderRoute(
                    blog: Blog.fromId(e.id),
                    blogReaderTabType: BlogReaderTabType.fromUrl,
                  ),
                  wallpaper: (e) => HomeItemsBlogReaderRoute(
                    blog: Blog.fromId(e.id),
                    blogReaderTabType: BlogReaderTabType.fromUrl,
                  ),
                ),
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
    );
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addObserver(this);
    AudioService.connect();
    getIt<DynamicLinksCubit>().started();
    getIt<AuthenticationBloc>()
        .add(AuthenticationEvent.subscribeIdTokenChanges());

    debugPrint('AudioService.connect');
  }

  @override
  void didChangeDependencies() {
    debugPrint('AudioService.didChangeDependencies');
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(covariant HomePage oldWidget) {
    debugPrint('AudioService.didUpdateWidget');
    super.didUpdateWidget(oldWidget);
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
