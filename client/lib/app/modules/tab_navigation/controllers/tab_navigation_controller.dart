// import 'package:get/get.dart';

// class TabNavigationController extends GetxController {
//   //TODO: Implement TabNavigationController

//   final count = 0.obs;
//   @override
//   void onInit() {
//     super.onInit();
//   }

//   @override
//   void onReady() {
//     super.onReady();
//   }

//   @override
//   void onClose() {
//     super.onClose();
//   }

//   void increment() => count.value++;
// }
import 'package:flutter/material.dart';

class NotchBottomBarController extends ChangeNotifier {
  int index;
  int? oldIndex;

  NotchBottomBarController({this.index = 0});

  jumpTo(int index) {
    oldIndex = this.index;
    this.index = index;
    notifyListeners();
  }
}
