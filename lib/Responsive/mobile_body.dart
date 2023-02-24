import 'package:flutter/material.dart';

class MobileScreen extends StatelessWidget {
  const MobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff3A98B9),
      appBar: AppBar(
        title: Text('Mobile UI'),
      ),
      body: SingleChildScrollView(
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
            // ListView.builder(
            //   shrinkWrap: true,
            //   itemCount: 10,
            //   itemBuilder: (BuildContext context, int index) {
            //     return Container(
            //       color: Colors.purple,
            //       height: 120,
            //     );
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}
