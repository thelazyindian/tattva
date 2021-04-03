import 'package:flutter/material.dart';
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
      body: WallpaperBody(),
    );
  }
}
