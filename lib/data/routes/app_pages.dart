import 'package:get/get.dart';
import 'package:news_app/data/bindings/root_binding.dart';
import 'package:news_app/presentation/pages/home_page/home_page.dart';
import 'package:news_app/presentation/pages/news_page/news_page.dart';
import 'package:news_app/presentation/pages/splash_page/splash_page.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const initial = Routes.SPALSH;

  static final routes = [
    GetPage(
      name: Routes.SPALSH,
      page: () =>  SplashPage(),
      binding: RootBinding(),
      participatesInRootNavigator: true,
      preventDuplicates: true,
    ),
    GetPage(
      name: Routes.HOME,
      page: () =>  HomePage(),
      binding: RootBinding(),
      participatesInRootNavigator: true,
      preventDuplicates: true,
    ),
    GetPage(
      name: Routes.NEWS,
      page: () =>  NewsPage(),
      binding: RootBinding(),
      participatesInRootNavigator: true,
      preventDuplicates: true,
    ),
  ];
}
