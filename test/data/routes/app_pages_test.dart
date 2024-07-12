import 'package:get/get.dart';
import 'package:mockito/mockito.dart';
import 'package:news_app/data/bindings/root_binding.dart';
import 'package:news_app/data/controller/root/root_controller.dart';
import 'package:news_app/data/di/di.dart' as di;
import 'package:news_app/data/routes/routes.dart';
import 'package:news_app/presentation/pages/home_page/home_page.dart';
import 'package:news_app/presentation/pages/splash_page/splash_page.dart';
import 'package:test/test.dart';

part 'app_routes.dart';

class MockRootBinding extends Mock implements RootBinding {}

class MockRootController extends Mock implements RootController {}

void main() {
  setUpAll(() {
    di.setup(skipInit: true);
    Get.put(RootController());
  });
  group('AppPages', () {
    test('initial route is set to SplashPage', () {
      expect(AppPages.initial, Routes.SPALSH);
    });

    test('routes are defined correctly', () {
      final routes = AppPages.routes;

      expect(routes.length, 3); // Change this number if you add/remove routes

      routes.forEach((route) {
        expect(route.name, isNotNull);
        expect(route.page, isNotNull);
        expect(route.binding, isNotNull);
        expect(route.participatesInRootNavigator, true);
        expect(route.preventDuplicates, true);
      });
    });

    test('HomePage route is defined correctly', () {
      final homePageRoute =
          AppPages.routes.firstWhere((route) => route.name == Routes.HOME);

      expect(homePageRoute.name, Routes.HOME);
      expect(homePageRoute.page(), isA<HomePage>());
      expect(homePageRoute.binding, isA<RootBinding>());
      expect(homePageRoute.participatesInRootNavigator, true);
      expect(homePageRoute.preventDuplicates, true);
    });

    test('SplashPage route uses RootBinding', () {

      final splashPageRoute =
          AppPages.routes.firstWhere((route) => route.name == Routes.SPALSH);

      final splashPage = splashPageRoute.page();

      expect(splashPage, isA<SplashPage>());
    });
  });
}
