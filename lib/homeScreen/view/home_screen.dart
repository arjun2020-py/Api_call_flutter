import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:task/ApServieces/view/api_view.dart';
import 'package:task/counter/view/counter_screen.dart';
import 'package:task/fromValidation/view/from_validation.dart';
import 'package:task/homeScreen/widget/home_widget.dart';
import 'package:task/sharedPerfnce/view/splash_screen.dart';

import '../../HiveScreen/Screen/hive_scrren.dart';
import '../../ScreenWidget/Screen/widget_navtion.dart';
import '../../Theme/Screen/profile_screen.dart';
import '../../getxTak/view/getx_login_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  ButtonWidget(
                      text: 'Counter',
                      color: Colors.amber,
                      onTap: () => Get.to(CounterScreen())),
                  const SizedBox(
                    width: 20,
                  ),
                  ButtonWidget(
                    text: 'Theme',
                    color: const Color(0xff2B3467),
                    onTap: () => Get.to(ProfileScreen()),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ButtonWidget(
                      text: 'Validtion',
                      color: Colors.green,
                      onTap: () => Get.to(const FormValidation())),
                  SizedBox(
                    width: 20,
                  ),
                  ButtonWidget(
                    text: 'Widget',
                    onTap: () {
                      Get.to(WidgetNavigation());
                    },
                    color: Color(0xff93BFCF),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              ButtonWidget(
                text: 'ApiServies',
                color: Colors.red,
                onTap: () {
                  Get.to(const ApiViewScreen());
                },
              ),
              const SizedBox(
                height: 20,
              ),
              ButtonWidget(
                  text: 'Shared prefences',
                  color: Colors.blue,
                  onTap: () => Get.to(const SplashScreen())),
              const SizedBox(
                height: 20,
              ),
              ButtonWidget(
                  text: 'GET-X',
                  color: const Color.fromARGB(255, 99, 3, 244),
                  onTap: () => Get.to(GetxLoginScreen())),
              const SizedBox(
                height: 20,
              ),
              ButtonWidget(
                text: 'Hive',
                color: const Color(0xffC92C6D),
                onTap: () {
                  Get.to(HiveScreen());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
