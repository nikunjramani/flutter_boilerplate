import 'package:freezed_annotation/freezed_annotation.dart';
part 'api_result.freezed.dart';

@freezed
class ApiResult with _$ApiResult {
  const factory ApiResult.success({required dynamic data}) = Success;
  const factory ApiResult.failure({
    required int? statusCode,
    required String? errors,
  }) = Failure;
}
