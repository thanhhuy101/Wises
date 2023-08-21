import 'package:get/get.dart';

import '../controllers/tab_navigation_controller.dart';

class TabNavigationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NotchBottomBarController>(
      () => NotchBottomBarController(),
    );
  }
}
