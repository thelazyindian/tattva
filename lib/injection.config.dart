// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i7;
import 'package:cloud_functions/cloud_functions.dart' as _i8;
import 'package:dio/dio.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i6;
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i9;
import 'package:injectable/injectable.dart' as _i2;

import 'application/audio/audio_bloc.dart' as _i17;
import 'application/audio_player/audio_player_bloc.dart' as _i3;
import 'application/authentication/authentication_bloc.dart' as _i18;
import 'application/wallpaper/wallpaper_bloc.dart' as _i16;
import 'domain/audio/i_audio_facade.dart' as _i10;
import 'domain/authentication/i_auth_facade.dart' as _i12;
import 'domain/wallpaper/i_wallpaper_facade.dart' as _i14;
import 'infrastructure/audio/audio_facade.dart' as _i11;
import 'infrastructure/authentication/auth_facade.dart' as _i13;
import 'infrastructure/core/injectable_module.dart' as _i19;
import 'infrastructure/wallpaper/wallpaper_facade.dart'
    as _i15; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i8.FirebaseFunctions>(
      () => injectableModule.firebaseFunctions);
  gh.lazySingleton<_i9.GoogleSignIn>(() => injectableModule.googleSignIn);
  gh.lazySingleton<_i10.IAudioFacade>(
      () => _i11.AudioFacade(get<_i8.FirebaseFunctions>()));
  gh.lazySingleton<_i12.IAuthFacade>(() => _i13.AuthFacade(
      get<_i6.FirebaseAuth>(),
      get<_i7.FirebaseFirestore>(),
      get<_i9.GoogleSignIn>(),
      get<_i5.FacebookAuth>()));
  gh.lazySingleton<_i14.IWallpaperFacade>(
      () => _i15.WallpaperFacade(get<_i4.Dio>()));
  gh.lazySingleton<_i16.WallpaperBloc>(
      () => _i16.WallpaperBloc(get<_i14.IWallpaperFacade>()));
  gh.lazySingleton<_i17.AudioBloc>(
      () => _i17.AudioBloc(get<_i10.IAudioFacade>()));
  gh.lazySingleton<_i18.AuthenticationBloc>(
      () => _i18.AuthenticationBloc(get<_i12.IAuthFacade>()));
  return get;
}

class _$InjectableModule extends _i19.InjectableModule {}
