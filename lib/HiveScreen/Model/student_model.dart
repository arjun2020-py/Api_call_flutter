import 'package:hive_flutter/hive_flutter.dart';

part 'student_model.g.dart';

@HiveType(typeId: 0)
class Student {
  @HiveField(0)
  final String? name;

  @HiveField(1)
  final String? age;

  Student({required this.name, required this.age});
}
