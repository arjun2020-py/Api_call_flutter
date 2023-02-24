import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:either_dart/either.dart';
import 'package:flutter/foundation.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

import '../model/login_model.dart';
import '../utils/app_expection.dart';

class LoginRepositry {
  final dio = Dio();

  Future<Either<String, LoginModel>> login(LoginModel model) async {
    try {
      //1: check the internet connectvity

      if (!kIsWeb) {
        bool isNetworkConeectionFound =
            await InternetConnectionChecker().hasConnection;

        if (!isNetworkConeectionFound) {
          return const Left('No internet connection found');
        }
      }
      //2:: post api operation

      final response = await dio.post(
        'https://ajcjewel.com:5000/api/employees/login',
        options: Options(headers: {
          HttpHeaders.contentTypeHeader: "application/json",
        }),
        data: model,
      );
   
      //3: get data from api in  the right side && get error expextion in left side 
      return Right(LoginModel.fromJson(response.data));
      //4: error is occur in the left side 
    } on DioError catch (dioError) {
      return Left(DioErrorResponseString().getErrorString(dioError));
    //5: common  error   
    } catch (e) {
      log(e.toString());
      return Left(e.toString());
    }
  }
}
