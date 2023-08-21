import 'package:get/get.dart';
import '../controllers/league_controller.dart';

class LeagueBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<LeagueController>(LeagueController());
  }
}
