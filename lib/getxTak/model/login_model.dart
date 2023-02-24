// To parse this JSON data, do
//
//     final loginModel = loginModelFromJson(jsonString);

import 'dart:convert';

LoginModel loginModelFromJson(String str) =>
    LoginModel.fromJson(json.decode(str));

String loginModelToJson(LoginModel data) => json.encode(data.toJson());

class LoginModel {
  LoginModel({
    required this.mobile,
    required this.password,
  });

  String? mobile;
  String? password;

  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
        mobile: json["mobile"],
        password: json["password"],
      );

  Map<String, dynamic> toJson() => {
        "mobile": mobile,
        "password": password,
      };
}
