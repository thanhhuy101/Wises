import 'package:get/get.dart';
import 'package:wises/app/models/course_model.dart';

class BodyController extends GetxController {
  // Danh sách các khóa học
  RxList<CourseModel> courseList = <CourseModel>[].obs;

  // Phương thức để cập nhật danh sách khóa học
  void updateCourseList(List<CourseModel> newCourseList) {
    courseList.value = newCourseList;
  }

  @override
  void onClose() {
    super.onClose();
  }
}
