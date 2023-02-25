import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../homeScreen/widget/home_widget.dart';
import 'bottom_navigation_demo.dart';
import 'screen_dumy.dart';
import 'screen_gender.dart';

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
                Get.to(BottomNavigation());
              },
              color: const Color(0xffB5F1CC),
            ),
            const SizedBox(
              height: 10,
            ),
            ButtonWidget(
              text: 'Radio Button',
              color: const Color(0xff205E61),
              onTap: () {
                Get.to(ScreenGender());
              },
            ),

            const SizedBox(
              height: 10,
            ),
            // ButtonWidget(
            //   text: 'Register',
            //   color: Colors.blueGrey,
            //   onTap: () {
            //     Get.to(ScreenSiginup());
            //   },
            // ),
            ButtonWidget(
              text: 'TestCase',
              color: Colors.cyanAccent,
              onTap: () {
                Get.to(ScreenDummy());
              },
            )
          ],
        ),
      ),
    );
  }
}
