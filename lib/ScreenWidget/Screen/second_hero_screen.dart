import 'package:flutter/material.dart';

class SecondHeroScreen extends StatelessWidget {
  const SecondHeroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Hero(
          tag: '1',
          child: Image.network(
            'https://images.unsplash.com/photo-1541963463532-d68292c34b19?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8Ym9va3xlbnwwfHwwfHw%3D&w=1000&q=80',
            height: 400,
          ),
        ),
      ),
    );
  }
}
