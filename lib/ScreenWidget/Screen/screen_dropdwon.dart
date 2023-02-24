import 'package:flutter/material.dart';

class DropdownScreen extends StatefulWidget {
  DropdownScreen({super.key});

  @override
  State<DropdownScreen> createState() => _DropdownScreenState();
}

class _DropdownScreenState extends State<DropdownScreen> {
  String? dropdownValue = 'M.S Dhoni';

  List<String> items = <String>['M.S Dhoni', 'Varit Kohil', 'Rhoit Sharma'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: DropdownButton<String>(
          value: dropdownValue,
          isExpanded: true,
          icon: const Icon(
            Icons.arrow_drop_down_sharp,
            size: 30,
          ),
          elevation: 16,
          onChanged: (String? value) {
            setState(() {
              dropdownValue = value!;
            });
          },
          items: items.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ),
    );
  }
}
