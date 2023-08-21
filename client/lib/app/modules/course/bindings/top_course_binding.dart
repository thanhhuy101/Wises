import 'package:get/get.dart';
import 'package:wises/app/modules/course/controllers/top_course.dart';

class TopCourseBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TopCourseController>(
      () => TopCourseController(),
    );
  }
}
