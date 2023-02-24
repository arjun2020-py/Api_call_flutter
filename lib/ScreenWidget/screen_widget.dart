import 'package:flutter/material.dart';

class textFormWiget extends StatelessWidget {
  textFormWiget({super.key, required this.txt});
  final String txt;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(),
          hintText: txt),
    );
  }
}
