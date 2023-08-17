import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:wises/app/models/course_model.dart';
import 'package:wises/app/modules/course/views/course_view.dart';
import 'package:wises/app/modules/fail/views/fail_view.dart';
import 'package:wises/app/modules/finish/views/finish_view.dart';
import 'package:wises/app/modules/home/controllers/top_controller.dart';

class TopView extends GetView<TopController> {
  const TopView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 0, 0, 23),
      padding: const EdgeInsets.fromLTRB(15, 22, 18, 23),
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
          Container(
            margin: const EdgeInsets.fromLTRB(0, 0, 0, 3),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 2, 25.19, 0),
                  padding: const EdgeInsets.fromLTRB(2.21, 2.64, 0, 0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 0, 5.01, 0),
                        width: 32.59,
                        height: 27.36,
                        child: Image.asset(
                          "assets/images/heart.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 0, 0, 2),
                        child: const Text(
                          "100",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 0, 0, 2),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                              width: 30,
                              height: 30,
                              child: Image.asset(
                                "assets/images/exp.png",
                                fit: BoxFit.cover,
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.fromLTRB(0, 4, 0, 0),
                              child: const Text(
                                "999",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                // ignore: prefer_const_constructors
                SizedBox(
                  width: 100,
                ),
                InkWell(
                  onTap: () {
                    Get.to(() => CourseView(
                          itemList: itemList,
                        ));
                    //Get.to(() => const FinishView());
                    //Get.to(() => const FailView());
                  },
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(0, 2, 0, 0),
                    padding: const EdgeInsets.fromLTRB(14, 3, 5.98, 3),
                    width: 98,
                    height: 33,
                    decoration: BoxDecoration(
                      color: const Color(0x63000000),
                      borderRadius: BorderRadius.circular(8),
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          "assets/images/js.png",
                        ),
                      ),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0x3f000000),
                          offset: Offset(0, 4),
                          blurRadius: 2,
                        ),
                      ],
                    ),
                    child: Container(
                      width: double.infinity,
                      height: 23.43,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Container(
                              margin:
                                  const EdgeInsets.fromLTRB(0, 3.43, 6.06, 0),
                              child: const Text(
                                'Javascript',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  height: 1.4285714286,
                                  letterSpacing: 0.1000000015,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 4.96,
                            height: 5.5,
                            child: Image.asset(
                              "assets/images/icon_js.png",
                              width: 4.96,
                              height: 5.5,
                            ),
                          ),
                        ],
                      ),
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
