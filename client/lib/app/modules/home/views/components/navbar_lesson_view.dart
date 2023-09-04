import 'package:flutter/material.dart';
import 'package:get/get.dart';
//import 'package:wises/app/modules/home/controllers/navbar_lesson_controller.dart';
import 'package:wises/app/modules/home/controllers/question_controller.dart';
import 'package:wises/app/routes/app_pages.dart';

// ignore: must_be_immutable
class NavBarLesson extends GetView<QuestionController> {
  const NavBarLesson({Key? key}) : super(key: key);
  // ignore: prefer_final_fields

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 24, 19, 24),
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 16, 82, 174),
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(8),
          bottomLeft: Radius.circular(8),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              Get.offAllNamed(Routes.TAB_NAVIGATION);
            },
            child: Container(
              // iconscancel24px39j (2119:254790)
              margin: const EdgeInsets.fromLTRB(0, 1, 10, 0),
              width: 25.03,
              height: 24.17,
              child: const Icon(
                Icons.cancel,
                size: 28,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Stack(
            children: [
              Container(
                width: 200,
                height: 20,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey),
                ),
              ),
              Positioned.fill(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Obx(() {
                    double progress = controller.progress.value;
                    double width = progress * 200;

                    // Limit the progress to a maximum of 1 (100%)
                    if (progress > 1.0) {
                      progress = 1.0;
                      width = 200; // Set width to maximum
                    }

                    return Container(
                      width: width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey),
                        color: Colors.white,
                      ),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4.0),
                          child: Text(
                            '${(progress * 100).toInt()}%',
                            style: const TextStyle(
                                color: Color.fromARGB(255, 16, 82, 174)),
                          ),
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 0, 5.01, 0),
                  width: 32.59,
                  height: 27.36,
                  child: Image.asset(
                    "assets/images/health.png",
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  // exp106DF (2204:1102)
                  margin: const EdgeInsets.fromLTRB(0, 0, 17, 0),
                  child: const Text(
                    '3',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w400,
                      height: 1.2727272727,
                      color: Color(0xffffffff),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
