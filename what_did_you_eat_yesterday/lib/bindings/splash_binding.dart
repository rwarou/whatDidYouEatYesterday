import 'package:get/get.dart';
import 'package:what_did_you_eat_yesterday/controllers/splash_controller.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(SplashController());
  }
}
