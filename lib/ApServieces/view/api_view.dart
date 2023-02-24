import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'product_screen.dart';

class ApiViewScreen extends StatelessWidget {
  const ApiViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back),
        ),
        centerTitle: true,
        title: Text('REST Api calls'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 300.w,
              height: 300.h,
              child: ElevatedButton(
                onPressed: () {
                  Get.to(ProductScreen());
                },
                child: Text('GET'),
                style: ElevatedButton.styleFrom(
                    primary: Color(0xffec4497),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            )
          ],
        ),
      ),
    );
  }
}
