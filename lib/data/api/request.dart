


import 'http_methods.dart';

class ApiRequest {
  ApiRequest({
    required this.url,
    required this.method,
    this.query,
    this.headers,
    this.body,
  });

  final String url;
  final String method;
  final Map<String, dynamic>? query;
  final Map<String, dynamic>? headers;
  final Object? body;

  static ApiRequest get(
      String url, {
        Map<String, dynamic>? query,
        Map<String, dynamic>? headers,
      }) {
    return ApiRequest(
      url: url,
      method: HttpMethods.get,
      headers: headers,
      query: query,
    );
  }

  static ApiRequest post(
      String url, {
        Map<String, dynamic>? query,
        Map<String, dynamic>? headers,
        Object? body,
      }) {
    return ApiRequest(
      url: url,
      method: HttpMethods.post,
      body: body,
      query: query,
      headers: headers,
    );
  }

  static ApiRequest put(
      String url, {
        Map<String, dynamic>? query,
        Map<String, dynamic>? headers,
        Object? body,
      }) {
    return ApiRequest(
      url: url,
      method: HttpMethods.put,
      body: body,
      query: query,
      headers: headers,
    );
  }

  static ApiRequest patch(
      String url, {
        Map<String, dynamic>? query,
        Map<String, dynamic>? headers,
        Object? body,
      }) {
    return ApiRequest(
      url: url,
      method: HttpMethods.patch,
      body: body,
      query: query,
      headers: headers,
    );
  }

  static ApiRequest delete(
      String url, {
        Map<String, dynamic>? query,
        Map<String, dynamic>? headers,
      }) {
    return ApiRequest(
      url: url,
      method: HttpMethods.delete,
      headers: headers,
      query: query,
    );
  }

  @override
  String toString() {
    return "url : ${this.url} \nmethod : ${this.method}\nbody : ${this.body} \nheader : ${this.headers} \nquery : ${this.query}"  ;
  }
}
