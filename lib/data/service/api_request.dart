import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_boilerplate/data/api/client.dart';
import 'package:flutter_boilerplate/data/api/request.dart';
import 'package:flutter_boilerplate/data/models/api/api_result.dart';
import 'package:flutter_boilerplate/generated/l10n.dart';
import 'package:flutter_boilerplate/services/log_service/debug_log_service.dart';



Future<ApiResult> dioRequest<T>(
  ApiRequest request,
) async {
  try {
    final response = await Client.instance.request(request);
    return ApiResult.success(data: response.data);

  } on DioException catch (e) {
    try {
      DebugLogService.instance.e(message: request.toString(), e: e);

      DebugLogService.instance.e(message: e.message);
      DebugLogService.instance.e(message: e.response.toString());

      var response = jsonDecode(e.response.toString());
      return ApiResult.failure(
        errors: response["message"],
        statusCode: e.response?.statusCode,
      );
    } catch (e) {
      DebugLogService.instance.e(message: request.toString(), e: e);

      return  ApiResult.failure(
        errors: LocalString.current.server_error,
        statusCode: 500,
      );
    }
  } on SocketException catch (e) {
    DebugLogService.instance.e(message: request.toString(), e: e);
    return ApiResult.failure(
      errors: e.toString(),
      statusCode: 500,
    );
  } on Exception catch (e) {
    DebugLogService.instance.e(message: request.toString(), e: e);
    return ApiResult.failure(
      errors: e.toString(),
      statusCode: 500,
    );
  } catch (e) {
    DebugLogService.instance.e(message: request.toString(), e: e);
    return ApiResult.failure(
      errors: e.toString(),
      statusCode: 500,
    );
  }
}
