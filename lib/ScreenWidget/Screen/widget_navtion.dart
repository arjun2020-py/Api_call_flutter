import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task/ScreenWidget/Screen/hero_screen.dart';

import '../../CarouselSlider/View/crousel_screen.dart';
import '../../homeScreen/widget/home_widget.dart';
import '../../searchBar/view/search_bar.dart';
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
            ButtonWidget(
              text: 'Slider',
              color: Colors.blueGrey,
              onTap: () {
                Get.to(CarouselScreen());
              },
            ),
            const SizedBox(
              height: 10,
            ),
            ButtonWidget(
              text: 'DropDown',
              color: Colors.cyanAccent,
              onTap: () {
                Get.to(ScreenDummy());
              },
            ),
            const SizedBox(
              height: 10,
            ),
            ButtonWidget(
              text: 'SearchBar',
              color: const Color(0xffBE6DB7),
              onTap: () {
                Get.to(SearchbarScreen());
              },
            ),
            SizedBox(
              height: 10,
            ),
            ButtonWidget(
              text: 'Hero',
              color: Colors.brown,
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => HeroScreen(),
              )),
            )
          ],
        ),
      ),
    );
  }
}
