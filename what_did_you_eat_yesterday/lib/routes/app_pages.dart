import 'package:get/get.dart';
import 'package:what_did_you_eat_yesterday/bindings/splash_binding.dart';
import 'package:what_did_you_eat_yesterday/routes/app_routes.dart';
import 'package:what_did_you_eat_yesterday/views/onBoarding/splash_screen.dart';

class AppPages {
  static final appPages = [
    GetPage(
      name: AppRoutes.splash,
      page: () => SplashScreen(),
      binding: SplashBinding(),
    ),
  ];
}
