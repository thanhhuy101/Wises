import 'package:get/get.dart';
import 'package:wises/app/modules/home/controllers/chip_controller.dart';

class ChipBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ChipController>(() => ChipController());
  }
}
