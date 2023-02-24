import 'package:flutter/material.dart';

class TextfiledScreen extends StatelessWidget {
   TextfiledScreen({
    super.key,
    required this.txt,
    required this.validator,
    required this.controller,
    required this.obxText
    
  });
  final String txt;
  final TextEditingController? controller;
  String? Function(String?)? validator;
  final bool obxText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obxText,
      controller: controller,
      validator: validator,
      decoration:  InputDecoration(
          border: OutlineInputBorder(), hintText: txt),
    );
  }
}
