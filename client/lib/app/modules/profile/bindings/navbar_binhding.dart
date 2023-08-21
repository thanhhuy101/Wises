import 'package:get/get.dart';
import 'package:wises/app/modules/profile/controllers/navbar_controller.dart';

class NavBarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NavBarController>(
      () => NavBarController(),
    );
  }
}