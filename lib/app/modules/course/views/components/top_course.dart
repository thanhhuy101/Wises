import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:wises/app/models/course_model.dart';
import 'package:wises/app/models/dropdown_item_model.dart';
import 'package:wises/app/modules/course/controllers/dropdown_controller.dart';
import 'package:wises/app/modules/course/controllers/top_course.dart';
import 'package:wises/app/routes/app_pages.dart';

class TopCourseView extends GetView<TopCourseController> {
  TopCourseView({Key? key}) : super(key: key);

  final DropdownController optionController = Get.put(DropdownController());

  final List<DropdownItemModel> dropdown = [
    DropdownItemModel(text: 'Vietnam', imageUrl: 'assets/images/flag_vn.png'),
    DropdownItemModel(text: 'English', imageUrl: 'assets/images/flag_eng.png'),
  ];
  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      margin: const EdgeInsets.fromLTRB(10, 10, 0, 8.5),
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: DropdownButton<DropdownItemModel>(
                  hint: Row(
                    children: <Widget>[
                      Image.asset(
                        optionController.selectedOption.imageUrl,
                        width: 30,
                        height: 30,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(optionController.selectedOption.text),
                    ],
                  ),
                  onChanged: (DropdownItemModel? newValue) {
                    optionController.updateSelectedOption(newValue!);
                  },
                  items: dropdown.map<DropdownMenuItem<DropdownItemModel>>(
                      (DropdownItemModel value) {
                    return DropdownMenuItem<DropdownItemModel>(
                      value: value,
                      child: Row(
                        children: <Widget>[
                          Image.asset(
                            value.imageUrl,
                            width: 30,
                            height: 30,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(value.text),
                        ],
                      ),
                    );
                  }).toList(),
                ),
              ),
              InkWell(
                onTap: () {
                  Get.offAllNamed(Routes.TAB_NAVIGATION);
                },
                child: Container(
                  // iconscancel24px39j (2119:254790)
                  margin: const EdgeInsets.fromLTRB(0, 1.42, 10, 0),
                  width: 25.03,
                  height: 24.17,
                  child: const Icon(
                    Icons.cancel_outlined,
                    size: 30,
                    color: Color.fromARGB(255, 16, 82, 174),
                  ),
                ),
              )
            ],
          ),
          const Text(
            "Current courses",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color.fromARGB(255, 16, 82, 174),
              fontSize: 20,
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(22, 11, 22, 13),
            margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
            width: double.infinity,
            height: 124,
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: SingleChildScrollView(
              child: Column(
                children: itemList
                    .map((course) {
                      return InkWell(
                        onTap: () {},
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // group244Cbj (2110:257666)
                                margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                                padding:
                                    const EdgeInsets.fromLTRB(8, 6, 12, 12),
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // group2831JH (2128:537)
                                          margin: const EdgeInsets.fromLTRB(
                                              0.5, 0, 0, 4),
                                          width: double.infinity,
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              // gitgithubLrM (2110:257668)
                                              Container(
                                                margin:
                                                    const EdgeInsets.fromLTRB(
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
                                                margin:
                                                    const EdgeInsets.fromLTRB(
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
                                          margin: const EdgeInsets.fromLTRB(
                                              0, 0, 16, 0),
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
                      );
                    })
                    .toList()
                    .sublist(0, 1),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
