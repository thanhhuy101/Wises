import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wises/app/modules/home/controllers/chip_controller.dart';

class RearrangeView extends GetView<ChipController> {
  RearrangeView({super.key});
  @override
  final ChipController controller = Get.put(ChipController());
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 350,
          height: 300,
          padding: const EdgeInsets.all(10),
          color: const Color.fromARGB(255, 209, 206, 206),
          child: Obx(() => Wrap(
                spacing: 10, // Khoảng cách giữa các cột
                runSpacing: 10, // Khoảng cách giữa các hàng
                children: controller.selectedChips
                    .map(
                      (chip) => ElevatedButton(
                        onPressed: () => controller.moveChip(chip),
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 222, 225, 249),
                          // Loại bỏ độ nâng khi bấm
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                10), // Đặt border radius ở đây
                          ),
                        ),
                        child: Chip(
                          label: Text(
                            chip.label,
                          ),
                          side: BorderSide.none,
                          backgroundColor:
                              const Color.fromARGB(255, 222, 225, 249),
                        ),
                      ),
                    )
                    .toList(),
              )),
        ),
        const SizedBox(height: 20),
        Obx(() => Wrap(
              spacing: 10, // Khoảng cách giữa các cột
              runSpacing: 10, //
              children: controller.initialChips
                  .map(
                    (chip) => ElevatedButton(
                      onPressed: () => controller.moveChip(chip),
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(255, 222, 225, 249),
                        // Loại bỏ độ nâng khi bấm
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              10), // Đặt border radius ở đây
                        ),
                      ),
                      child: Chip(
                        label: Text(chip.label),
                        side: BorderSide.none,
                        backgroundColor:
                            const Color.fromARGB(255, 222, 225, 249),
                      ),
                    ),
                  )
                  .toList(),
            )),
      ],
    );
  }
}
