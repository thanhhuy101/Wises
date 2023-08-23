import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wises/app/models/user_model.dart';
import 'package:wises/app/modules/league/controllers/user_controller.dart';

class UserView extends GetWidget<UserController> {
  UserView({super.key});

  final UserController _controller = Get.put(UserController());

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 620,
      child: SingleChildScrollView(
        child: Column(
          children: [
            _buildUserSection('Top Users', controller.topUsers, true),
            const SizedBox(height: 16),
            _buildUserSection(
                'Promotion', controller.promotionCandidates, false),
            const SizedBox(height: 16),
            _buildUserSection('Demotion', controller.demotionCandidates, false),
          ],
        ),
      ),
    );
  }

  Widget _buildUserSection(
      String label, List<UserModel> users, bool hasTopUserBackground) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            label,
            style: TextStyle(
              fontSize: label == 'Top Users' ? 24 : 18,
              fontWeight: FontWeight.bold,
              foreground: label == 'Top Users'
                  ? (Paint()
                    ..shader = const LinearGradient(
                      colors: [Colors.yellow, Colors.orange],
                    ).createShader(const Rect.fromLTWH(
                        0, 0, 200, 70))) // Sử dụng LinearGradient cho màu chữ
                  : null,
              color: label == 'Promotion'
                  ? Colors.green // Màu xanh lá cho Promotion
                  : (label == 'Demotion'
                      ? Colors.red // Màu đỏ cho Demotion
                      : null),
            ),
          ),
        ),
        SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Column(
            children: users.asMap().entries.map((entry) {
              final int index = entry.key;
              final UserModel user = entry.value;

              return Container(
                margin: const EdgeInsets.fromLTRB(16, 2, 16, 2),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color:
                      _getUserBackgroundColor(index + 1, hasTopUserBackground),
                ),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(user.avatar),
                  ),
                  title: Text(user.name),
                  subtitle: Text('Exp: ${user.exp}'),
                  trailing: Image.asset(
                    user.badge,
                    width: 24,
                    height: 24,
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }

  final List<Color> _userRankColors = [
    Colors.yellowAccent, // Rank 1
    const Color.fromARGB(255, 183, 180, 180), // Rank 2
    const Color.fromARGB(255, 231, 124, 85), // Rank 3
    const Color.fromARGB(255, 108, 107, 107), // Rank 4 and below
  ];

  Color _getUserBackgroundColor(int rank, bool hasTopUserBackground) {
    if (rank >= 1 && rank <= _userRankColors.length) {
      if (hasTopUserBackground && rank <= 3) {
        return _userRankColors[rank - 1];
      } else {
        return _userRankColors[_userRankColors.length - 1];
      }
    }
    return Colors.transparent; // Default background color
  }
}
