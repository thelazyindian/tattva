// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i28;

import '../application/blog/blog_bloc.dart' as _i32;
import '../application/wallpaper/wallpaper_bloc.dart' as _i30;
import '../domain/blog/blog.dart' as _i31;
import '../domain/core/tattva_audio.dart' as _i29;
import '../pages/about_us/about_us_page.dart' as _i21;
import '../pages/audio/audio_page.dart' as _i8;
import '../pages/audio_sub_category/audio_sub_category_page.dart' as _i9;
import '../pages/authentication/change_password_page.dart' as _i23;
import '../pages/authentication/forgot_password_page.dart' as _i6;
import '../pages/authentication/login_page.dart' as _i5;
import '../pages/authentication/login_password_page.dart' as _i24;
import '../pages/authentication/register_page.dart' as _i4;
import '../pages/blog/blog_page.dart' as _i16;
import '../pages/blog_reader/blog_reader_page.dart' as _i15;
import '../pages/edit_profile/edit_profile_page.dart' as _i19;
import '../pages/feedback/feedback_page.dart' as _i20;
import '../pages/home/home_page.dart' as _i7;
import '../pages/home_items/home_items_page.dart' as _i12;
import '../pages/home_items_blog_sub_category/home_items_blog_sub_category_page.dart'
    as _i14;
import '../pages/home_items_wallpaper_sub_category/home_items_wallpaper_sub_category_page.dart'
    as _i13;
import '../pages/landing/landing_page.dart' as _i3;
import '../pages/liked_items/liked_items_page.dart' as _i25;
import '../pages/liked_items_blog_sub_category/liked_items_blog_sub_category_page.dart'
    as _i27;
import '../pages/liked_items_wallpaper_sub_category/liked_items_wallpaper_sub_category_page.dart'
    as _i26;
import '../pages/privacy_policy/privacy_policy_page.dart' as _i22;
import '../pages/profile/profile_page.dart' as _i18;
import '../pages/search/search_page.dart' as _i17;
import '../pages/splash/splash_page.dart' as _i2;
import '../pages/wallpaper/wallpaper_page.dart' as _i10;
import '../pages/wallpaper_expanded/wallpaper_expanded_page.dart' as _i11;

class AppRouter extends _i1.RootStackRouter {
  AppRouter();

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    SplashRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i2.SplashPage());
    },
    LandingWrapperRoute.name: (entry) {
      return _i1.MaterialPageX(
          entry: entry, child: const _i1.EmptyRouterPage());
    },
    HomeWrapperRoute.name: (entry) {
      return _i1.MaterialPageX(
          entry: entry, child: const _i1.EmptyRouterPage());
    },
    LandingRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i3.LandingPage());
    },
    RegisterRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i4.RegisterPage());
    },
    LoginRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i5.LoginPage());
    },
    ForgotPasswordRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i6.ForgotPasswordPage());
    },
    HomeRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i7.HomePage());
    },
    ProfileWrapperRoute.name: (entry) {
      return _i1.MaterialPageX(
          entry: entry, child: const _i1.EmptyRouterPage());
    },
    AudioWrapperRoute.name: (entry) {
      return _i1.MaterialPageX(
          entry: entry, child: const _i1.EmptyRouterPage());
    },
    WallpaperWrapperRoute.name: (entry) {
      return _i1.MaterialPageX(
          entry: entry, child: const _i1.EmptyRouterPage());
    },
    HomeItemsWrapperRoute.name: (entry) {
      return _i1.MaterialPageX(
          entry: entry, child: const _i1.EmptyRouterPage());
    },
    BlogWrapperRoute.name: (entry) {
      return _i1.MaterialPageX(
          entry: entry, child: const _i1.EmptyRouterPage());
    },
    SearchWrapperRoute.name: (entry) {
      return _i1.MaterialPageX(
          entry: entry, child: const _i1.EmptyRouterPage());
    },
    AudioRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i8.AudioPage());
    },
    AudioSubCategoryRoute.name: (entry) {
      var args = entry.routeData.argsAs<AudioSubCategoryRouteArgs>();
      return _i1.MaterialPageX(
          entry: entry,
          child: _i9.AudioSubCategoryPage(
              key: args.key,
              title: args.title,
              audios: args.audios,
              bannerImage: args.bannerImage,
              enableAudioPreviewPadding: args.enableAudioPreviewPadding));
    },
    WallpaperRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i10.WallpaperPage());
    },
    WallpaperExpandedRoute.name: (entry) {
      var args = entry.routeData.argsAs<WallpaperExpandedRouteArgs>();
      return _i1.MaterialPageX(
          entry: entry,
          child: _i11.WallpaperExpandedPage(
              key: args.key,
              wallpaperEvent: args.wallpaperEvent,
              enableAudioPreviewPadding: args.enableAudioPreviewPadding));
    },
    HomeItemsRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i12.HomeItemsPage());
    },
    HomeItemsAudioSubCategoryRoute.name: (entry) {
      var args = entry.routeData.argsAs<HomeItemsAudioSubCategoryRouteArgs>();
      return _i1.MaterialPageX(
          entry: entry,
          child: _i9.AudioSubCategoryPage(
              key: args.key,
              title: args.title,
              audios: args.audios,
              bannerImage: args.bannerImage,
              enableAudioPreviewPadding: args.enableAudioPreviewPadding));
    },
    HomeItemsWallpaperSubCategoryRoute.name: (entry) {
      var args =
          entry.routeData.argsAs<HomeItemsWallpaperSubCategoryRouteArgs>();
      return _i1.MaterialPageX(
          entry: entry,
          child: _i13.HomeItemsWallpaperSubCategoryPage(
              key: args.key, title: args.title));
    },
    HomeItemsBlogSubCategoryRoute.name: (entry) {
      var args = entry.routeData.argsAs<HomeItemsBlogSubCategoryRouteArgs>();
      return _i1.MaterialPageX(
          entry: entry,
          child: _i14.HomeItemsBlogSubCategoryPage(
              key: args.key, title: args.title));
    },
    HomeItemsBlogReaderRoute.name: (entry) {
      var args = entry.routeData.argsAs<HomeItemsBlogReaderRouteArgs>();
      return _i1.MaterialPageX(
          entry: entry,
          child: _i15.BlogReaderPage(
              key: args.key,
              blog: args.blog,
              blogReaderTabType: args.blogReaderTabType,
              enableAudioPreviewPadding: args.enableAudioPreviewPadding));
    },
    HomeItemsWallpaperExpandedRoute.name: (entry) {
      var args = entry.routeData.argsAs<HomeItemsWallpaperExpandedRouteArgs>();
      return _i1.MaterialPageX(
          entry: entry,
          child: _i11.WallpaperExpandedPage(
              key: args.key,
              wallpaperEvent: args.wallpaperEvent,
              enableAudioPreviewPadding: args.enableAudioPreviewPadding));
    },
    BlogRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i16.BlogPage());
    },
    BlogReaderRoute.name: (entry) {
      var args = entry.routeData.argsAs<BlogReaderRouteArgs>();
      return _i1.MaterialPageX(
          entry: entry,
          child: _i15.BlogReaderPage(
              key: args.key,
              blog: args.blog,
              blogReaderTabType: args.blogReaderTabType,
              enableAudioPreviewPadding: args.enableAudioPreviewPadding));
    },
    SearchRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i17.SearchPage());
    },
    SearchItemsBlogReaderRoute.name: (entry) {
      var args = entry.routeData.argsAs<SearchItemsBlogReaderRouteArgs>();
      return _i1.MaterialPageX(
          entry: entry,
          child: _i15.BlogReaderPage(
              key: args.key,
              blog: args.blog,
              blogReaderTabType: args.blogReaderTabType,
              enableAudioPreviewPadding: args.enableAudioPreviewPadding));
    },
    SearchItemsWallpaperExpandedRoute.name: (entry) {
      var args =
          entry.routeData.argsAs<SearchItemsWallpaperExpandedRouteArgs>();
      return _i1.MaterialPageX(
          entry: entry,
          child: _i11.WallpaperExpandedPage(
              key: args.key,
              wallpaperEvent: args.wallpaperEvent,
              enableAudioPreviewPadding: args.enableAudioPreviewPadding));
    },
    ProfileRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i18.ProfilePage());
    },
    EditProfileRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i19.EditProfilePage());
    },
    ChangePasswordWrapperRoute.name: (entry) {
      return _i1.MaterialPageX(
          entry: entry, child: const _i1.EmptyRouterPage());
    },
    LikedItemsWrapperRoute.name: (entry) {
      return _i1.MaterialPageX(
          entry: entry, child: const _i1.EmptyRouterPage());
    },
    FeedbackRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: const _i20.FeedbackPage());
    },
    AboutUsRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: const _i21.AboutUsPage());
    },
    PrivacyPolicyRoute.name: (entry) {
      return _i1.MaterialPageX(
          entry: entry, child: const _i22.PrivacyPolicyPage());
    },
    ChangePasswordRoute.name: (entry) {
      return _i1.MaterialPageX(
          entry: entry, child: const _i23.ChangePasswordPage());
    },
    LoginPasswordRoute.name: (entry) {
      return _i1.MaterialPageX(
          entry: entry, child: const _i24.LoginPasswordPage());
    },
    LikedItemsRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i25.LikedItemsPage());
    },
    LikedItemsAudioSubCategoryRoute.name: (entry) {
      var args = entry.routeData.argsAs<LikedItemsAudioSubCategoryRouteArgs>();
      return _i1.MaterialPageX(
          entry: entry,
          child: _i9.AudioSubCategoryPage(
              key: args.key,
              title: args.title,
              audios: args.audios,
              bannerImage: args.bannerImage,
              enableAudioPreviewPadding: args.enableAudioPreviewPadding));
    },
    LikedItemsWallpaperSubCategoryRoute.name: (entry) {
      var args =
          entry.routeData.argsAs<LikedItemsWallpaperSubCategoryRouteArgs>();
      return _i1.MaterialPageX(
          entry: entry,
          child: _i26.LikedItemsWallpaperSubCategoryPage(
              key: args.key, title: args.title));
    },
    LikedItemsBlogSubCategoryRoute.name: (entry) {
      var args = entry.routeData.argsAs<LikedItemsBlogSubCategoryRouteArgs>();
      return _i1.MaterialPageX(
          entry: entry,
          child: _i27.LikedItemsBlogSubCategoryPage(
              key: args.key, title: args.title));
    },
    LikedItemsBlogReaderRoute.name: (entry) {
      var args = entry.routeData.argsAs<LikedItemsBlogReaderRouteArgs>();
      return _i1.MaterialPageX(
          entry: entry,
          child: _i15.BlogReaderPage(
              key: args.key,
              blog: args.blog,
              blogReaderTabType: args.blogReaderTabType,
              enableAudioPreviewPadding: args.enableAudioPreviewPadding));
    },
    LikedItemsWallpaperExpandedRoute.name: (entry) {
      var args = entry.routeData.argsAs<LikedItemsWallpaperExpandedRouteArgs>();
      return _i1.MaterialPageX(
          entry: entry,
          child: _i11.WallpaperExpandedPage(
              key: args.key,
              wallpaperEvent: args.wallpaperEvent,
              enableAudioPreviewPadding: args.enableAudioPreviewPadding));
    }
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(SplashRoute.name, path: '/'),
        _i1.RouteConfig(LandingWrapperRoute.name,
            path: '/empty-router-page',
            children: [
              _i1.RouteConfig(LandingRoute.name, path: ''),
              _i1.RouteConfig(RegisterRoute.name, path: 'register-page'),
              _i1.RouteConfig(LoginRoute.name, path: 'login-page'),
              _i1.RouteConfig(ForgotPasswordRoute.name,
                  path: 'forgot-password-page')
            ]),
        _i1.RouteConfig(HomeWrapperRoute.name,
            path: '/empty-router-page',
            children: [
              _i1.RouteConfig(HomeRoute.name,
                  path: '',
                  usesTabsRouter: true,
                  children: [
                    _i1.RouteConfig(AudioWrapperRoute.name,
                        path: 'empty-router-page',
                        children: [
                          _i1.RouteConfig(AudioRoute.name, path: ''),
                          _i1.RouteConfig(AudioSubCategoryRoute.name,
                              path: 'audio-sub-category-page')
                        ]),
                    _i1.RouteConfig(WallpaperWrapperRoute.name,
                        path: 'empty-router-page',
                        children: [
                          _i1.RouteConfig(WallpaperRoute.name, path: ''),
                          _i1.RouteConfig(WallpaperExpandedRoute.name,
                              path: 'wallpaper-expanded-page')
                        ]),
                    _i1.RouteConfig(HomeItemsWrapperRoute.name,
                        path: '',
                        children: [
                          _i1.RouteConfig(HomeItemsRoute.name, path: ''),
                          _i1.RouteConfig(HomeItemsAudioSubCategoryRoute.name,
                              path: 'audio-sub-category-page'),
                          _i1.RouteConfig(
                              HomeItemsWallpaperSubCategoryRoute.name,
                              path: 'home-items-wallpaper-sub-category-page'),
                          _i1.RouteConfig(HomeItemsBlogSubCategoryRoute.name,
                              path: 'home-items-blog-sub-category-page'),
                          _i1.RouteConfig(HomeItemsBlogReaderRoute.name,
                              path: 'blog-reader-page'),
                          _i1.RouteConfig(HomeItemsWallpaperExpandedRoute.name,
                              path: 'wallpaper-expanded-page')
                        ]),
                    _i1.RouteConfig(BlogWrapperRoute.name,
                        path: 'empty-router-page',
                        children: [
                          _i1.RouteConfig(BlogRoute.name, path: ''),
                          _i1.RouteConfig(BlogReaderRoute.name,
                              path: 'blog-reader-page')
                        ]),
                    _i1.RouteConfig(SearchWrapperRoute.name,
                        path: 'empty-router-page',
                        children: [
                          _i1.RouteConfig(SearchRoute.name, path: ''),
                          _i1.RouteConfig(SearchItemsBlogReaderRoute.name,
                              path: 'blog-reader-page'),
                          _i1.RouteConfig(
                              SearchItemsWallpaperExpandedRoute.name,
                              path: 'wallpaper-expanded-page')
                        ])
                  ]),
              _i1.RouteConfig(ProfileWrapperRoute.name,
                  path: 'empty-router-page',
                  children: [
                    _i1.RouteConfig(ProfileRoute.name, path: ''),
                    _i1.RouteConfig(EditProfileRoute.name,
                        path: 'edit-profile-page'),
                    _i1.RouteConfig(ChangePasswordWrapperRoute.name,
                        path: 'empty-router-page',
                        children: [
                          _i1.RouteConfig(ChangePasswordRoute.name, path: ''),
                          _i1.RouteConfig(LoginPasswordRoute.name,
                              path: 'login-password-page')
                        ]),
                    _i1.RouteConfig(LikedItemsWrapperRoute.name,
                        path: 'empty-router-page',
                        children: [
                          _i1.RouteConfig(LikedItemsRoute.name, path: ''),
                          _i1.RouteConfig(LikedItemsAudioSubCategoryRoute.name,
                              path: 'audio-sub-category-page'),
                          _i1.RouteConfig(
                              LikedItemsWallpaperSubCategoryRoute.name,
                              path: 'liked-items-wallpaper-sub-category-page'),
                          _i1.RouteConfig(LikedItemsBlogSubCategoryRoute.name,
                              path: 'liked-items-blog-sub-category-page'),
                          _i1.RouteConfig(LikedItemsBlogReaderRoute.name,
                              path: 'blog-reader-page'),
                          _i1.RouteConfig(LikedItemsWallpaperExpandedRoute.name,
                              path: 'wallpaper-expanded-page')
                        ]),
                    _i1.RouteConfig(FeedbackRoute.name, path: 'feedback-page'),
                    _i1.RouteConfig(AboutUsRoute.name, path: 'about-us-page'),
                    _i1.RouteConfig(PrivacyPolicyRoute.name,
                        path: 'privacy-policy-page')
                  ])
            ])
      ];
}

class SplashRoute extends _i1.PageRouteInfo {
  const SplashRoute() : super(name, path: '/');

  static const String name = 'SplashRoute';
}

class LandingWrapperRoute extends _i1.PageRouteInfo {
  const LandingWrapperRoute({List<_i1.PageRouteInfo>? children})
      : super(name, path: '/empty-router-page', initialChildren: children);

  static const String name = 'LandingWrapperRoute';
}

class HomeWrapperRoute extends _i1.PageRouteInfo {
  const HomeWrapperRoute({List<_i1.PageRouteInfo>? children})
      : super(name, path: '/empty-router-page', initialChildren: children);

  static const String name = 'HomeWrapperRoute';
}

class LandingRoute extends _i1.PageRouteInfo {
  const LandingRoute() : super(name, path: '');

  static const String name = 'LandingRoute';
}

class RegisterRoute extends _i1.PageRouteInfo {
  const RegisterRoute() : super(name, path: 'register-page');

  static const String name = 'RegisterRoute';
}

class LoginRoute extends _i1.PageRouteInfo {
  const LoginRoute() : super(name, path: 'login-page');

  static const String name = 'LoginRoute';
}

class ForgotPasswordRoute extends _i1.PageRouteInfo {
  const ForgotPasswordRoute() : super(name, path: 'forgot-password-page');

  static const String name = 'ForgotPasswordRoute';
}

class HomeRoute extends _i1.PageRouteInfo {
  const HomeRoute({List<_i1.PageRouteInfo>? children})
      : super(name, path: '', initialChildren: children);

  static const String name = 'HomeRoute';
}

class ProfileWrapperRoute extends _i1.PageRouteInfo {
  const ProfileWrapperRoute({List<_i1.PageRouteInfo>? children})
      : super(name, path: 'empty-router-page', initialChildren: children);

  static const String name = 'ProfileWrapperRoute';
}

class AudioWrapperRoute extends _i1.PageRouteInfo {
  const AudioWrapperRoute({List<_i1.PageRouteInfo>? children})
      : super(name, path: 'empty-router-page', initialChildren: children);

  static const String name = 'AudioWrapperRoute';
}

class WallpaperWrapperRoute extends _i1.PageRouteInfo {
  const WallpaperWrapperRoute({List<_i1.PageRouteInfo>? children})
      : super(name, path: 'empty-router-page', initialChildren: children);

  static const String name = 'WallpaperWrapperRoute';
}

class HomeItemsWrapperRoute extends _i1.PageRouteInfo {
  const HomeItemsWrapperRoute({List<_i1.PageRouteInfo>? children})
      : super(name, path: '', initialChildren: children);

  static const String name = 'HomeItemsWrapperRoute';
}

class BlogWrapperRoute extends _i1.PageRouteInfo {
  const BlogWrapperRoute({List<_i1.PageRouteInfo>? children})
      : super(name, path: 'empty-router-page', initialChildren: children);

  static const String name = 'BlogWrapperRoute';
}

class SearchWrapperRoute extends _i1.PageRouteInfo {
  const SearchWrapperRoute({List<_i1.PageRouteInfo>? children})
      : super(name, path: 'empty-router-page', initialChildren: children);

  static const String name = 'SearchWrapperRoute';
}

class AudioRoute extends _i1.PageRouteInfo {
  const AudioRoute() : super(name, path: '');

  static const String name = 'AudioRoute';
}

class AudioSubCategoryRoute
    extends _i1.PageRouteInfo<AudioSubCategoryRouteArgs> {
  AudioSubCategoryRoute(
      {_i28.Key? key,
      required String title,
      required List<_i29.TattvaAudio> audios,
      String? bannerImage,
      bool enableAudioPreviewPadding = true})
      : super(name,
            path: 'audio-sub-category-page',
            args: AudioSubCategoryRouteArgs(
                key: key,
                title: title,
                audios: audios,
                bannerImage: bannerImage,
                enableAudioPreviewPadding: enableAudioPreviewPadding));

  static const String name = 'AudioSubCategoryRoute';
}

class AudioSubCategoryRouteArgs {
  const AudioSubCategoryRouteArgs(
      {this.key,
      required this.title,
      required this.audios,
      this.bannerImage,
      this.enableAudioPreviewPadding = true});

  final _i28.Key? key;

  final String title;

  final List<_i29.TattvaAudio> audios;

  final String? bannerImage;

  final bool enableAudioPreviewPadding;
}

class WallpaperRoute extends _i1.PageRouteInfo {
  const WallpaperRoute() : super(name, path: '');

  static const String name = 'WallpaperRoute';
}

class WallpaperExpandedRoute
    extends _i1.PageRouteInfo<WallpaperExpandedRouteArgs> {
  WallpaperExpandedRoute(
      {_i28.Key? key,
      required _i30.WallpaperEvent wallpaperEvent,
      bool enableAudioPreviewPadding = true})
      : super(name,
            path: 'wallpaper-expanded-page',
            args: WallpaperExpandedRouteArgs(
                key: key,
                wallpaperEvent: wallpaperEvent,
                enableAudioPreviewPadding: enableAudioPreviewPadding));

  static const String name = 'WallpaperExpandedRoute';
}

class WallpaperExpandedRouteArgs {
  const WallpaperExpandedRouteArgs(
      {this.key,
      required this.wallpaperEvent,
      this.enableAudioPreviewPadding = true});

  final _i28.Key? key;

  final _i30.WallpaperEvent wallpaperEvent;

  final bool enableAudioPreviewPadding;
}

class HomeItemsRoute extends _i1.PageRouteInfo {
  const HomeItemsRoute() : super(name, path: '');

  static const String name = 'HomeItemsRoute';
}

class HomeItemsAudioSubCategoryRoute
    extends _i1.PageRouteInfo<HomeItemsAudioSubCategoryRouteArgs> {
  HomeItemsAudioSubCategoryRoute(
      {_i28.Key? key,
      required String title,
      required List<_i29.TattvaAudio> audios,
      String? bannerImage,
      bool enableAudioPreviewPadding = true})
      : super(name,
            path: 'audio-sub-category-page',
            args: HomeItemsAudioSubCategoryRouteArgs(
                key: key,
                title: title,
                audios: audios,
                bannerImage: bannerImage,
                enableAudioPreviewPadding: enableAudioPreviewPadding));

  static const String name = 'HomeItemsAudioSubCategoryRoute';
}

class HomeItemsAudioSubCategoryRouteArgs {
  const HomeItemsAudioSubCategoryRouteArgs(
      {this.key,
      required this.title,
      required this.audios,
      this.bannerImage,
      this.enableAudioPreviewPadding = true});

  final _i28.Key? key;

  final String title;

  final List<_i29.TattvaAudio> audios;

  final String? bannerImage;

  final bool enableAudioPreviewPadding;
}

class HomeItemsWallpaperSubCategoryRoute
    extends _i1.PageRouteInfo<HomeItemsWallpaperSubCategoryRouteArgs> {
  HomeItemsWallpaperSubCategoryRoute({_i28.Key? key, required String title})
      : super(name,
            path: 'home-items-wallpaper-sub-category-page',
            args:
                HomeItemsWallpaperSubCategoryRouteArgs(key: key, title: title));

  static const String name = 'HomeItemsWallpaperSubCategoryRoute';
}

class HomeItemsWallpaperSubCategoryRouteArgs {
  const HomeItemsWallpaperSubCategoryRouteArgs({this.key, required this.title});

  final _i28.Key? key;

  final String title;
}

class HomeItemsBlogSubCategoryRoute
    extends _i1.PageRouteInfo<HomeItemsBlogSubCategoryRouteArgs> {
  HomeItemsBlogSubCategoryRoute({_i28.Key? key, required String title})
      : super(name,
            path: 'home-items-blog-sub-category-page',
            args: HomeItemsBlogSubCategoryRouteArgs(key: key, title: title));

  static const String name = 'HomeItemsBlogSubCategoryRoute';
}

class HomeItemsBlogSubCategoryRouteArgs {
  const HomeItemsBlogSubCategoryRouteArgs({this.key, required this.title});

  final _i28.Key? key;

  final String title;
}

class HomeItemsBlogReaderRoute
    extends _i1.PageRouteInfo<HomeItemsBlogReaderRouteArgs> {
  HomeItemsBlogReaderRoute(
      {_i28.Key? key,
      required _i31.Blog blog,
      required _i32.BlogReaderTabType blogReaderTabType,
      bool enableAudioPreviewPadding = true})
      : super(name,
            path: 'blog-reader-page',
            args: HomeItemsBlogReaderRouteArgs(
                key: key,
                blog: blog,
                blogReaderTabType: blogReaderTabType,
                enableAudioPreviewPadding: enableAudioPreviewPadding));

  static const String name = 'HomeItemsBlogReaderRoute';
}

class HomeItemsBlogReaderRouteArgs {
  const HomeItemsBlogReaderRouteArgs(
      {this.key,
      required this.blog,
      required this.blogReaderTabType,
      this.enableAudioPreviewPadding = true});

  final _i28.Key? key;

  final _i31.Blog blog;

  final _i32.BlogReaderTabType blogReaderTabType;

  final bool enableAudioPreviewPadding;
}

class HomeItemsWallpaperExpandedRoute
    extends _i1.PageRouteInfo<HomeItemsWallpaperExpandedRouteArgs> {
  HomeItemsWallpaperExpandedRoute(
      {_i28.Key? key,
      required _i30.WallpaperEvent wallpaperEvent,
      bool enableAudioPreviewPadding = true})
      : super(name,
            path: 'wallpaper-expanded-page',
            args: HomeItemsWallpaperExpandedRouteArgs(
                key: key,
                wallpaperEvent: wallpaperEvent,
                enableAudioPreviewPadding: enableAudioPreviewPadding));

  static const String name = 'HomeItemsWallpaperExpandedRoute';
}

class HomeItemsWallpaperExpandedRouteArgs {
  const HomeItemsWallpaperExpandedRouteArgs(
      {this.key,
      required this.wallpaperEvent,
      this.enableAudioPreviewPadding = true});

  final _i28.Key? key;

  final _i30.WallpaperEvent wallpaperEvent;

  final bool enableAudioPreviewPadding;
}

class BlogRoute extends _i1.PageRouteInfo {
  const BlogRoute() : super(name, path: '');

  static const String name = 'BlogRoute';
}

class BlogReaderRoute extends _i1.PageRouteInfo<BlogReaderRouteArgs> {
  BlogReaderRoute(
      {_i28.Key? key,
      required _i31.Blog blog,
      required _i32.BlogReaderTabType blogReaderTabType,
      bool enableAudioPreviewPadding = true})
      : super(name,
            path: 'blog-reader-page',
            args: BlogReaderRouteArgs(
                key: key,
                blog: blog,
                blogReaderTabType: blogReaderTabType,
                enableAudioPreviewPadding: enableAudioPreviewPadding));

  static const String name = 'BlogReaderRoute';
}

class BlogReaderRouteArgs {
  const BlogReaderRouteArgs(
      {this.key,
      required this.blog,
      required this.blogReaderTabType,
      this.enableAudioPreviewPadding = true});

  final _i28.Key? key;

  final _i31.Blog blog;

  final _i32.BlogReaderTabType blogReaderTabType;

  final bool enableAudioPreviewPadding;
}

class SearchRoute extends _i1.PageRouteInfo {
  const SearchRoute() : super(name, path: '');

  static const String name = 'SearchRoute';
}

class SearchItemsBlogReaderRoute
    extends _i1.PageRouteInfo<SearchItemsBlogReaderRouteArgs> {
  SearchItemsBlogReaderRoute(
      {_i28.Key? key,
      required _i31.Blog blog,
      required _i32.BlogReaderTabType blogReaderTabType,
      bool enableAudioPreviewPadding = true})
      : super(name,
            path: 'blog-reader-page',
            args: SearchItemsBlogReaderRouteArgs(
                key: key,
                blog: blog,
                blogReaderTabType: blogReaderTabType,
                enableAudioPreviewPadding: enableAudioPreviewPadding));

  static const String name = 'SearchItemsBlogReaderRoute';
}

class SearchItemsBlogReaderRouteArgs {
  const SearchItemsBlogReaderRouteArgs(
      {this.key,
      required this.blog,
      required this.blogReaderTabType,
      this.enableAudioPreviewPadding = true});

  final _i28.Key? key;

  final _i31.Blog blog;

  final _i32.BlogReaderTabType blogReaderTabType;

  final bool enableAudioPreviewPadding;
}

class SearchItemsWallpaperExpandedRoute
    extends _i1.PageRouteInfo<SearchItemsWallpaperExpandedRouteArgs> {
  SearchItemsWallpaperExpandedRoute(
      {_i28.Key? key,
      required _i30.WallpaperEvent wallpaperEvent,
      bool enableAudioPreviewPadding = true})
      : super(name,
            path: 'wallpaper-expanded-page',
            args: SearchItemsWallpaperExpandedRouteArgs(
                key: key,
                wallpaperEvent: wallpaperEvent,
                enableAudioPreviewPadding: enableAudioPreviewPadding));

  static const String name = 'SearchItemsWallpaperExpandedRoute';
}

class SearchItemsWallpaperExpandedRouteArgs {
  const SearchItemsWallpaperExpandedRouteArgs(
      {this.key,
      required this.wallpaperEvent,
      this.enableAudioPreviewPadding = true});

  final _i28.Key? key;

  final _i30.WallpaperEvent wallpaperEvent;

  final bool enableAudioPreviewPadding;
}

class ProfileRoute extends _i1.PageRouteInfo {
  const ProfileRoute() : super(name, path: '');

  static const String name = 'ProfileRoute';
}

class EditProfileRoute extends _i1.PageRouteInfo {
  const EditProfileRoute() : super(name, path: 'edit-profile-page');

  static const String name = 'EditProfileRoute';
}

class ChangePasswordWrapperRoute extends _i1.PageRouteInfo {
  const ChangePasswordWrapperRoute({List<_i1.PageRouteInfo>? children})
      : super(name, path: 'empty-router-page', initialChildren: children);

  static const String name = 'ChangePasswordWrapperRoute';
}

class LikedItemsWrapperRoute extends _i1.PageRouteInfo {
  const LikedItemsWrapperRoute({List<_i1.PageRouteInfo>? children})
      : super(name, path: 'empty-router-page', initialChildren: children);

  static const String name = 'LikedItemsWrapperRoute';
}

class FeedbackRoute extends _i1.PageRouteInfo {
  const FeedbackRoute() : super(name, path: 'feedback-page');

  static const String name = 'FeedbackRoute';
}

class AboutUsRoute extends _i1.PageRouteInfo {
  const AboutUsRoute() : super(name, path: 'about-us-page');

  static const String name = 'AboutUsRoute';
}

class PrivacyPolicyRoute extends _i1.PageRouteInfo {
  const PrivacyPolicyRoute() : super(name, path: 'privacy-policy-page');

  static const String name = 'PrivacyPolicyRoute';
}

class ChangePasswordRoute extends _i1.PageRouteInfo {
  const ChangePasswordRoute() : super(name, path: '');

  static const String name = 'ChangePasswordRoute';
}

class LoginPasswordRoute extends _i1.PageRouteInfo {
  const LoginPasswordRoute() : super(name, path: 'login-password-page');

  static const String name = 'LoginPasswordRoute';
}

class LikedItemsRoute extends _i1.PageRouteInfo {
  const LikedItemsRoute() : super(name, path: '');

  static const String name = 'LikedItemsRoute';
}

class LikedItemsAudioSubCategoryRoute
    extends _i1.PageRouteInfo<LikedItemsAudioSubCategoryRouteArgs> {
  LikedItemsAudioSubCategoryRoute(
      {_i28.Key? key,
      required String title,
      required List<_i29.TattvaAudio> audios,
      String? bannerImage,
      bool enableAudioPreviewPadding = true})
      : super(name,
            path: 'audio-sub-category-page',
            args: LikedItemsAudioSubCategoryRouteArgs(
                key: key,
                title: title,
                audios: audios,
                bannerImage: bannerImage,
                enableAudioPreviewPadding: enableAudioPreviewPadding));

  static const String name = 'LikedItemsAudioSubCategoryRoute';
}

class LikedItemsAudioSubCategoryRouteArgs {
  const LikedItemsAudioSubCategoryRouteArgs(
      {this.key,
      required this.title,
      required this.audios,
      this.bannerImage,
      this.enableAudioPreviewPadding = true});

  final _i28.Key? key;

  final String title;

  final List<_i29.TattvaAudio> audios;

  final String? bannerImage;

  final bool enableAudioPreviewPadding;
}

class LikedItemsWallpaperSubCategoryRoute
    extends _i1.PageRouteInfo<LikedItemsWallpaperSubCategoryRouteArgs> {
  LikedItemsWallpaperSubCategoryRoute({_i28.Key? key, required String title})
      : super(name,
            path: 'liked-items-wallpaper-sub-category-page',
            args: LikedItemsWallpaperSubCategoryRouteArgs(
                key: key, title: title));

  static const String name = 'LikedItemsWallpaperSubCategoryRoute';
}

class LikedItemsWallpaperSubCategoryRouteArgs {
  const LikedItemsWallpaperSubCategoryRouteArgs(
      {this.key, required this.title});

  final _i28.Key? key;

  final String title;
}

class LikedItemsBlogSubCategoryRoute
    extends _i1.PageRouteInfo<LikedItemsBlogSubCategoryRouteArgs> {
  LikedItemsBlogSubCategoryRoute({_i28.Key? key, required String title})
      : super(name,
            path: 'liked-items-blog-sub-category-page',
            args: LikedItemsBlogSubCategoryRouteArgs(key: key, title: title));

  static const String name = 'LikedItemsBlogSubCategoryRoute';
}

class LikedItemsBlogSubCategoryRouteArgs {
  const LikedItemsBlogSubCategoryRouteArgs({this.key, required this.title});

  final _i28.Key? key;

  final String title;
}

class LikedItemsBlogReaderRoute
    extends _i1.PageRouteInfo<LikedItemsBlogReaderRouteArgs> {
  LikedItemsBlogReaderRoute(
      {_i28.Key? key,
      required _i31.Blog blog,
      required _i32.BlogReaderTabType blogReaderTabType,
      bool enableAudioPreviewPadding = true})
      : super(name,
            path: 'blog-reader-page',
            args: LikedItemsBlogReaderRouteArgs(
                key: key,
                blog: blog,
                blogReaderTabType: blogReaderTabType,
                enableAudioPreviewPadding: enableAudioPreviewPadding));

  static const String name = 'LikedItemsBlogReaderRoute';
}

class LikedItemsBlogReaderRouteArgs {
  const LikedItemsBlogReaderRouteArgs(
      {this.key,
      required this.blog,
      required this.blogReaderTabType,
      this.enableAudioPreviewPadding = true});

  final _i28.Key? key;

  final _i31.Blog blog;

  final _i32.BlogReaderTabType blogReaderTabType;

  final bool enableAudioPreviewPadding;
}

class LikedItemsWallpaperExpandedRoute
    extends _i1.PageRouteInfo<LikedItemsWallpaperExpandedRouteArgs> {
  LikedItemsWallpaperExpandedRoute(
      {_i28.Key? key,
      required _i30.WallpaperEvent wallpaperEvent,
      bool enableAudioPreviewPadding = true})
      : super(name,
            path: 'wallpaper-expanded-page',
            args: LikedItemsWallpaperExpandedRouteArgs(
                key: key,
                wallpaperEvent: wallpaperEvent,
                enableAudioPreviewPadding: enableAudioPreviewPadding));

  static const String name = 'LikedItemsWallpaperExpandedRoute';
}

class LikedItemsWallpaperExpandedRouteArgs {
  const LikedItemsWallpaperExpandedRouteArgs(
      {this.key,
      required this.wallpaperEvent,
      this.enableAudioPreviewPadding = true});

  final _i28.Key? key;

  final _i30.WallpaperEvent wallpaperEvent;

  final bool enableAudioPreviewPadding;
}
