import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class ErrorInterceptor extends Interceptor {
  @override
  Future onError(DioError? err,ErrorInterceptorHandler errorInterceptorHandler) async {
     err = Exception(err!.error as DioError?) as DioError? ;
    debugPrint('>>>> ${err!.error.toString()}');
    return super.onError(err,errorInterceptorHandler);
  }
}
