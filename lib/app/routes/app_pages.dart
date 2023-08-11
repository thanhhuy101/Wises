import 'package:get/get.dart';
import 'package:wises/app/models/buy_item_model.dart';
import 'package:wises/app/models/course_model.dart';
import 'package:wises/app/models/purchase_item_model.dart';
import 'package:wises/app/modules/shop/bindings/buy_binding.dart';
import 'package:wises/app/modules/shop/bindings/purchase_binding.dart';
import 'package:wises/app/modules/shop/views/components/buy_item.dart';
import 'package:wises/app/modules/shop/views/components/purchase_item.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/league/bindings/league_binding.dart';
import '../modules/league/views/league_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/profile/bindings/profile_binding.dart';
import '../modules/profile/views/profile_view.dart';
import '../modules/shop/bindings/shop_binding.dart';
import '../modules/shop/views/shop_view.dart';
import '../modules/streak/bindings/streak_binding.dart';
import '../modules/streak/views/streak_view.dart';
import '../modules/tab_navigation/bindings/tab_navigation_binding.dart';
import '../modules/tab_navigation/views/tab_navigation_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  // ignore: constant_identifier_names
  static const INITIAL = Routes.LOGIN;

  static final routes = [
    GetPage(
      name: Routes.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: Routes.TAB_NAVIGATION,
      page: () => TabNavigationView(),
      binding: TabNavigationBinding(),
      children: [
        GetPage(
          name: Routes.HOME,
          page: () => const HomeView(),
          binding: HomeBinding(),
        ),
        GetPage(
          name: Routes.LEAGUE,
          page: () => const LeagueView(),
          binding: LeagueBinding(),
        ),
        GetPage(
          name: Routes.STREAK,
          page: () => const StreakView(),
          binding: StreakBinding(),
        ),
        GetPage(
            name: Routes.SHOP,
            page: () => ShopView(
                  purchaseitemList: purchaseitemList,
                ),
            binding: ShopBinding(),
            children: [
              GetPage(
                name: Routes.PURCHASE,
                page: () => PurchaseView(
                  purchaseitemList: purchaseitemList,
                ),
                binding: PuchaseBinding(),
              ),
              GetPage(
                name: Routes.BUY,
                page: () => BuyView(
                  buyitemList: buyitemList,
                ),
                binding: BuyBinding(),
              ),
            ]),
        GetPage(
          name: Routes.PROFILE,
          page: () => ProfileView(
            itemList: itemList,
          ),
          binding: ProfileBinding(),
        ),
      ],
    ),
  ];
}