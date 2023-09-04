import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:wises/app/modules/league/controllers/badge_controller.dart';

class BadgeView extends StatelessWidget {
  // ignore: unused_field
  final BadgeController _controller = Get.put(BadgeController());

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white, // Màu nền container
      child: GetBuilder<BadgeController>(
        builder: (controller) {
          return SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: controller.badges.map((badge) {
                return _buildBadge(badge);
              }).toList(),
            ),
          );
        },
      ),
    );
  }

  Widget _buildBadge(badge) {
    double scaleFactor =
        Get.find<BadgeController>().selectedBadge == badge ? 1.5 : 1.0;

    return GestureDetector(
      onTap: () {
        Get.find<BadgeController>().selectedBadge = badge;
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        margin: const EdgeInsets.all(8.0),
        width: 60.0 * scaleFactor,
        height: 60.0 * scaleFactor,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(badge.imagePath),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
