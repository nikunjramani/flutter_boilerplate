import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_error.freezed.dart';

@freezed
class ApiError with _$ApiError {
  const factory ApiError.fetchError(int? statusCode, List<String> errors) = FetchError;
  const factory ApiError.submitError(int? statusCode, List<String> errors) = SubmitError;
  const factory ApiError.onNullData({int? statusCode, @Default([]) List<String> errors}) = OnNullData;
  const factory ApiError.noCameraAvailable({int? statusCode, @Default([]) List<String> errors}) = NoCameraAvailable;
}
