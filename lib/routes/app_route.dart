// ignore_for_file: prefer_const_constructors

import 'package:get/get.dart';
import './route_name.dart';
import '../ui/pages/unlock/unlock_page.dart';
import '../ui/pages/splashscreen_page.dart';
import '../ui/pages/unverified_page.dart';
import '../ui/pages/login/login_page.dart';
import '../ui/pages/daftar/daftar1_page.dart';
import '../ui/pages/daftar/daftar2_page.dart';
import '../ui/pages/daftar/daftar3_page.dart';
import '../ui/pages/home/home_page.dart';
import '../ui/pages/detail_panic_button/detail_panic_button_page.dart';

class AppRoute {
  static final pages = [
    GetPage(
      name: RouteName.splashscreenPage,
      page: () => SplashScreenPage(),
    ),
    GetPage(
      name: RouteName.unverifiedPage,
      page: () => UnverifiedPage(),
    ),
    GetPage(
      name: RouteName.loginPage,
      page: () => LoginPage(),
    ),
    GetPage(
      name: RouteName.daftar1Page,
      page: () => Daftar1Page(),
    ),
    GetPage(
      name: RouteName.daftar2Page,
      page: () => Daftar2Page(),
    ),
    GetPage(
      name: RouteName.daftar3Page,
      page: () => Daftar3Page(),
    ),
    GetPage(
      name: RouteName.homePage,
      page: () => HomePage(),
    ),
    GetPage(
      name: RouteName.detailPanicButtonPage,
      page: () => DetailPanicButtonPage(),
    ),
    GetPage(
      name: RouteName.unlockPage,
      page: () => UnlockPage(),
    )
  ];
}
