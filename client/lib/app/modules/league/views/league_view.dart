import 'dart:ui';

import 'package:flutter/material.dart';
//import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';

import 'package:get/get.dart';
import 'package:wises/app/modules/league/views/components/badge_view.dart';
import 'package:wises/app/modules/league/views/components/user_view.dart';

import '../controllers/league_controller.dart';

class LeagueView extends GetWidget<LeagueController> {
  const LeagueView({Key? key}) : super(key: key);
  // LeagueController leagueController = Get.put(LeagueController());
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BadgeView(),
        const Divider(
          color: Color.fromARGB(255, 16, 82, 174),
        ),
        UserView(),
      ],
    );
  }
}
