import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';
import 'package:task/homeScreen/home_screen.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'HiveScreen/Model/student_model.dart';
import 'HiveScreen/repositry/student_repositry.dart';
import 'Theme/Constaines/theme_constaines.dart';
import 'Theme/Controller/theme_controller.dart';

//check the user is alredy login anno
const SAVE_KEY_NAME = 'UserLoggedIn';
Future<void> main() async {
  //1: intalize Hive
  await Hive.initFlutter();

  //2: register hive adapter
  Hive.registerAdapter(StudentAdapter());

  //3: open database
  await StudentRespositry().openBox();

  await GetStorage.init();
  runApp( MyApp());
}

// ThemeManger _themeManger = ThemeManger();

class MyApp extends StatelessWidget {
   MyApp({super.key});
  final controller = Get.put(GetThemeController());

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) {
        return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: lightTheme,
            darkTheme: darkTheme,
            //themeMode: ThemeService().getThemeMode(),
          
            home: const HomeScreen());
      },
    );
  }
}
