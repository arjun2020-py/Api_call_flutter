import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

import '../Controller/student_controller.dart';
import '../Model/student_model.dart';
import '../Widget/student_textfiled.dart';
import 'update_show_model_screen.dart';

class HiveScreen extends StatelessWidget {
  HiveScreen({super.key});

  final controller = Get.put(StudentController());

  TextEditingController nameController = TextEditingController(),
      ageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back)),
        centerTitle: true,
        title: const Text('Hive CRUD Operation'),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          StudentTextfiled(controller: nameController, text: 'Enter your name'),
          const SizedBox(
            height: 10,
          ),
          StudentTextfiled(controller: ageController, text: 'Enter your age'),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: () => controller.CreateStudent(
                  student: Student(
                      name: nameController.text, age: ageController.text)),
              child: const Text('Save Student')),
          GetBuilder<StudentController>(
              builder: (ctx) => ListView.builder(
                    shrinkWrap: true,
                    itemCount: ctx.StudentCount,
                    itemBuilder: (context, index) {
                      if (ctx.StudentCount > 0) {
                        Student student = ctx.studentBox.getAt(index);
                        return Card(
                          child: ListTile(
                            leading: IconButton(
                                onPressed: () {
                                  UpdateShowModeal(context, student, index);
                                },
                                icon: const Icon(Icons.edit)),
                            title: Text(student.name.toString()),
                            subtitle: Text(student.age.toString()),
                            trailing: IconButton(
                                onPressed: () =>
                                    ctx.DeleteStudent(index: index),
                                icon: const Icon(Icons.delete)),
                          ),
                        );
                      } else {
                        return const Center(
                          child: Text('List Is Empty'),
                        );
                      }
                    },
                  )),
        ],
      ),
    );
  }
}
