import 'package:flutter/material.dart';
import 'package:task/fromValidation/widget/fromfiled_widget.dart';
import 'package:get/get.dart';

import '../controller/login_product.dart';

class GetxLoginScreen extends StatelessWidget {
  GetxLoginScreen({super.key});
  final controllers = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    // TextEditingController username = TextEditingController(),
    //     passwrod = TextEditingController();
    return SafeArea(
      child: Scaffold(
          body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('LOGIN HERE..'),
            const SizedBox(
              height: 20,
            ),   textfromWidget(
                text: 'Enter user mobno',
                obText: false,
                validator: (p0) {},
                controller: controllers.mobNoText),
            const SizedBox(
              height: 10,
            ),
            textfromWidget(
                text: 'Enter passrod',
                obText: true,
                validator: (p0) {},
                controller: controllers.passwrodText),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () async {
                  controllers.login(controllers.mobNoText.text,
                      controllers.passwrodText.text);
                },
                child: const Text('Login'))
          ],
        ),
      )),
    );
  }
}
