import 'package:get/get.dart';

class GenderController extends GetxController {
  var selectedGender = ''.obs;
  

  onChangeGender(var gender) {
    selectedGender.value = gender;
  }
}
