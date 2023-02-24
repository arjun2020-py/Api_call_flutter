import 'package:flutter/material.dart';

import '../screen_widget.dart';

class ScreenSiginup extends StatefulWidget {
  ScreenSiginup({super.key});

  @override
  State<ScreenSiginup> createState() => _ScreenSiginupState();
}

class _ScreenSiginupState extends State<ScreenSiginup> {
  String? dropdownValue = 'kozhikode';

  List<String> items = <String>['kozhikode', 'kunner', 'malaparpam'];
  String? gender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Register',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            textFormWiget(
              txt: 'email',
            ),
            const SizedBox(
              height: 10,
            ),
            textFormWiget(txt: 'full name'),
            const SizedBox(
              height: 10,
            ),
            DropdownButton<String>(
              value: dropdownValue,
              isExpanded: true,
              icon: Icon(Icons.arrow_drop_down_sharp),
              elevation: 16,
              items: items.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                    value: value, child: Text(value));
              }).toList(),
              onChanged: (String? value) {
                setState(() {
                  dropdownValue = value!;
                });
              },
            ),
            Text('Gender:'),
            RadioListTile(
              title: Text('male'),
              value: 'male',
              groupValue: gender,
              onChanged: (value) {
                setState(() {
                  gender = value;
                });
              },
            ),
            RadioListTile(
              title: Text('female'),
              value: 'female',
              groupValue: gender,
              onChanged: (value) {
                setState(() {
                  gender = value;
                });
              },
            ),
            RadioListTile(
              title: Text('other'),
              value: 'other',
              groupValue: gender,
              onChanged: (value) {
                setState(() {
                  gender = value;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
