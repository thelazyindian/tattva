import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tattva/application/wallpaper/wallpaper_bloc.dart';
import 'package:tattva/injection.dart';
import 'package:tattva/pages/core/custom_app_bar.dart';
import 'package:tattva/pages/wallpaper/widgets/wallpaper_body.dart';
import 'package:auto_route/auto_route.dart';
import 'package:tattva/router/router.gr.dart';

class WallpaperPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: CustomAppBar(
        title: 'Wallpaper',
        suffixIcon: 'icons/person.svg',
        customAppBarType: CustomAppBarType.head,
        onSuffixPressed: () {
          context.router.root
              .innerRouterOf<StackRouter>('HomeWrapperRoute')!
              .push(ProfileWrapperRoute());
        },
      ),
      body: BlocBuilder<WallpaperBloc, WallpaperState>(
        bloc: getIt<WallpaperBloc>()..add(WallpaperEvent.started()),
        builder: (context, state) {
          return state.wallpaperCategoriesOption.fold(
            () => const Center(child: CircularProgressIndicator()),
            (sOrF) => sOrF.fold(
              (f) => const Center(child: Text('ERROR')),
              (wallpaperCategories) =>
                  WallpaperBody(wallpaperCategories: wallpaperCategories),
            ),
          );
        },
      ),
    );
  }
}
