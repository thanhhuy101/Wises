import 'package:get/get.dart';
import 'package:wises/app/modules/course/controllers/dropdown_controller.dart';

class DropdownBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DropdownController>(() => DropdownController());
  }
}
