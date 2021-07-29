// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i8;
import 'package:dio/dio.dart' as _i5;
import 'package:firebase_auth/firebase_auth.dart' as _i7;
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i9;
import 'package:injectable/injectable.dart' as _i2;

import 'application/audio/audio_bloc.dart' as _i31;
import 'application/audio_player/audio_player_bloc.dart' as _i3;
import 'application/authentication/authentication_bloc.dart' as _i32;
import 'application/blog/blog_bloc.dart' as _i33;
import 'application/change_password/change_password_bloc.dart' as _i34;
import 'application/dynamic_links/dynamic_links_cubit.dart' as _i35;
import 'application/edit_profile/edit_profile_bloc.dart' as _i36;
import 'application/feedback/feedback_bloc.dart' as _i37;
import 'application/home_items/home_items_bloc.dart' as _i38;
import 'application/liked_items/liked_items_bloc.dart' as _i28;
import 'application/search/search_bloc.dart' as _i29;
import 'application/wallpaper/wallpaper_bloc.dart' as _i30;
import 'domain/audio/i_audio_facade.dart' as _i10;
import 'domain/authentication/i_auth_facade.dart' as _i12;
import 'domain/blog/i_blog_facade.dart' as _i14;
import 'domain/core/i_dynamic_links_facade.dart' as _i16;
import 'domain/feedback/i_feedback_facade.dart' as _i18;
import 'domain/home_items/i_home_items_facade.dart' as _i20;
import 'domain/liked_items/i_liked_items_facade.dart' as _i22;
import 'domain/search/i_search_facade.dart' as _i24;
import 'domain/wallpaper/i_wallpaper_facade.dart' as _i26;
import 'infrastructure/audio/audio_facade.dart' as _i11;
import 'infrastructure/authentication/auth_facade.dart' as _i13;
import 'infrastructure/blog/blog_facade.dart' as _i15;
import 'infrastructure/core/connection_status_singleton.dart' as _i4;
import 'infrastructure/core/dynamic_links_facade.dart' as _i17;
import 'infrastructure/core/injectable_module.dart' as _i39;
import 'infrastructure/feedback/feedback_facade.dart' as _i19;
import 'infrastructure/home_items/home_items_facade.dart' as _i21;
import 'infrastructure/liked_items/liked_items_facade.dart' as _i23;
import 'infrastructure/search/search_facade.dart' as _i25;
import 'infrastructure/wallpaper/wallpaper_facade.dart'
    as _i27; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final injectableModule = _$InjectableModule();
  gh.lazySingleton<_i3.AudioPlayerBloc>(() => _i3.AudioPlayerBloc());
  gh.lazySingleton<_i4.ConnectionStatusSingleton>(
      () => _i4.ConnectionStatusSingleton());
  gh.lazySingleton<_i5.Dio>(() => injectableModule.dio);
  gh.lazySingleton<_i6.FacebookAuth>(() => injectableModule.facebookAuth);
  gh.lazySingleton<_i7.FirebaseAuth>(() => injectableModule.firebaseAuth);
  gh.lazySingleton<_i8.FirebaseFirestore>(
      () => injectableModule.firebaseFirestore);
  gh.lazySingleton<_i9.GoogleSignIn>(() => injectableModule.googleSignIn);
  gh.lazySingleton<_i10.IAudioFacade>(() => _i11.AudioFacade(get<_i5.Dio>()));
  gh.lazySingleton<_i12.IAuthFacade>(() => _i13.AuthFacade(
      get<_i7.FirebaseAuth>(),
      get<_i8.FirebaseFirestore>(),
      get<_i9.GoogleSignIn>(),
      get<_i6.FacebookAuth>()));
  gh.lazySingleton<_i14.IBlogFacade>(() => _i15.BlogFacade(get<_i5.Dio>()));
  gh.lazySingleton<_i16.IDynamicLinksFacade>(() => _i17.DynamicLinksFacade());
  gh.lazySingleton<_i18.IFeedbackFacade>(
      () => _i19.FeedbackFacade(get<_i5.Dio>()));
  gh.lazySingleton<_i20.IHomeItemsFacade>(
      () => _i21.HomeItemsFacade(get<_i5.Dio>()));
  gh.lazySingleton<_i22.ILikedItemsFacade>(
      () => _i23.LikedItemsFacade(get<_i5.Dio>()));
  gh.lazySingleton<_i24.ISearchFacade>(() => _i25.SearchFacade(get<_i5.Dio>()));
  gh.lazySingleton<_i26.IWallpaperFacade>(
      () => _i27.WallpaperFacade(get<_i5.Dio>()));
  gh.lazySingleton<_i28.LikedItemsBloc>(
      () => _i28.LikedItemsBloc(get<_i22.ILikedItemsFacade>()));
  gh.lazySingleton<_i29.SearchBloc>(
      () => _i29.SearchBloc(get<_i24.ISearchFacade>()));
  gh.lazySingleton<_i30.WallpaperBloc>(
      () => _i30.WallpaperBloc(get<_i26.IWallpaperFacade>()));
  gh.lazySingleton<_i31.AudioBloc>(
      () => _i31.AudioBloc(get<_i10.IAudioFacade>()));
  gh.lazySingleton<_i32.AuthenticationBloc>(
      () => _i32.AuthenticationBloc(get<_i12.IAuthFacade>()));
  gh.lazySingleton<_i33.BlogBloc>(() => _i33.BlogBloc(get<_i14.IBlogFacade>()));
  gh.lazySingleton<_i34.ChangePasswordBloc>(
      () => _i34.ChangePasswordBloc(get<_i12.IAuthFacade>()));
  gh.lazySingleton<_i35.DynamicLinksCubit>(
      () => _i35.DynamicLinksCubit(get<_i16.IDynamicLinksFacade>()));
  gh.lazySingleton<_i36.EditProfileBloc>(
      () => _i36.EditProfileBloc(get<_i12.IAuthFacade>()));
  gh.factory<_i37.FeedbackBloc>(
      () => _i37.FeedbackBloc(get<_i18.IFeedbackFacade>()));
  gh.lazySingleton<_i38.HomeItemsBloc>(
      () => _i38.HomeItemsBloc(get<_i20.IHomeItemsFacade>()));
  return get;
}

class _$InjectableModule extends _i39.InjectableModule {}
