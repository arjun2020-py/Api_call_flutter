import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../controller/bottom_navigation_controller.dart';

class BottomNavigation extends StatelessWidget {
  BottomNavigation({super.key});
  final controller = Get.put(BottomNaviagtionBar());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => controller.pages[controller.selectedIndex.value]),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
            currentIndex: controller.selectedIndex.value,
            selectedItemColor: Colors.red,
            unselectedItemColor: Colors.blue,
            //enableFeedback: true,
            onTap: (newIndex) {
              controller.onChangeNavigation(newIndex);
            },
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search), label: 'Search'),
              BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Acount')
            ]),
      ),
    );
  }
}
