import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../Model/student_model.dart';
import '../repositry/student_repositry.dart';

class StudentController extends GetxController {
  final Box _studentBox = StudentRespositry().getBox();

  Box get studentBox => _studentBox;
  int get StudentCount => _studentBox.length;

  CreateStudent({required Student student}) {
    _studentBox.add(student);

    update();
  }

  UpdateStudent({required int index, required Student student}) {
    _studentBox.putAt(index, student);

    update();
  }

  DeleteStudent({required int index}) {
    _studentBox.deleteAt(index);

    update();
  }
}
