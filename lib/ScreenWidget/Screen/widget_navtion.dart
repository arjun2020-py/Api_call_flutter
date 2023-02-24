import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../homeScreen/widget/home_widget.dart';
import 'screen_bootom_navigation.dart';
import 'screen_dropdwon.dart';
import 'screen_siginup.dart';

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
              color: const Color(0xffB5F1CC),
            ),
            const SizedBox(
              height: 10,
            ),
            ButtonWidget(
              text: 'DropDown',
              color: const Color(0xff205E61),
              onTap: () {
                Get.to(DropdownScreen());
              },
            ),
            const SizedBox(
              height: 10,
            ),
            ButtonWidget(
              text: 'Register',
              color: Colors.blueGrey,
              onTap: () {
                Get.to( ScreenSiginup());
              },
            )
          ],
        ),
      ),
    );
  }
}
