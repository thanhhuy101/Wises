import 'package:get/get.dart';
import 'package:wises/app/modules/home/controllers/curriculum_controller.dart';


class LessonBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CurriculumController());
  }
}