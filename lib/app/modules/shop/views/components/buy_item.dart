import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:wises/app/models/buy_item_model.dart';
import 'package:wises/app/modules/shop/controllers/buy_controller.dart';

class BuyView extends GetView<BuyController> {
  const BuyView({Key? key, required this.buyitemList});
  final List<BuyItemModel> buyitemList;
  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: const EdgeInsets.fromLTRB(0, 0, 1, 80),
      padding: const EdgeInsets.fromLTRB(16, 29, 15, 100),
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 237, 237, 235),
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: buyitemList.map((buy) {
            return Container(
              padding: const EdgeInsets.fromLTRB(4, 0, 0, 0),
              margin: const EdgeInsets.fromLTRB(0, 8, 0, 10),
              width: double.infinity,
              height: 80,
              decoration: BoxDecoration(
                color: const Color(0xffdde1ff),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    // contentWkZ (2314:1033)
                    margin: const EdgeInsets.fromLTRB(0, 18, 61, 4),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // monogramFTF (2314:1034)
                          margin: const EdgeInsets.fromLTRB(0, 0, 15, 16),
                          child: Center(
                            // no1nxy (2314:1099)
                            child: SizedBox(
                              width: 40,
                              height: 40,
                              child: Image.asset(
                                buy.icon,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          // textvpH (2314:1042)
                          margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                          height: 48,
                          child: Text(
                            buy.name,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              height: 1.5,
                              letterSpacing: 0.1000000015,
                              color: Color(0xff001452),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // priceE4H (2314:1045)
                    padding: const EdgeInsets.fromLTRB(19, 28, 18.79, 28),
                    width: 93,
                    height: double.infinity,
                    decoration: const BoxDecoration(
                      color: Color(0xff5a5d72),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(12),
                        bottomRight: Radius.circular(12),
                      ),
                    ),
                    child: Container(
                      // pricexFB (2314:1057)
                      padding: const EdgeInsets.fromLTRB(0, 0, 0.01, 0),
                      width: double.infinity,
                      height: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // UzD (2314:1047)
                            margin: const EdgeInsets.fromLTRB(0, 0, 1.47, 0),
                            child: Text(
                              buy.price,
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                height: 1.5,
                                letterSpacing: 0.1000000015,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                          SizedBox(width: 2),
                          Container(
                            // diamondgem1618rediconoriginal2 (2314:1050)
                            margin: const EdgeInsets.fromLTRB(0, 1, 0, 0),
                            width: 21.73,
                            height: 18.24,
                            child: Image.asset(
                              buy.logo,
                              width: 21.73,
                              height: 18.24,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
