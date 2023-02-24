import 'package:flutter/material.dart';

class buttton_widget extends StatelessWidget {
  buttton_widget(
      {super.key,
      required this.txt,
      required this.onPress,
      required this.color});
  final Function() onPress;
  final String txt;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      height: 35,
      child: ElevatedButton(
        onPressed: onPress,
        style: ElevatedButton.styleFrom(
            primary: color,
            side: const BorderSide(width: 3, color: Colors.black),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
        child: Text(txt),
      ),
    );
  }
}
