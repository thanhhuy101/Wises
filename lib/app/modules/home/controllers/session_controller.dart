import 'package:get/get.dart';

import 'package:wises/app/models/session_model.dart';

class SessionController extends GetxController {
  // Danh sách các khóa học

  final List<Session> itemSession;

  SessionController(this.itemSession);

  @override
  void onClose() {
    super.onClose();
  }
}
