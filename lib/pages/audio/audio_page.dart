import 'package:audio_service/audio_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tattva/application/audio/audio_bloc.dart';
import 'package:tattva/application/audio_player/audio_player_bloc.dart';
import 'package:tattva/injection.dart';
import 'package:tattva/pages/audio/widgets/audio_categories_section.dart';
import 'package:tattva/pages/audio/widgets/page_contents.dart';
import 'package:tattva/pages/audio_player/audio_player_page.dart';
import 'package:tattva/pages/audio_player/widgets/audio_player_collapsed.dart';
import 'package:tattva/pages/core/custom_app_bar.dart';
import 'package:provider/provider.dart';
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
            // navigatorObservers: [
            // ],
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
                body: RefreshIndicator(
                  onRefresh: () async =>
                      getIt<AudioBloc>().add(AudioEvent.started()),
                  child: BlocBuilder<AudioBloc, AudioState>(
                    bloc: getIt<AudioBloc>()..add(AudioEvent.started()),
                    builder: (context, state) {
                      return state.audioCategoriesOption.fold(
                        () => const Center(child: CircularProgressIndicator()),
                        (audioCategoriesSuccessOrFailure) =>
                            audioCategoriesSuccessOrFailure.fold(
                          (l) => ListView(
                            children: [const Center(child: Text('ERROR'))],
                          ),
                          (audioCategories) => ListView(
                            padding: const EdgeInsets.symmetric(vertical: 16.0),
                            children: [
                              AudioCategoriesSection(
                                  audioCategories: audioCategories),
                              const SizedBox(height: 48.0),
                              state.selectedAudioCategory.fold(
                                () => const Center(child: Text('NO SUBS')),
                                (category) => state.loadingSubCategory
                                    ? const Center(
                                        child: CircularProgressIndicator())
                                    : (category.audioSubCategories == null)
                                        ? const Center(child: Text('ERROR'))
                                        : PageContents(
                                            audioSubCategories:
                                                category.audioSubCategories!,
                                          ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          ),
          BlocBuilder<AudioPlayerBloc, AudioPlayerState>(
            bloc: getIt<AudioPlayerBloc>()..add(AudioPlayerEvent.started()),
            builder: (context, state) {
              return AnimatedPositioned(
                bottom: .0,
                duration: Duration(milliseconds: 400),
                width: MediaQuery.of(context).size.width,
                height: state.map(
                  expanded: (_) => MediaQuery.of(context).size.height,
                  collapsed: (_) => 73.0 + 64.0,
                  none: (_) => .0,
                ),
                child: state.maybeMap(
                  none: (_) => Container(),
                  orElse: () => Material(
                    color: Theme.of(context).primaryColor,
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 400),
                      decoration: BoxDecoration(
                        borderRadius: state.maybeMap(
                            collapsed: (_) => BorderRadius.circular(28.0),
                            orElse: () => BorderRadius.zero),
                      ),
                      child: state.maybeMap(
                        collapsed: (_) => Column(
                          children: [
                            AudioPlayerCollapsed(),
                            const SizedBox(height: 73.0),
                          ],
                        ),
                        orElse: () => AudioPlayerPage(),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
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
