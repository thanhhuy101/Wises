import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wises/app/modules/profile/controllers/navbar_controller.dart';

class NavBar extends GetView<NavBarController> {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(17, 11, 30, 11),
      width: double.infinity,
      height: 85,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 16, 82, 174),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(0, 0, 27, 0),
            height: double.infinity,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                  width: 66,
                  height: 63,
                  child: ClipOval(
                    child: Image.asset(
                      "assets/images/ava.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(10, 8.5, 0, 3),
                  width: 120,
                  height: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 0, 0, 3.5),
                        width: double.infinity,
                        child: const Text(
                          "Văn Tèo",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              height: 1.5,
                              letterSpacing: 0.1000000015,
                              color: Colors.white),
                        ),
                      ),
                      const SizedBox(
                        // teogmailcomMKX (2110:257630)
                        width: double.infinity,
                        child: Text(
                          'Teo@gmail.com',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            height: 1.5,
                            letterSpacing: 0.1000000015,
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            // group18426Kzh (2271:327)
            margin: const EdgeInsets.fromLTRB(0, 0, 0, 3.5),
            width: 113,
            height: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  // group245en5 (2110:257649)
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 3.5),
                  width: double.infinity,
                  height: 32,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Center(
                        // leagueNxy (2110:257631)
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(0, 0, 15, 1),
                          child: const Text(
                            'League:',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              height: 1.5,
                              letterSpacing: 0.1000000015,
                              color: Color(0xffffffff),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        // gold6PB (2312:990)
                        padding: EdgeInsets.fromLTRB(5.76, 5.76, 5.76, 5.76),
                        height: double.infinity,
                        child: Center(
                          // goldmedal1EkH (2312:992)
                          child: SizedBox(
                            width: 20.48,
                            height: 20.48,
                            child: Image.asset(
                              "assets/images/gold.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  // group244Nbb (2110:257648)
                  margin: const EdgeInsets.fromLTRB(0, 0, 3, 0),
                  width: double.infinity,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // expHyT (2110:257632)
                        margin: EdgeInsets.fromLTRB(0, 0, 14, 0),
                        child: const Text(
                          'Exp:',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            height: 1.5,
                            letterSpacing: 0.1000000015,
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                      const Center(
                        // QoB (2110:257633)
                        child: Text(
                          '123',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            height: 1.5,
                            letterSpacing: 0.1000000015,
                            color: Color(0xffffffff),
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
