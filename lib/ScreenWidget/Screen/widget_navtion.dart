import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../homeScreen/widget/home_widget.dart';
import 'screen_bootom_navigation.dart';
import 'screen_dropdwon.dart';

class WidgetNavigation extends StatelessWidget {
  const WidgetNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ButtonWidget(
              text: 'BottomNavgation',
              onTap: () {
                Get.to(ScreenBottomNavigation());
              },
              color: Color(0xffB5F1CC),
            ),
            SizedBox(
              height: 10,
            ),
            ButtonWidget(
              text: 'DropDown',
              color: Color(0xff205E61),
              onTap: () {
                Get.to(DropdownScreen());
              },
            )
          ],
        ),
      ),
    );
  }
}
