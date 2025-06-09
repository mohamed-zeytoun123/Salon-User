// ignore_for_file: file_names

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
