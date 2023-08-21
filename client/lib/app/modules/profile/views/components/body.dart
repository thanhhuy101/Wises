import 'dart:ui';

import 'package:get/get.dart';
import 'package:wises/app/modules/profile/controllers/body_controller.dart';
import 'package:flutter/material.dart';
import '../../../../models/course_model.dart';

class Body extends GetView<BodyController> {
  const Body({Key? key, required this.itemList});
  final List<CourseModel> itemList;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(32, 11, 32, 13),
      width: double.infinity,
      height: 500,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: itemList.map((course) {
            return InkWell(
              onTap: () {},
              child: Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                padding: const EdgeInsets.fromLTRB(0, 9, 0, 0),
                width: double.infinity,
                height: 109,
                child: SizedBox(
                  width: 329,
                  height: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // group244Cbj (2110:257666)
                        margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                        padding: const EdgeInsets.fromLTRB(8, 6, 12, 12),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: const Color(0x4c000000),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(course.image),
                          ),
                          boxShadow: const [
                            BoxShadow(
                              color: Color(0x3f000000),
                              offset: Offset(0, 4),
                              blurRadius: 2,
                            ),
                          ],
                        ),
                        child: ClipRect(
                          child: BackdropFilter(
                            filter: ImageFilter.blur(
                              sigmaX: 2,
                              sigmaY: 2,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // group2831JH (2128:537)
                                  margin:
                                      const EdgeInsets.fromLTRB(0.5, 0, 0, 4),
                                  width: double.infinity,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      // gitgithubLrM (2110:257668)
                                      Container(
                                        margin: const EdgeInsets.fromLTRB(
                                            0, 0, 0, 0),
                                        child: Text(
                                          course.name,
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                            height: 1.4285714286,
                                            letterSpacing: 0.1000000015,
                                            color: Color(0xffffffff),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        // brandQrD (2110:257670)
                                        margin: const EdgeInsets.fromLTRB(
                                            9, 0, 0, 0),
                                        width: 16,
                                        height: 16,
                                        child: Image.asset(
                                          course.logo,
                                          width: 16,
                                          height: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  // khahcnyshngdncchsdnggitgithubl (2110:257669)
                                  margin:
                                      const EdgeInsets.fromLTRB(0, 0, 16, 0),
                                  constraints: const BoxConstraints(
                                    maxWidth: 293,
                                  ),
                                  child: Text(
                                    course.description,
                                    maxLines: 3,
                                    style: const TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      height: 1.3333333333,
                                      letterSpacing: 0.400000006,
                                      color: Color(0xffffffff),
                                      overflow: TextOverflow.ellipsis,
                                    ),
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
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
