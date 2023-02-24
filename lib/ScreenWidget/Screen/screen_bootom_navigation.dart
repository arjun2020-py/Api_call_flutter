import 'package:flutter/material.dart';

import 'pages/screen_account_page.dart';
import 'pages/screen_home_page.dart';
import 'pages/screen_search_page.dart';

class ScreenBottomNavigation extends StatefulWidget {
  @override
  State<ScreenBottomNavigation> createState() => _ScreenBottomNavigationState();
}

class _ScreenBottomNavigationState extends State<ScreenBottomNavigation> {
  int _selectedIndex = 0;

  final pages = [ScreenHomePage(), ScreenSerachPage(), ScreenAccountPage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.blue,
          //enableFeedback: true,
          onTap: (newIndex) {
            setState(() {
              _selectedIndex = newIndex;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Acount')
          ]),
    );
  }
}
