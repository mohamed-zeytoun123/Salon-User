
import 'dart:developer';

import 'package:app2/core/Error/failure.dart';
import 'package:app2/featchers/auth/data/models/auth_response_model.dart';
import 'package:app2/core/network/app_urls.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

// import 'package:http/http.dart' as http;

class AuthRemoteDataSource {
  //! ________________login___________________________________________________________________

  static Future<Either<Failure, AuthResponseModel>> login(
      String phone, String password) async {
    Dio dio = Dio();
    try {
      Response response = await dio
          .post(AppUrls.login, data: {"phone": phone, "password": password});
      final AuthResponseModel user =
          AuthResponseModel.fromJson(response.data["data"]);
      log("📦😒😒😶😶😃 Raw JSON Response: ${response.data}");

      return Right(user);
    } catch (e) {
      log(e.toString());
      return Left(Failure.handleError(e as Exception));
    }
  }
  //! _______________Sign Up________________________________________________________________

  static Future<Either<Failure, AuthResponseModel>> signUp(
    String name,
    String phone,
    String email,
    String password,
    String passwordConfirmation,
  ) async {
    final dio = Dio();

    //  dio.options.responseType.j
    dio.options.headers = {
      'Authorization': 'Bearer YOUR_ACCESS_TOKEN',
      'Accept': 'application/json',
      'Content-Type': 'application/json',
    };
    try {
      final data = FormData.fromMap({
        // 'files': [
        //   await MultipartFile.fromFile('/Users/abdulrahem/Desktop/224.png',
        //       filename: '224.png'),
        //   await MultipartFile.fromFile('6_IjpoZ_O/download.png',
        //       filename: 'download.png')
        // ],
        'name': name,
        'phone': phone,
        'email': email,
        'password': password,
        'password_confirmation': passwordConfirmation,
        'fcm_token': 'test',
      });

      final response = await dio.request(
        AppUrls.signUp,
        options: Options(
          method: 'POST',
          validateStatus: (status) => status != null && status < 400,
        ),
        data: data,
      );
      log("Response Status: ${response.statusCode}");
      log("Response Body: ${response.data}");

      final AuthResponseModel user =
          AuthResponseModel.fromJson(response.data["data"]);

      return Right(user);
    } catch (e) {
      log("SignUp Error: ${e.toString()}");
      return Left(Failure.handleError(e as Exception));
    }
  }

  //! ____________________________________________________________________________________
  //! ____________________________________________________________________________________
  //! ____________________________________________________________________________________
}
