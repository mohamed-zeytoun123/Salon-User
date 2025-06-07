// // ignore_for_file: file_names


import 'package:dio/dio.dart';

class Failure {
  final int statusCode;
  final String message;
  Failure({required this.statusCode, required this.message});

  factory Failure.handleError(Exception exception) {
    if (exception is! DioException) {
      return Failure(statusCode: -1, message: 'an error');
    } else {
      switch (exception.type) {
        case DioExceptionType.connectionTimeout:
          return Failure(
              statusCode: exception.response!.statusCode!,
              message: 'connection Timeout, please try again');
        case DioExceptionType.sendTimeout:
          return Failure(
              statusCode: exception.response!.statusCode!,
              message: 'connection Timeout, please try again');
        case DioExceptionType.receiveTimeout:
          return Failure(
              statusCode: exception.response!.statusCode!,
              message: 'connection Timeout, please try again');
        case DioExceptionType.badCertificate:
          return Failure(
              statusCode: exception.response!.statusCode!,
              message: 'connection Timeout, please try again');
        case DioExceptionType.badResponse:
          if (exception.response!.statusCode == 404) {
            return Failure(
                statusCode: exception.response!.statusCode!,
                message: 'Resource not found');
          } else if (exception.response!.statusCode == 500) {
            return Failure(
                statusCode: exception.response!.statusCode!,
                message: 'Server Error');
          } else if (exception.response!.statusCode == 422) {
            return Failure(
                statusCode: exception.response!.statusCode!,
                message: exception.response!.data['message']);
          } else {
            return Failure(
                statusCode: exception.response!.statusCode!,
                message: 'Server Error');
          }
        case DioExceptionType.cancel:
          return Failure(
              statusCode: exception.response!.statusCode!,
              message: 'User cancelled the request');
        case DioExceptionType.connectionError:
          return Failure(
              statusCode: exception.response!.statusCode!,
              message: 'an Error Happen, please try again ');
        case DioExceptionType.unknown:
          return Failure(
              statusCode: exception.response!.statusCode!,
              message: 'an Error Happen, please try again ');
      }
    }
  }
}
// import 'package:dio/dio.dart';

// class Failure {
//   Failure({
//     required this.message,
//     required this.statusCode,
//   });

//   String message;
//   int statusCode;

//   factory Failure.handelExeptions(Exception error) {
//     if (error is! DioException) {
//       return Failure(message: "Error", statusCode: 0);
//     } else {
//       switch (error.type) {
//         case DioExceptionType.connectionTimeout:
//           return Failure(
//               message: "Connection timeout. Please try again.",
//               statusCode: error.response!.statusCode!);
//         case DioExceptionType.sendTimeout:
//           return Failure(
//               message: "Send timeout. Please check your connection.",
//               statusCode: error.response!.statusCode!);
//         case DioExceptionType.receiveTimeout:
//           return Failure(
//               message: "Receive timeout. Server took too long to respond.",
//               statusCode: error.response!.statusCode!);
//         case DioExceptionType.badCertificate:
//           return Failure(
//               message: "Bad certificate. Untrusted connection.",
//               statusCode: error.response!.statusCode!);
//         case DioExceptionType.badResponse:
//           if (error.response!.statusCode == 404) {
//             return Failure(
//                 statusCode: error.response!.statusCode!,
//                 message: 'Bad response from server');
//           } else if (error.response!.statusCode! == 500) {
//             return Failure(
//                 statusCode: error.response!.statusCode!,
//                 message: 'Bad response from server');
//           } else if (error.response!.statusCode! == 422) {
//             return Failure(
//                 statusCode: error.response!.statusCode!,
//                 message: 'Bad response from server');
//           } else {
//             return Failure(
//                 statusCode: error.response!.statusCode!,
//                 message: 'Bad response from server');
//           }

//         case DioExceptionType.cancel:
//           return Failure(
//               message: "Request was cancelled.",
//               statusCode: error.response!.statusCode!);
//         case DioExceptionType.connectionError:
//           return Failure(
//               message: "No internet connection. Please check your network.",
//               statusCode: 503);
//         case DioExceptionType.unknown:
//           return Failure(
//               message: "An unknown error occurred.",
//               statusCode: error.response!.statusCode!);
//       }
//     }
//   }
// }
