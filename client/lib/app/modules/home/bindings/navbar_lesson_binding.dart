import 'package:get/get.dart';
import 'package:wises/app/modules/home/controllers/navbar_lesson_controller.dart';

class NavbarLesson extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NavBarLessonController>(
      () => NavBarLessonController(),
    );
  }
}
