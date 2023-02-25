import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:task/ScreenWidget/controller/gender_selection_controller.dart';

import '../screen_widget.dart';

class ScreenGender extends StatelessWidget {
  ScreenGender({super.key});

  final gender = Get.put(GenderController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'Register',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          textFormWiget(
            txt: 'email',
          ),
          const SizedBox(
            height: 10,
          ),
          textFormWiget(txt: 'full name'),
          const SizedBox(
            height: 10,
          ),
          Text('Gender:'),
          Obx(
            () => RadioListTile(
              selectedTileColor: Colors.red,
              title: const Text('male'),
              value: 'male',
              groupValue: gender.selectedGender.value,
              onChanged: (value) {
                gender.onChangeGender(value);
              },
            ),
          ),
          Obx(
            () => RadioListTile(
              title: const Text('female'),
              value: 'female',
              groupValue: gender.selectedGender.value,
              onChanged: (value) {
                gender.onChangeGender(value);
              },
            ),
          ),
          Obx(
            () => RadioListTile(
              title: const Text('other'),
              value: 'other',
              groupValue: gender.selectedGender.value,
              onChanged: (value) {
                gender.onChangeGender(value);
              },
            ),
          ),
        ],
      ),
    ));
  }
}
