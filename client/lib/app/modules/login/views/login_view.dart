import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  final LoginController _loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 38, 81, 215),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(1, 20, 0, 58),
              width: 133,
              height: 126,
              child: Image.asset(
                'assets/images/logo.png',
                width: 133,
                height: 126,
              ),
            ),
            const Text(
              'Welcome to Wises',
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.w400,
                height: 1.2222222222,
                color: Color(0xffffffff),
              ),
            ),
            const SizedBox(height: 40),
            const Text(
              'Free courses for everyone',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w400,
                height: 1.2857142857,
                color: Color(0xffffffff),
              ),
            ),
            const SizedBox(height: 40),
            SizedBox(
              width: 240,
              height: 62,
              child: ElevatedButton(
                onPressed: () {
                  _loginController.login();
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      'assets/images/icon_gg.png',
                      width: 30,
                      height: 30,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Text(
                      'Login with Google',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 240,
              height: 62,
              child: ElevatedButton(
                onPressed: () {},
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      'assets/images/icon_apple.png',
                      width: 30,
                      height: 30,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Text(
                      'Login with Apple',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              margin: const EdgeInsets.fromLTRB(40, 180, 0, 0),
              child: const Text(
                'A product of ITSS Ltd. Copyright © 2023 all rights reserved',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w800,
                  height: 1.6,
                  color: Color(0xffffffff),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
