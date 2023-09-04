import 'package:get/get.dart';
import 'package:wises/app/models/chip_model.dart';

class ChipController extends GetxController {
  RxList<ChipModel> initialChips = <ChipModel>[
    ChipModel('git', false),
    ChipModel('clone', false),
    ChipModel('https://www.duolingo.com/25/level/6', false),
  ].obs;

  RxList<ChipModel> selectedChips = <ChipModel>[].obs;

  void moveChip(ChipModel chip) {
    if (chip.isSelected) {
      initialChips.add(chip);
      selectedChips.remove(chip);
    } else {
      selectedChips.add(chip);
      initialChips.remove(chip);
    }
    chip.isSelected = !chip.isSelected;
  }
}
