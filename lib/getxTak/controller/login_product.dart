
import 'package:dio/dio.dart';
import 'package:either_dart/either.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task/getxTak/repositries/login_repositry.dart';
import 'package:task/getxTak/view/getx_task.dart';

import '../model/login_model.dart';

class LoginController extends GetxController {
  TextEditingController mobNoText = TextEditingController(),
      passwrodText = TextEditingController();

//6: instance of loginModel
  LoginModel? logmodel;


//7: set a bool value for lodaing.
 RxBool isLoding = false.obs;

  void login(String mobNo, String passwrod) async {
    isLoding.value = true;
    final Either<String, LoginModel> result = await LoginRepositry()
        .login(LoginModel(mobile: mobNo, password: passwrod));

    result.fold(
        (left) => Get.showSnackbar(
              GetSnackBar(
                duration: const Duration(
                  seconds: 3,
                ),
                message: left,
                isDismissible: true,
              ),
            ),
        (right) => Get.to(() => GetxTask()));
  }













  

  // addData() async {
  //   final Login_model =
  //       LoginModel(mobile: mobNoText.text, password: passwrodText.text);
  //   try {
  //     var response =
  //         await dio.post('https://ajcjewel.com:5000/api/employees/login',
  //             options: Options(headers: {
  //               HttpHeaders.contentTypeHeader: "application/json",
  //             }),
  //             data: jsonEncode(Login_model.toJson())
  //             //s  jsonEncode({"mobile": "9961005004", "password": "123456"}),
  //             );
  //     if (response.statusCode == 201) {
  //       Get.snackbar('post', 'sucessfully');
  //       await Get.to(GetxTask());

  //     }
  //   } on DioError catch (e) {
  //     final errorMessage = loginException.fromDioError(e).toString();
  //     print('-----------------------$errorMessage');
  //     Get.snackbar('error', errorMessage);
  //   }
  // }
}
