import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tattva/application/search/search_bloc.dart';
import 'package:tattva/injection.dart';
import 'package:tattva/pages/core/audio_player_preview_padding.dart';
import 'package:tattva/pages/search/widgets/all_results_view.dart';
import 'package:tattva/pages/search/widgets/audio_results_view.dart';
import 'package:tattva/pages/search/widgets/blog_results_view.dart';
import 'package:tattva/pages/search/widgets/search_field_app_bar.dart';
import 'package:tattva/pages/search/widgets/wallpaper_results_view.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    _tabController.addListener(() {
      getIt<SearchBloc>()
          .add(SearchEvent.changedTab(index: _tabController.index));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: SearchFieldAppBar(),
      body: Column(
        children: [
          TabBar(
            controller: _tabController,
            onTap: (index) =>
                getIt<SearchBloc>().add(SearchEvent.changedTab(index: index)),
            tabs: [
              Tab(text: 'All'),
              Tab(text: 'Audios'),
              Tab(text: 'Blogs'),
              Tab(text: 'Wallpapers'),
            ],
          ),
          const Divider(height: 1.0),
          Expanded(
            child: ListenableProvider.value(
              value: _tabController,
              child: TabBarView(
                controller: _tabController,
                children: [
                  AllResultsView(),
                  AudioResultsView(),
                  BlogResultsView(),
                  WallpaperResultsView(),
                ],
              ),
            ),
          ),
          AudioPlayerPreviewPadding(),
        ],
      ),
    );
  }
}
