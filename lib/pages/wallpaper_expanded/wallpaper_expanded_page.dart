import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tattva/application/wallpaper/wallpaper_bloc.dart';
import 'package:tattva/injection.dart';
import 'package:tattva/pages/core/custom_app_bar.dart';
import 'package:tattva/pages/wallpaper_expanded/widgets/wallpaper_expanded_view.dart';

class WallpaperExpandedPage extends StatelessWidget {
  final int wallpaperIdx;

  const WallpaperExpandedPage({Key? key, required this.wallpaperIdx})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: CustomAppBar(
        customAppBarType: CustomAppBarType.none,
      ),
      body: BlocBuilder<WallpaperBloc, WallpaperState>(
        bloc: getIt<WallpaperBloc>(),
        builder: (context, state) {
          return state.selectedCategory.fold(
            () => Container(),
            (selectedCategory) => WallPageView(
              wallpaperIdx: wallpaperIdx,
              wallpapers: selectedCategory.wallpapers,
            ),
          );
        },
      ),
    );
  }
}
