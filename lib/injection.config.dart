// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i9;
import 'package:dio/dio.dart' as _i6;
import 'package:firebase_auth/firebase_auth.dart' as _i8;
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart' as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i10;
import 'package:injectable/injectable.dart' as _i2;

import 'application/audio/audio_bloc.dart' as _i18;
import 'application/audio_player/audio_player_bloc.dart' as _i3;
import 'application/authentication/authentication_bloc.dart' as _i19;
import 'application/blog/blog_bloc.dart' as _i4;
import 'application/wallpaper/wallpaper_bloc.dart' as _i17;
import 'domain/audio/i_audio_facade.dart' as _i11;
import 'domain/authentication/i_auth_facade.dart' as _i13;
import 'domain/blog/i_blog_facade.dart' as _i5;
import 'domain/wallpaper/i_wallpaper_facade.dart' as _i15;
import 'infrastructure/audio/audio_facade.dart' as _i12;
import 'infrastructure/authentication/auth_facade.dart' as _i14;
import 'infrastructure/core/injectable_module.dart' as _i20;
import 'infrastructure/wallpaper/wallpaper_facade.dart'
    as _i16; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final injectableModule = _$InjectableModule();
  gh.lazySingleton<_i3.AudioPlayerBloc>(() => _i3.AudioPlayerBloc());
  gh.lazySingleton<_i4.BlogBloc>(() => _i4.BlogBloc(get<_i5.IBlogFacade>()));
  gh.lazySingleton<_i6.Dio>(() => injectableModule.dio);
  gh.lazySingleton<_i7.FacebookAuth>(() => injectableModule.facebookAuth);
  gh.lazySingleton<_i8.FirebaseAuth>(() => injectableModule.firebaseAuth);
  gh.lazySingleton<_i9.FirebaseFirestore>(
      () => injectableModule.firebaseFirestore);
  gh.lazySingleton<_i10.GoogleSignIn>(() => injectableModule.googleSignIn);
  gh.lazySingleton<_i11.IAudioFacade>(() => _i12.AudioFacade(get<_i6.Dio>()));
  gh.lazySingleton<_i13.IAuthFacade>(() => _i14.AuthFacade(
      get<_i8.FirebaseAuth>(),
      get<_i9.FirebaseFirestore>(),
      get<_i10.GoogleSignIn>(),
      get<_i7.FacebookAuth>()));
  gh.lazySingleton<_i15.IWallpaperFacade>(
      () => _i16.WallpaperFacade(get<_i6.Dio>()));
  gh.lazySingleton<_i17.WallpaperBloc>(
      () => _i17.WallpaperBloc(get<_i15.IWallpaperFacade>()));
  gh.lazySingleton<_i18.AudioBloc>(
      () => _i18.AudioBloc(get<_i11.IAudioFacade>()));
  gh.lazySingleton<_i19.AuthenticationBloc>(
      () => _i19.AuthenticationBloc(get<_i13.IAuthFacade>()));
  return get;
}

class _$InjectableModule extends _i20.InjectableModule {}
