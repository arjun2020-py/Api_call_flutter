import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task/homeScreen/view/home_screen.dart';
import 'package:task/main.dart';

import 'home_screen.dart';
import 'widget/widget_screen.dart';

class ShredPrefnce extends StatelessWidget {
  ShredPrefnce({super.key});

  final _key = GlobalKey<FormState>();
  TextEditingController userName = TextEditingController(),
      passwrod = TextEditingController(),
      email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ));
            },
            icon: Icon(Icons.arrow_back)),
        title: const Text('ShredPrefence'),
        centerTitle: true,
      ),
      body: Form(
        key: _key,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextfiledScreen(
              obxText: false,
              controller: userName,
              txt: 'Enter name',
              validator: (value) {
                if (value!.isEmpty || value == null) {
                  return 'Enter a vaild name';
                }
              },
            ),
            const SizedBox(
              height: 10,
            ),
            TextfiledScreen(
              obxText: true,
              controller: passwrod,
              txt: 'Enter passwrod',
              validator: (value) {
                if (value!.isEmpty || value == 6) {
                  return 'Enter a vaild passwrod ';
                }
              },
            ),
            const SizedBox(
              height: 10,
            ),
            TextfiledScreen(
                txt: 'Enter your email',
                validator: (value) {
                  if (value!.isEmpty ||
                      !RegExp(r'^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$')
                          .hasMatch(value)) {
                    return 'Enter a valid email';
                  }
                },
                controller: email,
                obxText: false),
            ElevatedButton(
                onPressed: () {
                  if (_key.currentState!.validate()) {
                    saveDataToStroage(
                        context, userName.text, passwrod.text, email.text);
                  }
                },
                child: const Text('submit'))
          ],
        ),
      ),
    );
  }

  Future<void> saveDataToStroage(
      BuildContext context, username, passwrod, email) async {
    final shrePref = await SharedPreferences.getInstance();
    await shrePref.setBool(SAVE_KEY_NAME, true);
    await shrePref.setString('username', username);
    await shrePref.setString('passwrod', passwrod);
    await shrePref.setString("email", email);
    print('===========================================');
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ShredHomeScreen(),
        ));
  }
}
