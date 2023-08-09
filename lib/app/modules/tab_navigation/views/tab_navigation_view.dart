import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:wises/app/models/course_model.dart';
import 'package:wises/app/modules/home/views/home_view.dart';
import 'package:wises/app/modules/league/views/league_view.dart';
import 'package:wises/app/modules/profile/views/profile_view.dart';
import 'package:wises/app/modules/shop/views/shop_view.dart';
import 'package:wises/app/modules/streak/views/streak_view.dart';
// ignore: unused_import

import '../../../animations/animated.dart';
// ignore: unnecessary_import
import 'package:get/get.dart';
// ignore: unnecessary_import
import '../controllers/tab_navigation_controller.dart';

// ignore: must_be_immutable
class TabNavigationView extends GetView<NotchBottomBarController> {
  // ignore: unused_field
  final _pageController = PageController(initialPage: 0);
  // ignore: unused_field
  final _controller = NotchBottomBarController(index: 0);

  int maxCount = 5;

  // @override
  // void dispose() {
  //   _pageController.dispose();
  //   super.dispose();
  // }

  final List<Widget> bottomBarPages = [
    const HomeView(),
    const LeagueView(),
    const StreakView(),
    const ShopView(),
    ProfileView(
      itemList: itemList,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: List.generate(
            bottomBarPages.length, (index) => bottomBarPages[index]),
      ),
      extendBody: true,
      bottomNavigationBar: (bottomBarPages.length <= maxCount)
          ? AnimatedNotchBottomBar(
              notchBottomBarController: _controller,
              color: Color.fromARGB(255, 16, 82, 174),
              showLabel: true,
              notchColor: Colors.white,
              removeMargins: true,
              bottomBarWidth: 500,
              durationInMilliSeconds: 300,
              itemLabelStyle: const TextStyle(color: Colors.white),
              bottomBarItems: const [
                BottomBarItem(
                  inActiveItem: Icon(
                    Icons.home_outlined,
                    color: Colors.white,
                  ),
                  activeItem: Icon(
                    Icons.home_filled,
                    color: Colors.blueAccent,
                  ),
                  itemLabel: 'Home',
                ),
                BottomBarItem(
                  inActiveItem: Icon(
                    Icons.leaderboard_outlined,
                    color: Colors.white,
                  ),
                  activeItem: Icon(
                    Icons.leaderboard_rounded,
                    color: Colors.blueAccent,
                  ),
                  itemLabel: 'League',
                ),
                BottomBarItem(
                  inActiveItem: Icon(
                    Icons.star_outline_sharp,
                    color: Colors.white,
                  ),
                  activeItem: Icon(
                    Icons.star_purple500_sharp,
                    color: Colors.blueAccent,
                  ),
                  itemLabel: 'Streak',
                ),
                BottomBarItem(
                  inActiveItem: Icon(
                    Icons.shopping_cart_outlined,
                    color: Colors.white,
                  ),
                  activeItem: Icon(
                    Icons.shopping_cart_rounded,
                    color: Colors.blueAccent,
                  ),
                  itemLabel: 'Shop',
                ),
                BottomBarItem(
                  inActiveItem: Icon(
                    Icons.person_2_outlined,
                    color: Colors.white,
                  ),
                  activeItem: Icon(
                    Icons.person_2,
                    color: Colors.blueAccent,
                  ),
                  itemLabel: 'Profile',
                ),
              ],
              onTap: (index) {
                log('current selected index $index');
                _pageController.jumpToPage(index);
              },
            )
          : null,
    );
  }
}
