import 'package:dio/dio.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';
import 'package:tattva/injection.dart';
import 'package:tattva/pages/core/custom_scroll_behavior.dart';
import 'package:tattva/router/router.gr.dart';
import 'package:tattva/utils/styles.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection(Environment.dev);
  await Firebase.initializeApp();
  await FlutterDownloader.initialize(debug: true);
  SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle.copyWith(
    statusBarColor: Colors.transparent,
  ));
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: await getTemporaryDirectory(),
  );
  // const stripePublishableKey =
  //     'pk_test_51IqeuUSJ8h7egCoetFqYf5OYliE6mHpxGCc1QkdpLyte3eWtxSwOmRu9g88nuLqemevikomcZZV7nnFhmeWc7wmr00hlGywYET';
  // Stripe.publishableKey = stripePublishableKey;
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _appRouter = AppRouter();

  @override
  void initState() {
    initCacheInterceptor();
    super.initState();
  }

  Future<void> initCacheInterceptor() async {
    final dioCacheIdx = getIt<Dio>()
        .interceptors
        .indexWhere((element) => element is DioCacheInterceptor);
    if (dioCacheIdx == -1) {
      final cacheDir = await getApplicationDocumentsDirectory();
      final options = CacheOptions(
        store: DbCacheStore(databasePath: '${cacheDir.path}/tattva'),
        policy: CachePolicy.request,
        hitCacheOnErrorExcept: [401, 403],
        priority: CachePriority.normal,
        maxStale: const Duration(days: 7),
      );
      getIt<Dio>().interceptors.add(DioCacheInterceptor(options: options));
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      builder: (_, child) => ScrollConfiguration(
        behavior: CustomScrollBehavior(),
        child: child ?? Container(),
      ),
      debugShowCheckedModeBanner: false,
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
      theme: appTheme,
    );
  }
}
