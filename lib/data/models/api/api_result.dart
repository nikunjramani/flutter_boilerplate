class ApiResult {
  final dynamic data;
  final int? statusCode;
  final String? errors;
  final bool isSuccess;

  ApiResult.success({required this.data})
      : statusCode = null,
        errors = null,
        isSuccess = true;

  ApiResult.failure({required this.statusCode, required this.errors})
      : data = null,
        isSuccess = false;

  T when<T>({required T Function(dynamic data) success, required T Function(int? statusCode, String? errors) failure}) {
    return isSuccess ? success(data) : failure(statusCode, errors);
  }

  Future<T> whenComplete<T>({required Future<T> Function(dynamic data) success, required Future<T> Function(int? statusCode, String? errors) failure}) async {
    return isSuccess ? await success(data) : await failure(statusCode, errors);
  }

  @override
  String toString() {
    return isSuccess
        ? 'Success(data: $data)'
        : 'Failure(statusCode: $statusCode, errors: $errors)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ApiResult &&
        other.data == data &&
        other.statusCode == statusCode &&
        other.errors == errors &&
        other.isSuccess == isSuccess;
  }

  @override
  int get hashCode {
    return data.hashCode ^ statusCode.hashCode ^ errors.hashCode ^ isSuccess.hashCode;
  }
}