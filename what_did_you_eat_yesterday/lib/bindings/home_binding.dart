import 'package:get/get.dart';
import 'package:what_did_you_eat_yesterday/controllers/controllers.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(HomeController(), permanent: true);
  }
}
