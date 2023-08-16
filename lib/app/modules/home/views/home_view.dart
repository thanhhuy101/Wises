import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:wises/app/modules/home/views/components/navbar_home.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          TopView(),
        ],
      ),
    );
  }
}
