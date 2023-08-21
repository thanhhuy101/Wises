import 'package:get/get.dart';
import 'package:wises/app/models/streak_model.dart';

class StreakController extends GetxController {
  RxList<DailyStreakModel> streakList = <DailyStreakModel>[
    DailyStreakModel(streakDays: 1, isRewardClaimed: false),
    DailyStreakModel(streakDays: 2, isRewardClaimed: false),
    DailyStreakModel(streakDays: 3, isRewardClaimed: false),
    DailyStreakModel(streakDays: 4, isRewardClaimed: false),
    DailyStreakModel(streakDays: 5, isRewardClaimed: false),
    DailyStreakModel(streakDays: 6, isRewardClaimed: false),
    DailyStreakModel(streakDays: 7, isRewardClaimed: false),
  ].obs;

  int get currentStreak => streakList
      .lastWhere((element) => element.isRewardClaimed == false)
      .streakDays;

  void claimReward(int index) {
    if (!streakList[index].isRewardClaimed) {
      streakList[index].isRewardClaimed = true;
      update();
    }
  }
}
