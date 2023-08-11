import 'package:get/get.dart';
import 'package:wises/app/models/purchase_item_model.dart';
import 'package:wises/app/modules/profile/controllers/body_controller.dart';
import 'package:flutter/material.dart';

class PurchaseView extends GetView<BodyController> {
  const PurchaseView({Key? key, required this.purchaseitemList});
  final List<PurchaseItemModel> purchaseitemList;
 
  @override
  Widget build(BuildContext context) {
    return  Container(
      //margin: const EdgeInsets.fromLTRB(0, 0, 0, 80),
      padding: const EdgeInsets.fromLTRB(21, 18, 28, 100),
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 237, 237, 235),
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: purchaseitemList.map((purchase) {
            return Container(
              padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
              margin: const EdgeInsets.fromLTRB(0, 18, 0, 0),
              width: double.infinity,
              height: 80,
              decoration: BoxDecoration(
                color: const Color(0xffdde1ff),
                borderRadius: BorderRadius.circular(12),
              ),
              child: InkWell(
                onTap: () {},
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      // contentggZ (2314:558)
                      margin: const EdgeInsets.fromLTRB(0, 0, 145, 4),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // monogramQsT (2314:559)
                            margin: const EdgeInsets.fromLTRB(0, 0, 15, 0),
                            width: 40,
                            height: 40,
                            child: Image.asset(
                              purchase.logo,
                              width: 40,
                              height: 40,
                            ),
                          ),
                          Container(
                            // textidF (2314:562)
                            margin: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                            width: 57,
                            height: 48,
                            child: Text(
                              purchase.quantity,
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                height: 1.5,
                                letterSpacing: 0.1000000015,
                                color: Color(0xff21005d),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 68,
                      height: double.infinity,
                      decoration: const BoxDecoration(
                        color: Color(0xff5a5d72),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(12),
                          bottomRight: Radius.circular(12),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          purchase.price+' \$',
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            height: 1.5,
                            letterSpacing: 0.1000000015,
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
