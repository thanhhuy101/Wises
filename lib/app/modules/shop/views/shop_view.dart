import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wises/app/models/buy_item_model.dart';
import 'package:wises/app/models/purchase_item_model.dart';
import 'package:wises/app/modules/shop/controllers/shop_controller.dart';
import 'package:wises/app/modules/shop/views/components/buy_item.dart';
import 'package:wises/app/modules/shop/views/components/purchase_item.dart';

class ShopView extends GetView<ShopController> {
  ShopView({Key? key, required this.purchaseitemList}) : super(key: key);
  final ShopController switcherController = Get.put(ShopController());
  final List<PurchaseItemModel> purchaseitemList;

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      child: DefaultTabController(
        length: 2, // Số lượng tab
        child: Scaffold(
          backgroundColor: Colors.blueGrey[50],
          appBar: AppBar(
            toolbarHeight: 1,
            backgroundColor: Colors.lightBlue[900],
            bottom: const TabBar(
              labelColor: Colors.blue, // Màu chữ khi active
              unselectedLabelColor: Colors.white, // Màu chữ khi inactive
              tabs: [
                Tab(
                  icon: Icon(Icons.monetization_on_outlined),
                  child: Text(
                    "Purchase Item",
                    style: TextStyle(color: Colors.white),
                  ), // Thay bằng nội dung bạn muốn hiển thị trong tab này
                ),
                Tab(
                  icon: Icon(Icons.category_outlined),
                  child: Text(
                    "Buy Item",
                    style: TextStyle(color: Colors.white),
                  ), // Thay bằng nội dung bạn muốn hiển thị trong tab này
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              PurchaseView(
                purchaseitemList: purchaseitemList,
              ),
              BuyView(
                buyitemList: buyitemList,
              ), // Hiển thị nội dung của BuyView tại tab này
              // Hiển thị nội dung của PurchaseView tại tab này
            ],
          ),
        ),
      ),
    );
  }
}
