class ApiError {
  final int? statusCode;
  final List<String> errors;

  ApiError({this.statusCode, required this.errors});

  factory ApiError.fetchError(int? statusCode, List<String> errors) {
    return ApiError(statusCode: statusCode, errors: errors);
  }

  factory ApiError.submitError(int? statusCode, List<String> errors) {
    return ApiError(statusCode: statusCode, errors: errors);
  }

  factory ApiError.onNullData({int? statusCode, List<String> errors = const []}) {
    return ApiError(statusCode: statusCode, errors: errors);
  }

  factory ApiError.noCameraAvailable({int? statusCode, List<String> errors = const []}) {
    return ApiError(statusCode: statusCode, errors: errors);
  }

  @override
  String toString() {
    return 'ApiError(statusCode: $statusCode, errors: $errors)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ApiError &&
        other.statusCode == statusCode &&
        other.errors == errors;
  }

  @override
  int get hashCode => statusCode.hashCode ^ errors.hashCode;
}
