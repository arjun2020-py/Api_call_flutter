import 'package:flutter/material.dart';

import '../screen_list_til.dart';

class ScreenDrawer extends StatelessWidget {
  const ScreenDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text('Arjun R'),
            accountEmail: const Text('arjunkoodathil@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset(
                  'assets/images/1660032830980_1660032829776_mv1928.jpg',
                  fit: BoxFit.cover,
                  width: 200,
                  height: 100,
                ),
              ),
            ),
            decoration: const BoxDecoration(color: Colors.purple),
          ),
          ListTillWidget(txt: 'Home', icon: const Icon(Icons.home)),
          const Divider(),
          ListTillWidget(
            txt: 'Profile',
            icon: const Icon(Icons.person),
          ),
          const Divider(),
          ListTillWidget(txt: 'Favourites', icon: const Icon(Icons.favorite)),
          const Divider(),
          ListTillWidget(txt: 'Setting', icon: const Icon(Icons.settings)),
          const Divider(),
          ListTillWidget(txt: 'Logout', icon: const Icon(Icons.logout))
        ],
      ),
    );
  }
}
