import 'package:dartz/dartz.dart';
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';
import 'package:package_info/package_info.dart';
import 'package:tattva/domain/core/dynamic_link_type.dart';
import 'package:tattva/domain/core/i_dynamic_links_facade.dart';

@LazySingleton(as: IDynamicLinksFacade)
class DynamicLinksFacade implements IDynamicLinksFacade {
  @override
  Future<String> createDynamicLink(String parameter) async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    print(packageInfo.packageName);
    String uriPrefix = "https://tattvaapp.com";

    final DynamicLinkParameters parameters = DynamicLinkParameters(
      uriPrefix: uriPrefix,
      link: Uri.parse('$uriPrefix/$parameter'),
      androidParameters: AndroidParameters(
        packageName: packageInfo.packageName,
        minimumVersion: 125,
      ),
      iosParameters: IosParameters(
        bundleId: packageInfo.packageName,
        minimumVersion: packageInfo.version,
        appStoreId: '123456789',
      ),
      googleAnalyticsParameters: GoogleAnalyticsParameters(
        campaign: 'example-promo',
        medium: 'social',
        source: 'orkut',
      ),
      itunesConnectAnalyticsParameters: ItunesConnectAnalyticsParameters(
        providerToken: '123456',
        campaignToken: 'example-promo',
      ),
      socialMetaTagParameters: SocialMetaTagParameters(
          title: 'Example of a Dynamic Link',
          description: 'This link works whether app is installed or not!',
          imageUrl: Uri.parse(
              "https://images.pexels.com/photos/3841338/pexels-photo-3841338.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260")),
    );

    // final Uri dynamicUrl = await parameters.buildUrl();
    final ShortDynamicLink shortDynamicLink = await parameters.buildShortLink();
    final Uri shortUrl = shortDynamicLink.shortUrl;
    return shortUrl.toString();
  }

  @override
  Future<Option<DynamicLinkType>> getLinkType({Uri? deepLinkUri}) async {
    if (deepLinkUri != null &&
        deepLinkUri.pathSegments.isNotEmpty &&
        deepLinkUri.queryParameters.containsKey('id')) {
      final String id = deepLinkUri.queryParameters['id']!;
      if (deepLinkUri.pathSegments.first == 'audio') {
        debugPrint('deepLinkUri ${deepLinkUri}');
        return optionOf(DynamicLinkType.audio(id: id));
      } else if (deepLinkUri.pathSegments.first == 'blog') {
        debugPrint('deepLinkUri ${deepLinkUri}');
        return optionOf(DynamicLinkType.blog(id: id));
      } else if (deepLinkUri.pathSegments.first == 'wallpaper') {
        debugPrint('deepLinkUri ${deepLinkUri}');
        return optionOf(DynamicLinkType.wallpaper(id: id));
      }
    }

    return none();
  }
}
