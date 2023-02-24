import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';

import '../Controller/theme_controller.dart';
import '../Utilles/heleper.dart';

class ProfileScreen extends StatefulWidget {
  ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final controller = Get.put(GetThemeController());
  @override
  Widget build(BuildContext context) {
    TextTheme _textTheme = Theme.of(context).textTheme;
    bool isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(
              Icons.arrow_back,
              color: isDark ? Colors.white : Colors.black,
            )),
        automaticallyImplyLeading: false,
        title: Text(
          'Theme App',
          style: _textTheme.headlineLarge!.copyWith(
              color: isDark ? Colors.white : Colors.black,
              fontWeight: FontWeight.bold),
        ),
        actions: [
          // IconButton(
          //     onPressed: () {
          // Get.changeThemeMode(
          //     Get.isDarkMode ? ThemeMode.light : ThemeMode.dark);
          //     },
          //     icon: Icon(
          //       isDark ? Icons.dark_mode : Icons.dark_mode_outlined,
          //       color: isDark ? Colors.white : Colors.black,
          //     )),

          GetBuilder<GetThemeController>(builder: (context) {
            return Switch(
              value: controller.isSwitched,
              onChanged: (value) {
                Get.changeThemeMode(
                    Get.isDarkMode ? ThemeMode.light : ThemeMode.dark);
                controller.changeThemeState(value);
              },
            );
          })
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 80,
              child: ClipOval(
                child: Image.asset(
                  'assets/images/ba.jpg',
                  fit: BoxFit.cover,
                  width: 200,
                  height: 200,
                ),
              ),
            ),
            addverticalSpace(10),
            Text(
              'Name',
              style: _textTheme.headlineLarge!.copyWith(
                  color: isDark ? Colors.white : Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            addverticalSpace(10),
            Text(
              'name@gmail.com',
              style: _textTheme.titleMedium,
            ),
            addverticalSpace(10),
            const Text('Flutter developer'),
            addverticalSpace(20),
            TextFormField(),
            addverticalSpace(20),
            ElevatedButton(
                onPressed: () {},
                child: Text(
                  'just clik',
                  style: _textTheme.titleSmall!
                      .copyWith(color: isDark ? Colors.white : Colors.black),
                ))
          ],
        ),
      ),
    );
  }
}
