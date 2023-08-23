import 'package:flutter/material.dart';

import 'package:get/get.dart';
//import 'package:wises/app/modules/home/controllers/curriculum_controller.dart';
import 'package:wises/app/modules/home/views/components/navbar_home.dart';
import 'package:wises/app/modules/home/views/components/session_view.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        TopView(),
        SessionView(),
      ],
    );
  }
}
