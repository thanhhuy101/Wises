import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wises/app/models/session_model.dart';
import 'package:wises/app/modules/home/controllers/session_controller.dart';
import 'package:wises/app/modules/home/views/components/lession_view.dart';

class SessionView extends GetView<SessionController> {
  const SessionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 600,
      child: SingleChildScrollView(
        child: GetBuilder<SessionController>(
          init: SessionController(
              itemSession), // Initialize the controller with the itemSession
          builder: (controller) {
            return Column(
              children: controller.itemSession.map((session) {
                return Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.fromLTRB(12, 12, 0, 0),
                      width: double.infinity,
                      height: 50,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 199, 208, 244),
                      ),
                      child: Text(
                        session.name,
                        style: const TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Column(
                      children: session.lessons.map((lesson) {
                        return ListTile(
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(lesson.name), // Display the lesson name
                              SizedBox(
                                width: 30,
                                height: 30,
                                child: Stack(
                                  children: [
                                    CircularProgressIndicator(
                                      value: lesson.progress * 100,
                                      strokeWidth: 3,
                                      backgroundColor: Colors.grey[300],
                                      valueColor:
                                          const AlwaysStoppedAnimation<Color>(
                                              Colors.blue),
                                    ),
                                    Center(
                                      child: Text(
                                        '${(lesson.progress * 100).toInt()}%',
                                        style: const TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          onTap: () {
                            Get.to(() => LessonView());
                          },
                        );
                      }).toList(),
                    ),
                  ],
                );
              }).toList(),
            );
          },
        ),
      ),
    );
  }
}
