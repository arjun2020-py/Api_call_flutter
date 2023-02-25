import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../controller/drop_down_controller.dart';

class ScreenDummy extends StatelessWidget {
  ScreenDummy({super.key});
  final dropdown = Get.put(DropdownController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        
        children: [
          Obx(
            () => SingleChildScrollView(
              child: DropdownButton<String>(
                isExpanded: true,
                icon: const Icon(Icons.arrow_drop_down_sharp),
                value: dropdown.dropdownValue.value,
                items: dropdown.items
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem(value: value, child: Text(value));
                }).toList(),
                onChanged: (var value) {
                  dropdown.selctedItem(value);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
