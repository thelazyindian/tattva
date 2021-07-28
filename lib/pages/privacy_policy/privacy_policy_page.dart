import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:tattva/pages/core/custom_app_bar.dart';
import 'package:tattva/utils/strings.dart';
import 'package:tattva/utils/uris.dart';
import 'package:webview_flutter/webview_flutter.dart';

class PrivacyPolicyPage extends StatelessWidget {
  const PrivacyPolicyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: PRIVACY_POLICY_TITLE,
        titleAlignment: TextAlign.start,
        customAppBarType: CustomAppBarType.subhead,
        onPrefixPressed: () {
          context.router.pop();
        },
      ),
      body: WebView(
        initialUrl: privacyPolicyUri,
      ),
    );
  }
}
