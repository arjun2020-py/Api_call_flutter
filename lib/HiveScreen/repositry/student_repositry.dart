import 'package:hive_flutter/hive_flutter.dart';

import '../Model/student_model.dart';

class StudentRespositry {
  //write all functions related to hive.
  String boxName = 'Student';

  openBox() async => await Hive.openBox<Student>(boxName);

  Box getBox() => Hive.box<Student>(boxName);

  closeBox() async => await Hive.box(boxName).close();
}
