// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i7;
import 'package:dio/dio.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i6;
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i8;
import 'package:injectable/injectable.dart' as _i2;

import 'application/audio/audio_bloc.dart' as _i26;
import 'application/audio_player/audio_player_bloc.dart' as _i3;
import 'application/authentication/authentication_bloc.dart' as _i27;
import 'application/blog/blog_bloc.dart' as _i28;
import 'application/home_items/home_items_bloc.dart' as _i29;
import 'application/liked_items/liked_items_bloc.dart' as _i23;
import 'application/search/search_bloc.dart' as _i24;
import 'application/wallpaper/wallpaper_bloc.dart' as _i25;
import 'domain/audio/i_audio_facade.dart' as _i9;
import 'domain/authentication/i_auth_facade.dart' as _i11;
import 'domain/blog/i_blog_facade.dart' as _i13;
import 'domain/home_items/i_home_items_facade.dart' as _i15;
import 'domain/liked_items/i_liked_items_facade.dart' as _i17;
import 'domain/search/i_search_facade.dart' as _i19;
import 'domain/wallpaper/i_wallpaper_facade.dart' as _i21;
import 'infrastructure/audio/audio_facade.dart' as _i10;
import 'infrastructure/authentication/auth_facade.dart' as _i12;
import 'infrastructure/blog/blog_facade.dart' as _i14;
import 'infrastructure/core/injectable_module.dart' as _i30;
import 'infrastructure/home_items/home_items_facade.dart' as _i16;
import 'infrastructure/liked_items/liked_items_facade.dart' as _i18;
import 'infrastructure/search/search_facade.dart' as _i20;
import 'infrastructure/wallpaper/wallpaper_facade.dart'
    as _i22; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final injectableModule = _$InjectableModule();
  gh.lazySingleton<_i3.AudioPlayerBloc>(() => _i3.AudioPlayerBloc());
  gh.lazySingleton<_i4.Dio>(() => injectableModule.dio);
  gh.lazySingleton<_i5.FacebookAuth>(() => injectableModule.facebookAuth);
  gh.lazySingleton<_i6.FirebaseAuth>(() => injectableModule.firebaseAuth);
  gh.lazySingleton<_i7.FirebaseFirestore>(
      () => injectableModule.firebaseFirestore);
  gh.lazySingleton<_i8.GoogleSignIn>(() => injectableModule.googleSignIn);
  gh.lazySingleton<_i9.IAudioFacade>(() => _i10.AudioFacade(get<_i4.Dio>()));
  gh.lazySingleton<_i11.IAuthFacade>(() => _i12.AuthFacade(
      get<_i6.FirebaseAuth>(),
      get<_i7.FirebaseFirestore>(),
      get<_i8.GoogleSignIn>(),
      get<_i5.FacebookAuth>()));
  gh.lazySingleton<_i13.IBlogFacade>(() => _i14.BlogFacade(get<_i4.Dio>()));
  gh.lazySingleton<_i15.IHomeItemsFacade>(
      () => _i16.HomeItemsFacade(get<_i4.Dio>()));
  gh.lazySingleton<_i17.ILikedItemsFacade>(
      () => _i18.LikedItemsFacade(get<_i4.Dio>()));
  gh.lazySingleton<_i19.ISearchFacade>(() => _i20.SearchFacade(get<_i4.Dio>()));
  gh.lazySingleton<_i21.IWallpaperFacade>(
      () => _i22.WallpaperFacade(get<_i4.Dio>()));
  gh.lazySingleton<_i23.LikedItemsBloc>(
      () => _i23.LikedItemsBloc(get<_i17.ILikedItemsFacade>()));
  gh.lazySingleton<_i24.SearchBloc>(
      () => _i24.SearchBloc(get<_i19.ISearchFacade>()));
  gh.lazySingleton<_i25.WallpaperBloc>(
      () => _i25.WallpaperBloc(get<_i21.IWallpaperFacade>()));
  gh.lazySingleton<_i26.AudioBloc>(
      () => _i26.AudioBloc(get<_i9.IAudioFacade>()));
  gh.lazySingleton<_i27.AuthenticationBloc>(
      () => _i27.AuthenticationBloc(get<_i11.IAuthFacade>()));
  gh.lazySingleton<_i28.BlogBloc>(() => _i28.BlogBloc(get<_i13.IBlogFacade>()));
  gh.lazySingleton<_i29.HomeItemsBloc>(
      () => _i29.HomeItemsBloc(get<_i15.IHomeItemsFacade>()));
  return get;
}

class _$InjectableModule extends _i30.InjectableModule {}
