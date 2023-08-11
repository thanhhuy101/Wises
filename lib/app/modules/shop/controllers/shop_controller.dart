import 'package:get/get.dart';

class ShopController extends GetxController {
  @override
  void onClose() {
    super.onClose();
  }

  RxInt selectedIndex = 0.obs;

  void setSelectedIndex(int index) {
    selectedIndex.value = index;
  }
}
