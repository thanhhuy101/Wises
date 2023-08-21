import 'package:get/get.dart';
import 'package:wises/app/models/session_model.dart';

import 'package:wises/app/modules/home/controllers/session_controller.dart';

class SessionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SessionController(itemSession));
  }
}
