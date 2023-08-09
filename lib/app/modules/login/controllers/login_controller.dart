import 'package:get/get.dart';
import 'package:wises/app/routes/app_pages.dart';

class LoginController extends GetxController {
  @override
  void onClose() {
    super.onClose();
  }

  void login() {
    // Điều hướng qua trang TabNavigation khi đăng nhập thành công.
    Get.offAllNamed(Routes.TAB_NAVIGATION);
  }
}
