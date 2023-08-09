import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/streak_controller.dart';

class StreakView extends GetView<StreakController> {
  const StreakView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
   return Container(
        color: Colors.red, child: const Center(child: Text('StreakView')));
  }
}
