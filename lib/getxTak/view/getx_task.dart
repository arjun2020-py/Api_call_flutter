import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/login_product.dart';

class GetxTask extends StatefulWidget {
  const GetxTask({super.key});

  @override
  State<GetxTask> createState() => _GetxTaskState();
}

class _GetxTaskState extends State<GetxTask> {
  final controller = Get.put(LoginController());
  @override
  void initState() {
    super.initState();
  }

  //injiting productController from controller floder

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('GET-X'),
        actions: const [],
      ),
    );
  }
}
