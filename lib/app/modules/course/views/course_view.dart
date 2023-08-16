import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:wises/app/models/course_model.dart';
import 'package:wises/app/modules/course/views/components/top_course.dart';
import 'package:wises/app/modules/profile/views/components/body.dart';

import '../controllers/course_controller.dart';

class CourseView extends GetView<CourseController> {
  const CourseView({Key? key, required this.itemList}) : super(key: key);
  final List<CourseModel> itemList;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TopCourseView(),
          const SizedBox(
            height: 20,
          ),
          const Divider(
            color: Color.fromARGB(255, 16, 82, 174),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Availablecourses",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color.fromARGB(255, 16, 82, 174),
              fontSize: 20,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Body(itemList: itemList)
        ],
      ),
    );
  }
}
