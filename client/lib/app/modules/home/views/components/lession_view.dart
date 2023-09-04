import 'package:flutter/material.dart';
import 'package:wises/app/modules/home/views/components/btn_submit.dart';
import 'package:wises/app/modules/home/views/components/navbar_lesson_view.dart';
import 'package:wises/app/modules/home/views/components/rearrange_view.dart';
// import 'package:get/get.dart';
// import 'package:wises/app/modules/home/controllers/curriculum_controller.dart';

class LessonView extends StatelessWidget {
  const LessonView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const NavBarLesson(),
          const SizedBox(
            height: 10,
          ),
          //Question
          Container(
            margin: const EdgeInsets.fromLTRB(20, 0, 40, 10),
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
            child: const Text(
              'For cloning: Git clone https://www.duolingo.com/25/level/6 ',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                height: 1.5,
                letterSpacing: 0.5,
                color: Color(0xff000000),
              ),
            ),
          ),
          // Container(
          //   // textXeZ (2312:994)
          //   margin: const EdgeInsets.fromLTRB(0, 0, 3, 200),
          //   constraints: const BoxConstraints(
          //     maxWidth: 330,
          //   ),
          //   child: const Text(
          //     'Git clone https://www.duolingo.com/25/level/6',
          //     style: TextStyle(
          //       fontSize: 16,
          //       fontWeight: FontWeight.w400,
          //       height: 1.5,
          //       letterSpacing: 0.5,
          //       color: Color(0xff000000),
          //     ),
          //   ),
          // ),
          RearrangeView(),
          BtnSubmit(),
        ],
      ),
    );
  }
}
