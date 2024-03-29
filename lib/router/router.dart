import 'package:auto_route/auto_route.dart';
import 'package:tattva/pages/about_us/about_us_page.dart';
import 'package:tattva/pages/audio/audio_page.dart';
import 'package:tattva/pages/audio_sub_category/audio_sub_category_page.dart';
import 'package:tattva/pages/authentication/change_password_page.dart';
import 'package:tattva/pages/authentication/forgot_password_page.dart';
import 'package:tattva/pages/authentication/login_page.dart';
import 'package:tattva/pages/authentication/login_password_page.dart';
import 'package:tattva/pages/authentication/register_page.dart';
import 'package:tattva/pages/blog/blog_page.dart';
import 'package:tattva/pages/blog_reader/blog_reader_page.dart';
import 'package:tattva/pages/edit_profile/edit_profile_page.dart';
import 'package:tattva/pages/feedback/feedback_page.dart';
import 'package:tattva/pages/home/home_page.dart';
import 'package:tattva/pages/home_items/home_items_page.dart';
import 'package:tattva/pages/home_items_blog_sub_category/home_items_blog_sub_category_page.dart';
import 'package:tattva/pages/home_items_wallpaper_sub_category/home_items_wallpaper_sub_category_page.dart';
import 'package:tattva/pages/landing/landing_page.dart';
import 'package:tattva/pages/liked_items/liked_items_page.dart';
import 'package:tattva/pages/liked_items_blog_sub_category/liked_items_blog_sub_category_page.dart';
import 'package:tattva/pages/liked_items_wallpaper_sub_category/liked_items_wallpaper_sub_category_page.dart';
import 'package:tattva/pages/privacy_policy/privacy_policy_page.dart';
import 'package:tattva/pages/profile/profile_page.dart';
import 'package:tattva/pages/search/search_page.dart';
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
              name: 'HomeItemsWrapperRoute',
              page: EmptyRouterPage,
              initial: true,
              children: [
                AutoRoute(page: HomeItemsPage, initial: true),
                AutoRoute(
                  name: 'HomeItemsAudioSubCategoryRoute',
                  page: AudioSubCategoryPage,
                ),
                AutoRoute(
                  name: 'HomeItemsWallpaperSubCategoryRoute',
                  page: HomeItemsWallpaperSubCategoryPage,
                ),
                AutoRoute(
                  name: 'HomeItemsBlogSubCategoryRoute',
                  page: HomeItemsBlogSubCategoryPage,
                ),
                AutoRoute(
                  name: 'HomeItemsBlogReaderRoute',
                  page: BlogReaderPage,
                ),
                AutoRoute(
                  name: 'HomeItemsWallpaperExpandedRoute',
                  page: WallpaperExpandedPage,
                ),
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
            AutoRoute(
              name: 'SearchWrapperRoute',
              page: EmptyRouterPage,
              children: [
                AutoRoute(page: SearchPage, initial: true),
                AutoRoute(
                  name: 'SearchItemsBlogReaderRoute',
                  page: BlogReaderPage,
                ),
                AutoRoute(
                  name: 'SearchItemsWallpaperExpandedRoute',
                  page: WallpaperExpandedPage,
                ),
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
            AutoRoute(
              name: 'ChangePasswordWrapperRoute',
              page: EmptyRouterPage,
              children: [
                AutoRoute(page: ChangePasswordPage, initial: true),
                AutoRoute(page: LoginPasswordPage),
              ],
            ),
            AutoRoute(
              name: 'LikedItemsWrapperRoute',
              page: EmptyRouterPage,
              children: [
                AutoRoute(page: LikedItemsPage, initial: true),
                AutoRoute(
                  name: 'LikedItemsAudioSubCategoryRoute',
                  page: AudioSubCategoryPage,
                ),
                AutoRoute(
                  name: 'LikedItemsWallpaperSubCategoryRoute',
                  page: LikedItemsWallpaperSubCategoryPage,
                ),
                AutoRoute(
                  name: 'LikedItemsBlogSubCategoryRoute',
                  page: LikedItemsBlogSubCategoryPage,
                ),
                AutoRoute(
                  name: 'LikedItemsBlogReaderRoute',
                  page: BlogReaderPage,
                ),
                AutoRoute(
                  name: 'LikedItemsWallpaperExpandedRoute',
                  page: WallpaperExpandedPage,
                ),
              ],
            ),
            AutoRoute(page: FeedbackPage),
            AutoRoute(page: AboutUsPage),
            AutoRoute(page: PrivacyPolicyPage),
          ],
        ),
      ],
    ),
  ],
)
class $AppRouter {}
