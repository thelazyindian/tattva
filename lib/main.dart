import 'package:dio/dio.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';
import 'package:tattva/injection.dart';
import 'package:tattva/router/router.gr.dart';
import 'package:tattva/utils/styles.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection(Environment.dev);
  await Firebase.initializeApp();
  await FlutterDownloader.initialize(debug: true);
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
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
      theme: appTheme,
    );
  }
}
