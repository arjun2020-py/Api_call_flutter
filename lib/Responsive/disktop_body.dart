import 'package:flutter/material.dart';

class DesktopScreen extends StatelessWidget {
  const DesktopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff3A98B9),
      appBar: AppBar(
        title: const Text('Desktop UI'),
      ),
      body: Row(
        children: [
          //first column
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  //youtbue vedio
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: AspectRatio(
                      aspectRatio: 16 / 9,
                      child: Container(
                        color: Colors.purple,
                      ),
                    ),
                  ),
                  //comment section and recommand vedio

                  ListView.separated(
                    shrinkWrap: true,
                    itemCount: 10,
                    separatorBuilder: (BuildContext context, int index) {
                      return Container(
                        color: Colors.purple,
                        height: 120,
                      );
                    },
                    itemBuilder: (BuildContext context, int index) {
                      return Divider();
                    },
                  ),
                ],
              ),
            ),
          ),
          //second column

          Container(
            width: 200,
            color: Colors.purple,
          )
        ],
      ),
    );
  }
}
