import 'package:flutter/material.dart';

class FilledView extends StatelessWidget {
  const FilledView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 9),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //area for answers
          Container(
            // group18429pdf (2312:790)
            margin: const EdgeInsets.fromLTRB(25, 0, 30, 39),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  // rectangle4273xUy (2312:791)
                  width: double.infinity,
                  height: 1,
                  decoration: const BoxDecoration(
                    color: Color(0xff0e42c9),
                  ),
                ),
                const SizedBox(
                  height: 64,
                ),
                Container(
                  // rectangle42746bB (2312:792)
                  width: double.infinity,
                  height: 1,
                  decoration: const BoxDecoration(
                    color: Color(0xff0e42c9),
                  ),
                ),
                const SizedBox(
                  height: 64,
                ),
                Container(
                  // rectangle4275FDB (2312:793)
                  width: double.infinity,
                  height: 1,
                  decoration: const BoxDecoration(
                    color: Color(0xff0e42c9),
                  ),
                ),
              ],
            ),
          ),

          //fragments of the answer
          Container(
            // navigationbarCu7 (2312:794)
            margin: const EdgeInsets.fromLTRB(10, 0, 1, 6.05),
            padding: const EdgeInsets.fromLTRB(4, 3.95, 0, 0),
            width: double.infinity,
            height: 123.95,
            decoration: const BoxDecoration(
              color: Color(0xffffffff),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  // autogrouptlpsy2h (WX4GSgWvKry2jeWTQytLPs)
                  margin: const EdgeInsets.fromLTRB(0, 3.05, 0, 0),
                  width: 350,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        // group184086ND (2312:795)
                        margin: const EdgeInsets.fromLTRB(0, 0, 0, 14),
                        width: double.infinity,
                        height: 36,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                              width: 80,
                              height: double.infinity,
                              child: ElevatedButton(
                                onPressed: () {
                                  // Xử lý sự kiện khi nút được nhấn
                                },
                                style: ElevatedButton.styleFrom(
                                  primary: const Color(0xffdee1f9),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  elevation: 4,
                                ),
                                child: const Center(
                                  child: Text(
                                    'clone',
                                    textAlign: TextAlign
                                        .center, // Thay đổi thành TextAlign.center
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                              width: 80,
                              height: double.infinity,
                              child: ElevatedButton(
                                onPressed: () {
                                  // Xử lý sự kiện khi nút được nhấn
                                },
                                style: ElevatedButton.styleFrom(
                                  primary: const Color(0xffdee1f9),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  elevation: 4,
                                ),
                                child: const Center(
                                  child: Text(
                                    'git',
                                    textAlign: TextAlign
                                        .center, // Thay đổi thành TextAlign.center
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                              width: 80,
                              height: double.infinity,
                              child: ElevatedButton(
                                onPressed: () {
                                  // Xử lý sự kiện khi nút được nhấn
                                },
                                style: ElevatedButton.styleFrom(
                                  primary: const Color(0xffdee1f9),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  elevation: 4,
                                ),
                                child: const Center(
                                  child: Text(
                                    'pull',
                                    textAlign: TextAlign
                                        .center, // Thay đổi thành TextAlign.center
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: 80,
                              height: double.infinity,
                              child: ElevatedButton(
                                onPressed: () {
                                  // Xử lý sự kiện khi nút được nhấn
                                },
                                style: ElevatedButton.styleFrom(
                                  primary: const Color(0xffdee1f9),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  elevation: 4,
                                ),
                                child: const Center(
                                  child: Text(
                                    'fork',
                                    textAlign: TextAlign
                                        .center, // Thay đổi thành TextAlign.center
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 355,
                        height: 36,
                        child: ElevatedButton(
                          onPressed: () {
                            // Xử lý sự kiện khi nút được nhấn
                          },
                          style: ElevatedButton.styleFrom(
                            primary: const Color(0xffdee1f9),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            elevation: 4,
                          ),
                          child: const Center(
                            child: Text(
                              'https://www.duolingo.com/25/level/6',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                height: 1.4285714286,
                                letterSpacing: 0.25,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
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
