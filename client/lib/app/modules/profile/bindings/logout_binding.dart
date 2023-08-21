import 'package:get/get.dart';
import 'package:wises/app/modules/profile/controllers/logout_controller.dart';

class LogoutBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LogoutController>(
      () => LogoutController(),
    );
  }
}
