import 'package:get/get.dart';
import 'package:wises/app/modules/shop/controllers/buy_controller.dart';

class BuyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BuyController>(
      () => BuyController(),
    );
  }
}
