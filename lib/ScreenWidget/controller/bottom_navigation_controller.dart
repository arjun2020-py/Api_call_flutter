import 'package:get/get.dart';

import '../Screen/pages/screen_account_page.dart';
import '../Screen/pages/screen_home_page.dart';
import '../Screen/pages/screen_search_page.dart';

class BottomNaviagtionBar extends GetxController {
  RxInt selectedIndex = 0.obs;

  final pages = [ScreenHomePage(), ScreenSerachPage(), ScreenAccountPage()];

  onChangeNavigation(var value) {
    selectedIndex.value = value;
  }
}
