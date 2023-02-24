import 'package:flutter/material.dart';

class StudentTextfiled extends StatelessWidget {
   StudentTextfiled({
    super.key,
    required this.controller,
    required this.text
  });

  final TextEditingController controller;
  final String text;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration:  InputDecoration(
        border: OutlineInputBorder(),
        hintText: text,
      ),
    );
  }
}
