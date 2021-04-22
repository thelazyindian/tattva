// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i19;

import '../domain/blog/blog.dart' as _i21;
import '../domain/core/tattva_audio.dart' as _i20;
import '../pages/audio/audio_page.dart' as _i8;
import '../pages/audio_sub_category/audio_sub_category_page.dart' as _i9;
import '../pages/authentication/forgot_password_page.dart' as _i6;
import '../pages/authentication/login_page.dart' as _i5;
import '../pages/authentication/register_page.dart' as _i4;
import '../pages/blog/blog_page.dart' as _i15;
import '../pages/blog_reader/blog_reader_page.dart' as _i16;
import '../pages/blog_sub_category/blog_sub_category_page.dart' as _i14;
import '../pages/edit_profile/edit_profile_page.dart' as _i18;
import '../pages/home/home_page.dart' as _i7;
import '../pages/landing/landing_page.dart' as _i3;
import '../pages/liked_items/liked_items_page.dart' as _i12;
import '../pages/profile/profile_page.dart' as _i17;
import '../pages/splash/splash_page.dart' as _i2;
import '../pages/wallpaper/wallpaper_page.dart' as _i10;
import '../pages/wallpaper_expanded/wallpaper_expanded_page.dart' as _i11;
import '../pages/wallpaper_sub_category/wallpaper_sub_category_page.dart'
    as _i13;

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
    LikedItemsWrapperRoute.name: (entry) {
      return _i1.MaterialPageX(
          entry: entry, child: const _i1.EmptyRouterPage());
    },
    BlogWrapperRoute.name: (entry) {
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
              bannerImage: args.bannerImage));
    },
    WallpaperRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i10.WallpaperPage());
    },
    WallpaperExpandedRoute.name: (entry) {
      var args = entry.routeData.argsAs<WallpaperExpandedRouteArgs>();
      return _i1.MaterialPageX(
          entry: entry,
          child: _i11.WallpaperExpandedPage(
              key: args.key, wallpaperIdx: args.wallpaperIdx));
    },
    LikedItemsRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i12.LikedItemsPage());
    },
    LikedItemsAudioSubCategoryRoute.name: (entry) {
      var args = entry.routeData.argsAs<LikedItemsAudioSubCategoryRouteArgs>();
      return _i1.MaterialPageX(
          entry: entry,
          child: _i9.AudioSubCategoryPage(
              key: args.key,
              title: args.title,
              audios: args.audios,
              bannerImage: args.bannerImage));
    },
    LikedItemsWallpaperSubCategoryRoute.name: (entry) {
      var args =
          entry.routeData.argsAs<LikedItemsWallpaperSubCategoryRouteArgs>();
      return _i1.MaterialPageX(
          entry: entry,
          child:
              _i13.WallpaperSubCategoryPage(key: args.key, title: args.title));
    },
    LikedItemsBlogSubCategoryRoute.name: (entry) {
      var args = entry.routeData.argsAs<LikedItemsBlogSubCategoryRouteArgs>();
      return _i1.MaterialPageX(
          entry: entry,
          child: _i14.BlogSubCategoryPage(key: args.key, title: args.title));
    },
    BlogRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i15.BlogPage());
    },
    BlogReaderRoute.name: (entry) {
      var args = entry.routeData.argsAs<BlogReaderRouteArgs>();
      return _i1.MaterialPageX(
          entry: entry,
          child: _i16.BlogReaderPage(key: args.key, blog: args.blog));
    },
    ProfileRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i17.ProfilePage());
    },
    EditProfileRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i18.EditProfilePage());
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
                    _i1.RouteConfig(LikedItemsWrapperRoute.name,
                        path: 'empty-router-page',
                        children: [
                          _i1.RouteConfig(LikedItemsRoute.name, path: ''),
                          _i1.RouteConfig(LikedItemsAudioSubCategoryRoute.name,
                              path: 'audio-sub-category-page'),
                          _i1.RouteConfig(
                              LikedItemsWallpaperSubCategoryRoute.name,
                              path: 'wallpaper-sub-category-page'),
                          _i1.RouteConfig(LikedItemsBlogSubCategoryRoute.name,
                              path: 'blog-sub-category-page')
                        ]),
                    _i1.RouteConfig(BlogWrapperRoute.name,
                        path: 'empty-router-page',
                        children: [
                          _i1.RouteConfig(BlogRoute.name, path: ''),
                          _i1.RouteConfig(BlogReaderRoute.name,
                              path: 'blog-reader-page')
                        ])
                  ]),
              _i1.RouteConfig(ProfileWrapperRoute.name,
                  path: 'empty-router-page',
                  children: [
                    _i1.RouteConfig(ProfileRoute.name, path: ''),
                    _i1.RouteConfig(EditProfileRoute.name,
                        path: 'edit-profile-page')
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

class LikedItemsWrapperRoute extends _i1.PageRouteInfo {
  const LikedItemsWrapperRoute({List<_i1.PageRouteInfo>? children})
      : super(name, path: 'empty-router-page', initialChildren: children);

  static const String name = 'LikedItemsWrapperRoute';
}

class BlogWrapperRoute extends _i1.PageRouteInfo {
  const BlogWrapperRoute({List<_i1.PageRouteInfo>? children})
      : super(name, path: 'empty-router-page', initialChildren: children);

  static const String name = 'BlogWrapperRoute';
}

class AudioRoute extends _i1.PageRouteInfo {
  const AudioRoute() : super(name, path: '');

  static const String name = 'AudioRoute';
}

class AudioSubCategoryRoute
    extends _i1.PageRouteInfo<AudioSubCategoryRouteArgs> {
  AudioSubCategoryRoute(
      {_i19.Key? key,
      required String title,
      required List<_i20.TattvaAudio> audios,
      String? bannerImage})
      : super(name,
            path: 'audio-sub-category-page',
            args: AudioSubCategoryRouteArgs(
                key: key,
                title: title,
                audios: audios,
                bannerImage: bannerImage));

  static const String name = 'AudioSubCategoryRoute';
}

class AudioSubCategoryRouteArgs {
  const AudioSubCategoryRouteArgs(
      {this.key, required this.title, required this.audios, this.bannerImage});

  final _i19.Key? key;

  final String title;

  final List<_i20.TattvaAudio> audios;

  final String? bannerImage;
}

class WallpaperRoute extends _i1.PageRouteInfo {
  const WallpaperRoute() : super(name, path: '');

  static const String name = 'WallpaperRoute';
}

class WallpaperExpandedRoute
    extends _i1.PageRouteInfo<WallpaperExpandedRouteArgs> {
  WallpaperExpandedRoute({_i19.Key? key, required int wallpaperIdx})
      : super(name,
            path: 'wallpaper-expanded-page',
            args: WallpaperExpandedRouteArgs(
                key: key, wallpaperIdx: wallpaperIdx));

  static const String name = 'WallpaperExpandedRoute';
}

class WallpaperExpandedRouteArgs {
  const WallpaperExpandedRouteArgs({this.key, required this.wallpaperIdx});

  final _i19.Key? key;

  final int wallpaperIdx;
}

class LikedItemsRoute extends _i1.PageRouteInfo {
  const LikedItemsRoute() : super(name, path: '');

  static const String name = 'LikedItemsRoute';
}

class LikedItemsAudioSubCategoryRoute
    extends _i1.PageRouteInfo<LikedItemsAudioSubCategoryRouteArgs> {
  LikedItemsAudioSubCategoryRoute(
      {_i19.Key? key,
      required String title,
      required List<_i20.TattvaAudio> audios,
      String? bannerImage})
      : super(name,
            path: 'audio-sub-category-page',
            args: LikedItemsAudioSubCategoryRouteArgs(
                key: key,
                title: title,
                audios: audios,
                bannerImage: bannerImage));

  static const String name = 'LikedItemsAudioSubCategoryRoute';
}

class LikedItemsAudioSubCategoryRouteArgs {
  const LikedItemsAudioSubCategoryRouteArgs(
      {this.key, required this.title, required this.audios, this.bannerImage});

  final _i19.Key? key;

  final String title;

  final List<_i20.TattvaAudio> audios;

  final String? bannerImage;
}

class LikedItemsWallpaperSubCategoryRoute
    extends _i1.PageRouteInfo<LikedItemsWallpaperSubCategoryRouteArgs> {
  LikedItemsWallpaperSubCategoryRoute({_i19.Key? key, required String title})
      : super(name,
            path: 'wallpaper-sub-category-page',
            args: LikedItemsWallpaperSubCategoryRouteArgs(
                key: key, title: title));

  static const String name = 'LikedItemsWallpaperSubCategoryRoute';
}

class LikedItemsWallpaperSubCategoryRouteArgs {
  const LikedItemsWallpaperSubCategoryRouteArgs(
      {this.key, required this.title});

  final _i19.Key? key;

  final String title;
}

class LikedItemsBlogSubCategoryRoute
    extends _i1.PageRouteInfo<LikedItemsBlogSubCategoryRouteArgs> {
  LikedItemsBlogSubCategoryRoute({_i19.Key? key, required String title})
      : super(name,
            path: 'blog-sub-category-page',
            args: LikedItemsBlogSubCategoryRouteArgs(key: key, title: title));

  static const String name = 'LikedItemsBlogSubCategoryRoute';
}

class LikedItemsBlogSubCategoryRouteArgs {
  const LikedItemsBlogSubCategoryRouteArgs({this.key, required this.title});

  final _i19.Key? key;

  final String title;
}

class BlogRoute extends _i1.PageRouteInfo {
  const BlogRoute() : super(name, path: '');

  static const String name = 'BlogRoute';
}

class BlogReaderRoute extends _i1.PageRouteInfo<BlogReaderRouteArgs> {
  BlogReaderRoute({_i19.Key? key, required _i21.Blog blog})
      : super(name,
            path: 'blog-reader-page',
            args: BlogReaderRouteArgs(key: key, blog: blog));

  static const String name = 'BlogReaderRoute';
}

class BlogReaderRouteArgs {
  const BlogReaderRouteArgs({this.key, required this.blog});

  final _i19.Key? key;

  final _i21.Blog blog;
}

class ProfileRoute extends _i1.PageRouteInfo {
  const ProfileRoute() : super(name, path: '');

  static const String name = 'ProfileRoute';
}

class EditProfileRoute extends _i1.PageRouteInfo {
  const EditProfileRoute() : super(name, path: 'edit-profile-page');

  static const String name = 'EditProfileRoute';
}
