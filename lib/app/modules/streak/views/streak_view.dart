import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/streak_controller.dart';

class StreakView extends GetView<StreakController> {
  final StreakController _controller = Get.find<StreakController>();
  StreakView(StreakController put);

  // RxDouble _imageHeight = 200.0.obs; // Using RxDouble from GetX

  // void _startFireAnimation() {
  //   _imageHeight.value = 220.0;
  // }

  // void _stopFireAnimation() {
  //   _imageHeight.value = 200.0;
  // }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Image.asset('assets/images/logo_streak.png'), // Your image asset
            Positioned(
              bottom: 80, // Adjust the position as needed
              child: Obx(() => Text(
                    'Streak: ${_controller.currentStreak} days',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  )),
            ),
          ],
        ),
        const SizedBox(height: 40),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            _controller.streakList.length,
            (index) => Checkbox(
              value: _controller.streakList[index].isRewardClaimed,
              onChanged: (value) => _controller.claimReward(index),
            ),
          ),
        ),
        ElevatedButton(
          onPressed: () {
            // Implement your reward claiming logic here
          },
          child: const Text('Claim Reward'),
        ),
      ],
    );
  }
}
