import 'package:auto_route/auto_route.dart';
import 'package:tattva/pages/audio/audio_page.dart';
import 'package:tattva/pages/audio_sub_category/audio_sub_category_page.dart';
import 'package:tattva/pages/authentication/forgot_password_page.dart';
import 'package:tattva/pages/authentication/login_page.dart';
import 'package:tattva/pages/authentication/register_page.dart';
import 'package:tattva/pages/blog/blog_page.dart';
import 'package:tattva/pages/blog_reader/blog_reader_page.dart';
import 'package:tattva/pages/edit_profile/edit_profile_page.dart';
import 'package:tattva/pages/home/home_page.dart';
import 'package:tattva/pages/landing/landing_page.dart';
import 'package:tattva/pages/profile/profile_page.dart';
import 'package:tattva/pages/splash/splash_page.dart';
import 'package:tattva/pages/wallpaper/wallpaper_page.dart';
import 'package:tattva/pages/wallpaper_expanded/wallpaper_expanded_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: SplashPage,
      initial: true,
    ),
    AutoRoute(
      name: 'LandingWrapperRoute',
      page: EmptyRouterPage,
      children: [
        AutoRoute(page: LandingPage, initial: true),
        AutoRoute(page: RegisterPage),
        AutoRoute(page: LoginPage),
        AutoRoute(page: ForgotPasswordPage),
      ],
    ),
    AutoRoute(
      name: 'HomeWrapperRoute',
      page: EmptyRouterPage,
      children: [
        AutoRoute(
          page: HomePage,
          initial: true,
          usesTabsRouter: true,
          children: [
            AutoRoute(
              name: 'AudioWrapperRoute',
              page: EmptyRouterPage,
              children: [
                AutoRoute(page: AudioPage, initial: true),
                AutoRoute(page: AudioSubCategoryPage),
              ],
            ),
            AutoRoute(
              name: 'WallpaperWrapperRoute',
              page: EmptyRouterPage,
              children: [
                AutoRoute(page: WallpaperPage, initial: true),
                AutoRoute(page: WallpaperExpandedPage),
              ],
            ),
            AutoRoute(
              name: 'BlogWrapperRoute',
              page: EmptyRouterPage,
              children: [
                AutoRoute(page: BlogPage, initial: true),
                AutoRoute(page: BlogReaderPage),
              ],
            ),
          ],
        ),
        AutoRoute(
          name: 'ProfileWrapperRoute',
          page: EmptyRouterPage,
          children: [
            AutoRoute(page: ProfilePage, initial: true),
            AutoRoute(page: EditProfilePage),
          ],
        ),
      ],
    ),
  ],
)
class $AppRouter {}
