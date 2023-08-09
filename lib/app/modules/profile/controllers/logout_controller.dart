import 'package:get/get.dart';
import 'package:wises/app/routes/app_pages.dart';

class LogoutController extends GetxController {
  @override
  void onClose() {
    super.onClose();
  }

  void logout() {
    // Điều hướng qua trang TabNavigation khi đăng nhập thành công.
    Get.offAllNamed(Routes.LOGIN);
  }
}
