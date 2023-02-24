import 'package:flutter/material.dart';

class ProductDrwaerScreen extends StatelessWidget {
  const ProductDrwaerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Arjun R'),
            accountEmail: Text('arjunkoodathil@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset(
                  'assets/images/ba.jpg',
                  width: 200,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            decoration: BoxDecoration(color: Colors.purple),
          ),
        ],
      ),
    );
  }
}
