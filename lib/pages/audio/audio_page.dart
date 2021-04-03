import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:tattva/pages/audio/widgets/audio_page_body.dart';
import 'package:tattva/pages/core/custom_app_bar.dart';
import 'package:tattva/router/router.gr.dart';

class AudioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Audio",
        suffixIcon: 'icons/person.svg',
        customAppBarType: CustomAppBarType.head,
        onSuffixPressed: () {
          context.router.root
              .innerRouterOf<StackRouter>('HomeWrapperRoute')!
              .push(ProfileWrapperRoute());
        },
      ),
      backgroundColor: Theme.of(context).primaryColor,
      body: AudioPageBody(),
    );
  }
}
