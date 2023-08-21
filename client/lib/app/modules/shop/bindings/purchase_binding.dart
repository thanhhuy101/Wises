import 'package:get/get.dart';
import 'package:wises/app/modules/shop/controllers/purchase_controller.dart';

class PuchaseBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PurchaseController>(
      () => PurchaseController(),
    );
  }
}
