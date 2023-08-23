// badge_controller.dart
import 'package:get/get.dart';
import 'package:wises/app/models/badge_model.dart';

class BadgeController extends GetxController {
  final badges = <Badge>[
    Badge("assets/images/bronze.png"),
    Badge("assets/images/silver.png"),
    Badge("assets/images/gold.png"),
    Badge("assets/images/ruby.png"),
    Badge("assets/images/sapphire.png"),
    Badge("assets/images/pearl.png"),
    Badge("assets/images/emerald.png"),
    Badge("assets/images/amethyst.png"),
    Badge("assets/images/diamond.png"),
  ].obs;

  Rx<Badge?> selectedBadge = Rx<Badge?>(null);
}
