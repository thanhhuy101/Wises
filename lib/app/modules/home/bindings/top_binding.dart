import 'package:get/get.dart';
import 'package:wises/app/modules/home/controllers/top_controller.dart';

class TopBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TopController>(
      () => TopController(),
    );
  }
}
