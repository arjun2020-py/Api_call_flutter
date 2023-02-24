import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Controller/student_controller.dart';
import '../Model/student_model.dart';
import '../Widget/student_textfiled.dart';

Future<dynamic> UpdateShowModeal(
    BuildContext context, Student student, int index) {
  final controller = Get.put(StudentController());

  TextEditingController nameController = TextEditingController(),
      ageController = TextEditingController();
  return showModalBottomSheet(
    context: context,
    builder: (context) {
      //textfiled alrady contain  values
      nameController.text = student.name.toString();
      ageController.text = student.age.toString();
      return Card(
        child: Column(
          children: [
            StudentTextfiled(
                controller: nameController, text: 'Enter your name'),
            const SizedBox(
              height: 10,
            ),
            StudentTextfiled(controller: ageController, text: 'Enter your age'),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  String nameText = nameController.text;
                  String ageText = ageController.text;
                  if (index != null) {
                    controller.UpdateStudent(
                        index: index,
                        student: Student(name: nameText, age: ageText));
                  }
                  Get.back();
                  nameController.clear();
                  ageController.clear();
                },
                child: const Text('Update Student')),
          ],
        ),
      );
    },
  );
}
