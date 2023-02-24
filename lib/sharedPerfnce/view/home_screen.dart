import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task/sharedPerfnce/shredprefence.dart';

class ShredHomeScreen extends StatefulWidget {
  ShredHomeScreen({super.key});

  @override
  State<ShredHomeScreen> createState() => _ShredHomeScreenState();
}

class _ShredHomeScreenState extends State<ShredHomeScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getUserData();
  }

  String? username;
  String? email;
  void getUserData() async {
    final pref = await SharedPreferences.getInstance();
    username = await pref.getString('username');
    email = await pref.getString('email');
    setState(() {});
    print(username);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text('Home Screen'),
        actions: [
          IconButton(
              onPressed: () => logOut(context),
              icon: Icon(Icons.logout_outlined))
        ],
      ),
      body: Card(
        color: Color(0xffBEF0CB),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: email == null ? Text('invalid') : Text(email.toString()),
            ),
            Center(
                child: username == null
                    ? Text('No user is avilabel')
                    : Text('Welcome ${username!}')),
          ],
        ),
      ),
    );
  }

  Future<void> logOut(BuildContext context) async {
    final _shrePref = await SharedPreferences.getInstance();
    await _shrePref.clear();
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => ShredPrefnce(),
    ));
  }
}
