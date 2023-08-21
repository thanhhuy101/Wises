import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wises/app/modules/profile/controllers/logout_controller.dart';

class LogoutBtn extends GetView<LogoutController> {
  final LogoutController _logoutController = Get.put(LogoutController());

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 240,
      height: 62,
      child: ElevatedButton(
        onPressed: () {
          _logoutController.logout();
        },
        style: ElevatedButton.styleFrom(
            primary: const Color.fromARGB(255, 235, 239, 255)),
        child: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.logout,
              size: 40,
              color: Colors.black,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              'Login with Google',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
