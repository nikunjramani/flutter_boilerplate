import 'package:flutter_boilerplate/index.dart';

Future<ApiResult> dioRequest<T>(ApiRequest request) async {
  try {
    final response = await Client.instance.request(request);
    return ApiResult.success(data: response.data);
  } on DioException catch (e) {
    try {
      LogUtil.e(request.toString(), e);

      LogUtil.e(e.message ?? "");
      LogUtil.e(e.response.toString());

      var response = jsonDecode(e.response.toString());
      return ApiResult.failure(errors: response["message"], statusCode: e.response?.statusCode);
    } catch (e) {
      LogUtil.e(request.toString(), e);

      return ApiResult.failure(errors: LocalString.current.server_error, statusCode: 500);
    }
  } on SocketException catch (e) {
    LogUtil.e(request.toString(), e);
    return ApiResult.failure(errors: e.toString(), statusCode: 500);
  } on Exception catch (e) {
    LogUtil.e(request.toString(), e);
    return ApiResult.failure(errors: e.toString(), statusCode: 500);
  } catch (e) {
    LogUtil.e(request.toString(), e);
    return ApiResult.failure(errors: e.toString(), statusCode: 500);
  }
}
