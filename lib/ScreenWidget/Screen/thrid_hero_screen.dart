import 'package:flutter/material.dart';

class ThridHeroScreen extends StatelessWidget {
  const ThridHeroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Hero(
          transitionOnUserGestures: true,
          tag: 't2',
          child: Container(
            color: Colors.amber,
            width: 100,
            height: 100,
          ),
        ),
      ),
    );
  }
}
