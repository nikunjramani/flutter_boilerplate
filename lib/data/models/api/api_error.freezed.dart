// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ApiError {
  int? get statusCode => throw _privateConstructorUsedError;
  List<String> get errors => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? statusCode, List<String> errors) fetchError,
    required TResult Function(int? statusCode, List<String> errors) submitError,
    required TResult Function(int? statusCode, List<String> errors) onNullData,
    required TResult Function(int? statusCode, List<String> errors)
        noCameraAvailable,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? statusCode, List<String> errors)? fetchError,
    TResult? Function(int? statusCode, List<String> errors)? submitError,
    TResult? Function(int? statusCode, List<String> errors)? onNullData,
    TResult? Function(int? statusCode, List<String> errors)? noCameraAvailable,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? statusCode, List<String> errors)? fetchError,
    TResult Function(int? statusCode, List<String> errors)? submitError,
    TResult Function(int? statusCode, List<String> errors)? onNullData,
    TResult Function(int? statusCode, List<String> errors)? noCameraAvailable,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchError value) fetchError,
    required TResult Function(SubmitError value) submitError,
    required TResult Function(OnNullData value) onNullData,
    required TResult Function(NoCameraAvailable value) noCameraAvailable,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchError value)? fetchError,
    TResult? Function(SubmitError value)? submitError,
    TResult? Function(OnNullData value)? onNullData,
    TResult? Function(NoCameraAvailable value)? noCameraAvailable,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchError value)? fetchError,
    TResult Function(SubmitError value)? submitError,
    TResult Function(OnNullData value)? onNullData,
    TResult Function(NoCameraAvailable value)? noCameraAvailable,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ApiErrorCopyWith<ApiError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiErrorCopyWith<$Res> {
  factory $ApiErrorCopyWith(ApiError value, $Res Function(ApiError) then) =
      _$ApiErrorCopyWithImpl<$Res, ApiError>;
  @useResult
  $Res call({int? statusCode, List<String> errors});
}

/// @nodoc
class _$ApiErrorCopyWithImpl<$Res, $Val extends ApiError>
    implements $ApiErrorCopyWith<$Res> {
  _$ApiErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = freezed,
    Object? errors = null,
  }) {
    return _then(_value.copyWith(
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
      errors: null == errors
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FetchErrorCopyWith<$Res> implements $ApiErrorCopyWith<$Res> {
  factory _$$FetchErrorCopyWith(
          _$FetchError value, $Res Function(_$FetchError) then) =
      __$$FetchErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? statusCode, List<String> errors});
}

/// @nodoc
class __$$FetchErrorCopyWithImpl<$Res>
    extends _$ApiErrorCopyWithImpl<$Res, _$FetchError>
    implements _$$FetchErrorCopyWith<$Res> {
  __$$FetchErrorCopyWithImpl(
      _$FetchError _value, $Res Function(_$FetchError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = freezed,
    Object? errors = null,
  }) {
    return _then(_$FetchError(
      freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
      null == errors
          ? _value._errors
          : errors // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$FetchError implements FetchError {
  const _$FetchError(this.statusCode, final List<String> errors)
      : _errors = errors;

  @override
  final int? statusCode;
  final List<String> _errors;
  @override
  List<String> get errors {
    if (_errors is EqualUnmodifiableListView) return _errors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_errors);
  }

  @override
  String toString() {
    return 'ApiError.fetchError(statusCode: $statusCode, errors: $errors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchError &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            const DeepCollectionEquality().equals(other._errors, _errors));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, statusCode, const DeepCollectionEquality().hash(_errors));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchErrorCopyWith<_$FetchError> get copyWith =>
      __$$FetchErrorCopyWithImpl<_$FetchError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? statusCode, List<String> errors) fetchError,
    required TResult Function(int? statusCode, List<String> errors) submitError,
    required TResult Function(int? statusCode, List<String> errors) onNullData,
    required TResult Function(int? statusCode, List<String> errors)
        noCameraAvailable,
  }) {
    return fetchError(statusCode, errors);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? statusCode, List<String> errors)? fetchError,
    TResult? Function(int? statusCode, List<String> errors)? submitError,
    TResult? Function(int? statusCode, List<String> errors)? onNullData,
    TResult? Function(int? statusCode, List<String> errors)? noCameraAvailable,
  }) {
    return fetchError?.call(statusCode, errors);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? statusCode, List<String> errors)? fetchError,
    TResult Function(int? statusCode, List<String> errors)? submitError,
    TResult Function(int? statusCode, List<String> errors)? onNullData,
    TResult Function(int? statusCode, List<String> errors)? noCameraAvailable,
    required TResult orElse(),
  }) {
    if (fetchError != null) {
      return fetchError(statusCode, errors);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchError value) fetchError,
    required TResult Function(SubmitError value) submitError,
    required TResult Function(OnNullData value) onNullData,
    required TResult Function(NoCameraAvailable value) noCameraAvailable,
  }) {
    return fetchError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchError value)? fetchError,
    TResult? Function(SubmitError value)? submitError,
    TResult? Function(OnNullData value)? onNullData,
    TResult? Function(NoCameraAvailable value)? noCameraAvailable,
  }) {
    return fetchError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchError value)? fetchError,
    TResult Function(SubmitError value)? submitError,
    TResult Function(OnNullData value)? onNullData,
    TResult Function(NoCameraAvailable value)? noCameraAvailable,
    required TResult orElse(),
  }) {
    if (fetchError != null) {
      return fetchError(this);
    }
    return orElse();
  }
}

abstract class FetchError implements ApiError {
  const factory FetchError(final int? statusCode, final List<String> errors) =
      _$FetchError;

  @override
  int? get statusCode;
  @override
  List<String> get errors;
  @override
  @JsonKey(ignore: true)
  _$$FetchErrorCopyWith<_$FetchError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SubmitErrorCopyWith<$Res> implements $ApiErrorCopyWith<$Res> {
  factory _$$SubmitErrorCopyWith(
          _$SubmitError value, $Res Function(_$SubmitError) then) =
      __$$SubmitErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? statusCode, List<String> errors});
}

/// @nodoc
class __$$SubmitErrorCopyWithImpl<$Res>
    extends _$ApiErrorCopyWithImpl<$Res, _$SubmitError>
    implements _$$SubmitErrorCopyWith<$Res> {
  __$$SubmitErrorCopyWithImpl(
      _$SubmitError _value, $Res Function(_$SubmitError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = freezed,
    Object? errors = null,
  }) {
    return _then(_$SubmitError(
      freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
      null == errors
          ? _value._errors
          : errors // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$SubmitError implements SubmitError {
  const _$SubmitError(this.statusCode, final List<String> errors)
      : _errors = errors;

  @override
  final int? statusCode;
  final List<String> _errors;
  @override
  List<String> get errors {
    if (_errors is EqualUnmodifiableListView) return _errors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_errors);
  }

  @override
  String toString() {
    return 'ApiError.submitError(statusCode: $statusCode, errors: $errors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmitError &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            const DeepCollectionEquality().equals(other._errors, _errors));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, statusCode, const DeepCollectionEquality().hash(_errors));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubmitErrorCopyWith<_$SubmitError> get copyWith =>
      __$$SubmitErrorCopyWithImpl<_$SubmitError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? statusCode, List<String> errors) fetchError,
    required TResult Function(int? statusCode, List<String> errors) submitError,
    required TResult Function(int? statusCode, List<String> errors) onNullData,
    required TResult Function(int? statusCode, List<String> errors)
        noCameraAvailable,
  }) {
    return submitError(statusCode, errors);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? statusCode, List<String> errors)? fetchError,
    TResult? Function(int? statusCode, List<String> errors)? submitError,
    TResult? Function(int? statusCode, List<String> errors)? onNullData,
    TResult? Function(int? statusCode, List<String> errors)? noCameraAvailable,
  }) {
    return submitError?.call(statusCode, errors);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? statusCode, List<String> errors)? fetchError,
    TResult Function(int? statusCode, List<String> errors)? submitError,
    TResult Function(int? statusCode, List<String> errors)? onNullData,
    TResult Function(int? statusCode, List<String> errors)? noCameraAvailable,
    required TResult orElse(),
  }) {
    if (submitError != null) {
      return submitError(statusCode, errors);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchError value) fetchError,
    required TResult Function(SubmitError value) submitError,
    required TResult Function(OnNullData value) onNullData,
    required TResult Function(NoCameraAvailable value) noCameraAvailable,
  }) {
    return submitError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchError value)? fetchError,
    TResult? Function(SubmitError value)? submitError,
    TResult? Function(OnNullData value)? onNullData,
    TResult? Function(NoCameraAvailable value)? noCameraAvailable,
  }) {
    return submitError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchError value)? fetchError,
    TResult Function(SubmitError value)? submitError,
    TResult Function(OnNullData value)? onNullData,
    TResult Function(NoCameraAvailable value)? noCameraAvailable,
    required TResult orElse(),
  }) {
    if (submitError != null) {
      return submitError(this);
    }
    return orElse();
  }
}

abstract class SubmitError implements ApiError {
  const factory SubmitError(final int? statusCode, final List<String> errors) =
      _$SubmitError;

  @override
  int? get statusCode;
  @override
  List<String> get errors;
  @override
  @JsonKey(ignore: true)
  _$$SubmitErrorCopyWith<_$SubmitError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnNullDataCopyWith<$Res> implements $ApiErrorCopyWith<$Res> {
  factory _$$OnNullDataCopyWith(
          _$OnNullData value, $Res Function(_$OnNullData) then) =
      __$$OnNullDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? statusCode, List<String> errors});
}

/// @nodoc
class __$$OnNullDataCopyWithImpl<$Res>
    extends _$ApiErrorCopyWithImpl<$Res, _$OnNullData>
    implements _$$OnNullDataCopyWith<$Res> {
  __$$OnNullDataCopyWithImpl(
      _$OnNullData _value, $Res Function(_$OnNullData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = freezed,
    Object? errors = null,
  }) {
    return _then(_$OnNullData(
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
      errors: null == errors
          ? _value._errors
          : errors // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$OnNullData implements OnNullData {
  const _$OnNullData({this.statusCode, final List<String> errors = const []})
      : _errors = errors;

  @override
  final int? statusCode;
  final List<String> _errors;
  @override
  @JsonKey()
  List<String> get errors {
    if (_errors is EqualUnmodifiableListView) return _errors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_errors);
  }

  @override
  String toString() {
    return 'ApiError.onNullData(statusCode: $statusCode, errors: $errors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnNullData &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            const DeepCollectionEquality().equals(other._errors, _errors));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, statusCode, const DeepCollectionEquality().hash(_errors));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnNullDataCopyWith<_$OnNullData> get copyWith =>
      __$$OnNullDataCopyWithImpl<_$OnNullData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? statusCode, List<String> errors) fetchError,
    required TResult Function(int? statusCode, List<String> errors) submitError,
    required TResult Function(int? statusCode, List<String> errors) onNullData,
    required TResult Function(int? statusCode, List<String> errors)
        noCameraAvailable,
  }) {
    return onNullData(statusCode, errors);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? statusCode, List<String> errors)? fetchError,
    TResult? Function(int? statusCode, List<String> errors)? submitError,
    TResult? Function(int? statusCode, List<String> errors)? onNullData,
    TResult? Function(int? statusCode, List<String> errors)? noCameraAvailable,
  }) {
    return onNullData?.call(statusCode, errors);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? statusCode, List<String> errors)? fetchError,
    TResult Function(int? statusCode, List<String> errors)? submitError,
    TResult Function(int? statusCode, List<String> errors)? onNullData,
    TResult Function(int? statusCode, List<String> errors)? noCameraAvailable,
    required TResult orElse(),
  }) {
    if (onNullData != null) {
      return onNullData(statusCode, errors);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchError value) fetchError,
    required TResult Function(SubmitError value) submitError,
    required TResult Function(OnNullData value) onNullData,
    required TResult Function(NoCameraAvailable value) noCameraAvailable,
  }) {
    return onNullData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchError value)? fetchError,
    TResult? Function(SubmitError value)? submitError,
    TResult? Function(OnNullData value)? onNullData,
    TResult? Function(NoCameraAvailable value)? noCameraAvailable,
  }) {
    return onNullData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchError value)? fetchError,
    TResult Function(SubmitError value)? submitError,
    TResult Function(OnNullData value)? onNullData,
    TResult Function(NoCameraAvailable value)? noCameraAvailable,
    required TResult orElse(),
  }) {
    if (onNullData != null) {
      return onNullData(this);
    }
    return orElse();
  }
}

abstract class OnNullData implements ApiError {
  const factory OnNullData({final int? statusCode, final List<String> errors}) =
      _$OnNullData;

  @override
  int? get statusCode;
  @override
  List<String> get errors;
  @override
  @JsonKey(ignore: true)
  _$$OnNullDataCopyWith<_$OnNullData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NoCameraAvailableCopyWith<$Res>
    implements $ApiErrorCopyWith<$Res> {
  factory _$$NoCameraAvailableCopyWith(
          _$NoCameraAvailable value, $Res Function(_$NoCameraAvailable) then) =
      __$$NoCameraAvailableCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? statusCode, List<String> errors});
}

/// @nodoc
class __$$NoCameraAvailableCopyWithImpl<$Res>
    extends _$ApiErrorCopyWithImpl<$Res, _$NoCameraAvailable>
    implements _$$NoCameraAvailableCopyWith<$Res> {
  __$$NoCameraAvailableCopyWithImpl(
      _$NoCameraAvailable _value, $Res Function(_$NoCameraAvailable) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = freezed,
    Object? errors = null,
  }) {
    return _then(_$NoCameraAvailable(
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
      errors: null == errors
          ? _value._errors
          : errors // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$NoCameraAvailable implements NoCameraAvailable {
  const _$NoCameraAvailable(
      {this.statusCode, final List<String> errors = const []})
      : _errors = errors;

  @override
  final int? statusCode;
  final List<String> _errors;
  @override
  @JsonKey()
  List<String> get errors {
    if (_errors is EqualUnmodifiableListView) return _errors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_errors);
  }

  @override
  String toString() {
    return 'ApiError.noCameraAvailable(statusCode: $statusCode, errors: $errors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoCameraAvailable &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            const DeepCollectionEquality().equals(other._errors, _errors));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, statusCode, const DeepCollectionEquality().hash(_errors));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NoCameraAvailableCopyWith<_$NoCameraAvailable> get copyWith =>
      __$$NoCameraAvailableCopyWithImpl<_$NoCameraAvailable>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? statusCode, List<String> errors) fetchError,
    required TResult Function(int? statusCode, List<String> errors) submitError,
    required TResult Function(int? statusCode, List<String> errors) onNullData,
    required TResult Function(int? statusCode, List<String> errors)
        noCameraAvailable,
  }) {
    return noCameraAvailable(statusCode, errors);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? statusCode, List<String> errors)? fetchError,
    TResult? Function(int? statusCode, List<String> errors)? submitError,
    TResult? Function(int? statusCode, List<String> errors)? onNullData,
    TResult? Function(int? statusCode, List<String> errors)? noCameraAvailable,
  }) {
    return noCameraAvailable?.call(statusCode, errors);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? statusCode, List<String> errors)? fetchError,
    TResult Function(int? statusCode, List<String> errors)? submitError,
    TResult Function(int? statusCode, List<String> errors)? onNullData,
    TResult Function(int? statusCode, List<String> errors)? noCameraAvailable,
    required TResult orElse(),
  }) {
    if (noCameraAvailable != null) {
      return noCameraAvailable(statusCode, errors);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchError value) fetchError,
    required TResult Function(SubmitError value) submitError,
    required TResult Function(OnNullData value) onNullData,
    required TResult Function(NoCameraAvailable value) noCameraAvailable,
  }) {
    return noCameraAvailable(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchError value)? fetchError,
    TResult? Function(SubmitError value)? submitError,
    TResult? Function(OnNullData value)? onNullData,
    TResult? Function(NoCameraAvailable value)? noCameraAvailable,
  }) {
    return noCameraAvailable?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchError value)? fetchError,
    TResult Function(SubmitError value)? submitError,
    TResult Function(OnNullData value)? onNullData,
    TResult Function(NoCameraAvailable value)? noCameraAvailable,
    required TResult orElse(),
  }) {
    if (noCameraAvailable != null) {
      return noCameraAvailable(this);
    }
    return orElse();
  }
}

abstract class NoCameraAvailable implements ApiError {
  const factory NoCameraAvailable(
      {final int? statusCode, final List<String> errors}) = _$NoCameraAvailable;

  @override
  int? get statusCode;
  @override
  List<String> get errors;
  @override
  @JsonKey(ignore: true)
  _$$NoCameraAvailableCopyWith<_$NoCameraAvailable> get copyWith =>
      throw _privateConstructorUsedError;
}
