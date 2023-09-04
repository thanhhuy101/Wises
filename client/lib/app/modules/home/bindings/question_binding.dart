import 'package:get/get.dart';
import 'package:wises/app/modules/home/controllers/question_controller.dart';

class QuestionBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(QuestionController());
  }
}
