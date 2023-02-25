import 'package:flutter/material.dart';

class ListTillWidget extends StatelessWidget {
  ListTillWidget({super.key, required this.txt, required this.icon});
  final String txt;
  final Icon icon;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: icon,
      title: Text(txt),
      trailing: IconButton(
          onPressed: () {},
          icon: IconButton(
              onPressed: () {}, icon: Icon(Icons.navigate_next_outlined))),
    );
  }
}
