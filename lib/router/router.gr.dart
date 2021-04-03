// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i13;

import '../domain/audio/audio_sub_category.dart' as _i14;
import '../pages/audio/audio_page.dart' as _i9;
import '../pages/audio_sub_category/audio_sub_category_page.dart' as _i10;
import '../pages/authentication/forgot_password_page.dart' as _i6;
import '../pages/authentication/login_page.dart' as _i5;
import '../pages/authentication/register_page.dart' as _i4;
import '../pages/edit_profile/edit_profile_page.dart' as _i12;
import '../pages/home/home_page.dart' as _i7;
import '../pages/landing/landing_page.dart' as _i3;
import '../pages/profile/profile_page.dart' as _i11;
import '../pages/splash/splash_page.dart' as _i2;
import '../pages/wallpaper/wallpaper_page.dart' as _i8;

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
    WallpaperRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i8.WallpaperPage());
    },
    AudioRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i9.AudioPage());
    },
    AudioSubCategoryRoute.name: (entry) {
      var args = entry.routeData.argsAs<AudioSubCategoryRouteArgs>();
      return _i1.MaterialPageX(
          entry: entry,
          child: _i10.AudioSubCategoryPage(
              key: args.key, audioSubCategory: args.audioSubCategory));
    },
    ProfileRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i11.ProfilePage());
    },
    EditProfileRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i12.EditProfilePage());
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
                    _i1.RouteConfig(WallpaperRoute.name, path: 'wallpaper-page')
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

class WallpaperRoute extends _i1.PageRouteInfo {
  const WallpaperRoute() : super(name, path: 'wallpaper-page');

  static const String name = 'WallpaperRoute';
}

class AudioRoute extends _i1.PageRouteInfo {
  const AudioRoute() : super(name, path: '');

  static const String name = 'AudioRoute';
}

class AudioSubCategoryRoute
    extends _i1.PageRouteInfo<AudioSubCategoryRouteArgs> {
  AudioSubCategoryRoute(
      {_i13.Key? key, required _i14.AudioSubCategory audioSubCategory})
      : super(name,
            path: 'audio-sub-category-page',
            args: AudioSubCategoryRouteArgs(
                key: key, audioSubCategory: audioSubCategory));

  static const String name = 'AudioSubCategoryRoute';
}

class AudioSubCategoryRouteArgs {
  const AudioSubCategoryRouteArgs({this.key, required this.audioSubCategory});

  final _i13.Key? key;

  final _i14.AudioSubCategory audioSubCategory;
}

class ProfileRoute extends _i1.PageRouteInfo {
  const ProfileRoute() : super(name, path: '');

  static const String name = 'ProfileRoute';
}

class EditProfileRoute extends _i1.PageRouteInfo {
  const EditProfileRoute() : super(name, path: 'edit-profile-page');

  static const String name = 'EditProfileRoute';
}