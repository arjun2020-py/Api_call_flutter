import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task/main.dart';
import 'package:task/sharedPerfnce/shredprefence.dart';
import 'package:task/sharedPerfnce/view/home_screen.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    checkUserLogged();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Lottie.asset('assets/images/93462-login.json')),
    );
  }

  Future<void> gotToLogin(BuildContext context) async {
    await Future.delayed(const Duration(seconds: 3));
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => ShredPrefnce(),
    ));
  }

//sherd prefence code.
  Future<void> checkUserLogged() async {
    final _shrepref = await SharedPreferences.getInstance();
    final _userIsLogined = _shrepref.getBool(SAVE_KEY_NAME);
    if (_userIsLogined == null || _userIsLogined == false) {
      gotToLogin(context);
    } else {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => ShredHomeScreen(),
      ));
    }
  }
}
