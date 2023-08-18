import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/fail_controller.dart';

class FailView extends GetView<FailController> {
  const FailView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 127, 21, 144),
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 230, 70, 86),
      ),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 53),
              constraints: const BoxConstraints(
                maxWidth: 230,
              ),
              child: const Text(
                "Lesson Failed!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 44,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(117, 0, 117.5, 60),
            width: double.infinity,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 0, 15, 0),
                  width: 48,
                  height: 48,
                  child: Image.asset(
                    "assets/images/hourglass.png",
                    fit: BoxFit.cover,
                  ),
                ),
                const Center(
                  child: Text(
                    "1:30",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 22.5,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(0, 0, 0, 8),
            padding: const EdgeInsets.fromLTRB(6, 0, 0, 0),
            width: double.infinity,
            height: 80,
            decoration: BoxDecoration(
              border: Border.all(
                color: const Color.fromARGB(255, 16, 82, 174),
              ),
              borderRadius: BorderRadius.circular(12),
              color: const Color(0xffffffff),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 14, 178, 12),
                  height: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 0, 0, 4),
                        child: const Text(
                          'Lesson XP',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            height: 1.5,
                            letterSpacing: 0.1000000015,
                            color: Color(0xff1c1b1f),
                          ),
                        ),
                      ),
                      const Text(
                        '100',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          height: 1.5,
                          letterSpacing: 0.1000000015,
                          color: Color(0xff49454f),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  // group18440d2h (2323:2219)
                  padding: const EdgeInsets.fromLTRB(22, 22, 22, 22),
                  height: double.infinity,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(12),
                      bottomRight: Radius.circular(12),
                    ),
                  ),
                  child: Center(
                    // star218EM (2324:2227)
                    child: SizedBox(
                      width: 36,
                      height: 36,
                      child: Image.asset(
                        "assets/images/exp.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(0, 0, 0, 60),
            padding: const EdgeInsets.fromLTRB(6, 0, 0, 0),
            width: double.infinity,
            height: 80,
            decoration: BoxDecoration(
              border: Border.all(color: const Color.fromARGB(255, 16, 82, 174)),
              color: const Color(0xffffffff),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 14, 165, 14),
                  height: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        // header4GR (2324:2249)
                        margin: const EdgeInsets.fromLTRB(0, 0, 0, 2),
                        child: const Text(
                          'Lesson Gem',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            height: 1.5,
                            letterSpacing: 0.1000000015,
                            color: Color(0xff1c1b1f),
                          ),
                        ),
                      ),
                      const Text(
                        '20',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          height: 1.5,
                          letterSpacing: 0.1000000015,
                          color: Color(0xff1c1b1f),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  // group18441JAm (2324:2260)
                  padding: const EdgeInsets.fromLTRB(20.41, 23.34, 19, 23.83),
                  height: double.infinity,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(12),
                      bottomRight: Radius.circular(12),
                    ),
                  ),
                  child: Center(
                    // diamondgem1618rediconoriginal1 (2324:2261)
                    child: SizedBox(
                      width: 39.11,
                      height: 32.83,
                      child: Image.asset(
                        "assets/images/heart.png",
                        width: 39.11,
                        height: 32.83,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 240,
            height: 62,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  primary: const Color.fromARGB(255, 235, 239, 255)),
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Try again',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color.fromARGB(255, 16, 82, 174),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
