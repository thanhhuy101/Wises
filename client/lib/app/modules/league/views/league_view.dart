import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/league_controller.dart';

class LeagueView extends GetWidget<LeagueController> {
  const LeagueView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(32, 11, 32, 13),
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.green,
      ),
      child: Column(
        children: [
          const Text("Test API"),
          Obx(
            () => ListView.builder(
              itemCount: controller.test.length,
              itemBuilder: (context, index) {
                final test_course = controller.test[index];
                return ListTile(
                  leading: Image.asset(test_course.logo),
                  title: Text(test_course.name),
                  subtitle: Text(test_course.description),
                  trailing: Image.asset(test_course.image),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
