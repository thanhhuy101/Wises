import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/league_controller.dart';

class LeagueView extends GetView<LeagueController> {
  const LeagueView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
     return Container(
        color: Colors.green, child: const Center(child: Text('LeagueView')));
  }
}
