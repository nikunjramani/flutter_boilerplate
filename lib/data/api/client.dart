library api;


import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_boilerplate/configs/app_config.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'request.dart';

class Client {
  static Client? _instance;
  static Client get instance => _instance ??= Client();

  late Dio dio;

  Client(){
    var headers = {
      'Content-Type': 'application/json',
  };
    init(baseUrl: AppConfig.baseUrl, headers: headers);
  }
  void init({
    required String baseUrl,
    required Map<String, Object> headers,
  }) async {
    dio = Dio(BaseOptions(
      headers: headers,
      connectTimeout: const Duration(minutes: 4),
      receiveTimeout: const Duration(minutes: 4),
    ));
    dio.interceptors.addAll([
      PrettyDioLogger(request: true,requestBody: true,requestHeader: true,responseBody: true,responseHeader: true),
      // AuthInterceptor(),
    ]);

  }
   Future<Response> request(ApiRequest request) async {
     return await _instance!.dio.request(
       request.url,
       data: jsonEncode(request.body),
       queryParameters: request.query,
       options: Options(method: request.method, headers: request.headers),
     );
  }
}
