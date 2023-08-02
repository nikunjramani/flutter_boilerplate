
import 'package:dio/dio.dart';

class AuthInterceptor extends Interceptor {
  static const String _authHeader = 'X-ACCESS-TOKEN';

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    // if (options.path.contains(ApiEndPoints.refreshToken)) {
    //   return super.onRequest(options, handler);
    // }
    // final String? token = SharedPreferencesService.instance.accessToken;
    // if(token!=null){
    //   options.headers[_authHeader] = token;
    // }
    super.onRequest(options, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) async {
    // refresh and retry only if the user is actually authenticated
    // final authInfo = SharedPreferencesService.instance.refreshToken;
    // if (authInfo != null) {
    //   if (err.response?.statusCode == 403 || err.response?.statusCode == 401) {
    //     await _refreshToken();
    //     final String? token = SharedPreferencesService.instance.accessToken;
    //     err.requestOptions.headers[_authHeader] = token;
    //     final response = await _retry(err.requestOptions);
    //     handler.resolve(response);
    //   } else {
    //     handler.next(err);
    //   }
    // } else {
      super.onError(err, handler);
    // }
  }

  // Future<void> _refreshToken() async {
  //   final refreshToken = SharedPreferencesService.instance.refreshToken;
  //
  //   final response = await dioRequest(
  //       ApiRequest.post(ApiEndPoints.refreshToken, headers: {'Authorization': 'Bearer $refreshToken'}),
  //       );
  //
  //   response.when(
  //       success: (data) {
  //         if (data != null) {
  //           try{
  //
  //             AuthTokenResponse authTokenResponse = AuthTokenResponse.fromJson( data);
  //             SharedPreferencesService.instance
  //                 .setAccessToken(authTokenResponse.token.access);
  //             SharedPreferencesService.instance
  //                 .setRefreshToken(authTokenResponse.token.refresh);
  //
  //           }catch(e){
  //             DebugLogService.instance.e(message: e.toString());
  //           }
  //           }
  //       },
  //       failure: (statusCode, errors) {});
  // }
  //
  // Future<Response> _retry(RequestOptions requestOptions) async => Client.instance.request(
  //       ApiRequest(
  //         url: requestOptions.path,
  //         method: requestOptions.method,
  //         query: requestOptions.queryParameters,
  //         body: requestOptions.data,
  //         headers: requestOptions.headers,
  //       ),
  //     );
}
