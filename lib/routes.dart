import 'package:design_app/views/splash/binding.dart';
import 'package:design_app/views/splash/index.dart';
import 'package:get/get.dart';

abstract class AppRouting {
  static List<GetPage> routes() => [
        GetPage(
          name: Pages.splash.value,
          page: () => SplashPage(),
          binding: SplashBinding(),
        ),
      ];
}

enum Pages {
  splash,
}

extension PagesExtension on Pages {
  String get value {
    switch (this) {
      case Pages.splash:
        return '/splash';
      default:
        throw 'unnamed route';
    }
  }
}

abstract class Navigation {
  static Pages? getPage(String route) {
    switch (route) {
      case '/splash':
        return Pages.splash;

      default:
        return null;
    }
  }
}
