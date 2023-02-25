import 'package:get/get.dart';

class DropdownController extends GetxController {
  var dropdownValue = 'a'.obs;
  List<String> items = <String>['a', 'b', 'c'];

  selctedItem(var value) {
    dropdownValue.value = value;
  }
}
