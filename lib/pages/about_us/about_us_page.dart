import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:tattva/pages/core/custom_app_bar.dart';
import 'package:tattva/utils/strings.dart';
import 'package:tattva/utils/uris.dart';
import 'package:webview_flutter/webview_flutter.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: ABOUT_US_TITLE,
        titleAlignment: TextAlign.start,
        customAppBarType: CustomAppBarType.subhead,
        onPrefixPressed: () {
          context.router.pop();
        },
      ),
      body: WebView(
        initialUrl: aboutUsUri,
      ),
    );
  }
}
