import 'package:flutter/material.dart';

class textfromWidget extends StatelessWidget {
  textfromWidget(
      {super.key,
      required this.text,
      required this.obText,
      required this.validator,
      required this.controller
      });
  final String text;
  final bool obText;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        obscureText: (obText == true) ? true : false,
        controller: controller,
        decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: text,
            filled: true,
            fillColor: Colors.white),
        validator: validator);
  }
}
