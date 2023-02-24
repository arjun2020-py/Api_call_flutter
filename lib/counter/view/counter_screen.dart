import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterScreen extends StatefulWidget {
  CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back)),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 25),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Text('your can push the button many times'),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 300,
                  height: 100,
                  child: Card(
                    child: Center(child: Text('$count')),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            onPressed: increment,
            child: const Icon(Icons.add),
          ),
          const SizedBox(
            width: 40,
          ),
          FloatingActionButton(
            onPressed: decrment,
            child: const Icon(Icons.minimize_outlined),
          )
        ],
      ),
    );
  }

  void increment() {
    setState(() {
      count++;
    });
  }

  void decrment() {
    setState(() {
      count--;
    });
  }
}
