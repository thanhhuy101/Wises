import 'package:get/get.dart';
import 'package:wises/app/models/dropdown_item_model.dart';

class DropdownController extends GetxController {
  var selectedOption =
      DropdownItemModel(text: 'Choose', imageUrl: 'assets/images/region.png');

  void updateSelectedOption(DropdownItemModel newOption) {
    selectedOption = newOption;
    update(); // Cập nhật UI
  }
}
