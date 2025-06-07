// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:app2/core/network/api_request.dart';
import 'package:app2/core/network/api_response.dart';
import 'package:dio/dio.dart';

class API {
  final Dio dio;
  API({
    required this.dio,
  });

  Future<ApiResponse> get(ApiRequest apirequest) async {
    final response = await dio.get(apirequest.url);
    return ApiResponse(
      statusCode: response.statusCode ?? -1,
      body: response.data,
    );
  }
}
