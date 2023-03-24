// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'application_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ApplicationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loaded,
    required TResult Function(String locale) localeChanged,
    required TResult Function(bool enable) darkModeChanged,
    required TResult Function(AuthenticationStatus authStatus)
        authenticationStatusChanged,
    required TResult Function() authenticationLogoutRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loaded,
    TResult? Function(String locale)? localeChanged,
    TResult? Function(bool enable)? darkModeChanged,
    TResult? Function(AuthenticationStatus authStatus)?
        authenticationStatusChanged,
    TResult? Function()? authenticationLogoutRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function(String locale)? localeChanged,
    TResult Function(bool enable)? darkModeChanged,
    TResult Function(AuthenticationStatus authStatus)?
        authenticationStatusChanged,
    TResult Function()? authenticationLogoutRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApplicationLoaded value) loaded,
    required TResult Function(ApplicationLocaleChanged value) localeChanged,
    required TResult Function(ApplicationDarkModeChanged value) darkModeChanged,
    required TResult Function(ApplicationAuthenticationStatusChanged value)
        authenticationStatusChanged,
    required TResult Function(ApplicationAuthenticationLogoutRequested value)
        authenticationLogoutRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApplicationLoaded value)? loaded,
    TResult? Function(ApplicationLocaleChanged value)? localeChanged,
    TResult? Function(ApplicationDarkModeChanged value)? darkModeChanged,
    TResult? Function(ApplicationAuthenticationStatusChanged value)?
        authenticationStatusChanged,
    TResult? Function(ApplicationAuthenticationLogoutRequested value)?
        authenticationLogoutRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApplicationLoaded value)? loaded,
    TResult Function(ApplicationLocaleChanged value)? localeChanged,
    TResult Function(ApplicationDarkModeChanged value)? darkModeChanged,
    TResult Function(ApplicationAuthenticationStatusChanged value)?
        authenticationStatusChanged,
    TResult Function(ApplicationAuthenticationLogoutRequested value)?
        authenticationLogoutRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApplicationEventCopyWith<$Res> {
  factory $ApplicationEventCopyWith(
          ApplicationEvent value, $Res Function(ApplicationEvent) then) =
      _$ApplicationEventCopyWithImpl<$Res, ApplicationEvent>;
}

/// @nodoc
class _$ApplicationEventCopyWithImpl<$Res, $Val extends ApplicationEvent>
    implements $ApplicationEventCopyWith<$Res> {
  _$ApplicationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ApplicationLoadedCopyWith<$Res> {
  factory _$$ApplicationLoadedCopyWith(
          _$ApplicationLoaded value, $Res Function(_$ApplicationLoaded) then) =
      __$$ApplicationLoadedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ApplicationLoadedCopyWithImpl<$Res>
    extends _$ApplicationEventCopyWithImpl<$Res, _$ApplicationLoaded>
    implements _$$ApplicationLoadedCopyWith<$Res> {
  __$$ApplicationLoadedCopyWithImpl(
      _$ApplicationLoaded _value, $Res Function(_$ApplicationLoaded) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ApplicationLoaded implements ApplicationLoaded {
  const _$ApplicationLoaded();

  @override
  String toString() {
    return 'ApplicationEvent.loaded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ApplicationLoaded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loaded,
    required TResult Function(String locale) localeChanged,
    required TResult Function(bool enable) darkModeChanged,
    required TResult Function(AuthenticationStatus authStatus)
        authenticationStatusChanged,
    required TResult Function() authenticationLogoutRequested,
  }) {
    return loaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loaded,
    TResult? Function(String locale)? localeChanged,
    TResult? Function(bool enable)? darkModeChanged,
    TResult? Function(AuthenticationStatus authStatus)?
        authenticationStatusChanged,
    TResult? Function()? authenticationLogoutRequested,
  }) {
    return loaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function(String locale)? localeChanged,
    TResult Function(bool enable)? darkModeChanged,
    TResult Function(AuthenticationStatus authStatus)?
        authenticationStatusChanged,
    TResult Function()? authenticationLogoutRequested,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApplicationLoaded value) loaded,
    required TResult Function(ApplicationLocaleChanged value) localeChanged,
    required TResult Function(ApplicationDarkModeChanged value) darkModeChanged,
    required TResult Function(ApplicationAuthenticationStatusChanged value)
        authenticationStatusChanged,
    required TResult Function(ApplicationAuthenticationLogoutRequested value)
        authenticationLogoutRequested,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApplicationLoaded value)? loaded,
    TResult? Function(ApplicationLocaleChanged value)? localeChanged,
    TResult? Function(ApplicationDarkModeChanged value)? darkModeChanged,
    TResult? Function(ApplicationAuthenticationStatusChanged value)?
        authenticationStatusChanged,
    TResult? Function(ApplicationAuthenticationLogoutRequested value)?
        authenticationLogoutRequested,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApplicationLoaded value)? loaded,
    TResult Function(ApplicationLocaleChanged value)? localeChanged,
    TResult Function(ApplicationDarkModeChanged value)? darkModeChanged,
    TResult Function(ApplicationAuthenticationStatusChanged value)?
        authenticationStatusChanged,
    TResult Function(ApplicationAuthenticationLogoutRequested value)?
        authenticationLogoutRequested,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class ApplicationLoaded implements ApplicationEvent {
  const factory ApplicationLoaded() = _$ApplicationLoaded;
}

/// @nodoc
abstract class _$$ApplicationLocaleChangedCopyWith<$Res> {
  factory _$$ApplicationLocaleChangedCopyWith(_$ApplicationLocaleChanged value,
          $Res Function(_$ApplicationLocaleChanged) then) =
      __$$ApplicationLocaleChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String locale});
}

/// @nodoc
class __$$ApplicationLocaleChangedCopyWithImpl<$Res>
    extends _$ApplicationEventCopyWithImpl<$Res, _$ApplicationLocaleChanged>
    implements _$$ApplicationLocaleChangedCopyWith<$Res> {
  __$$ApplicationLocaleChangedCopyWithImpl(_$ApplicationLocaleChanged _value,
      $Res Function(_$ApplicationLocaleChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locale = null,
  }) {
    return _then(_$ApplicationLocaleChanged(
      locale: null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ApplicationLocaleChanged implements ApplicationLocaleChanged {
  const _$ApplicationLocaleChanged({required this.locale});

  @override
  final String locale;

  @override
  String toString() {
    return 'ApplicationEvent.localeChanged(locale: $locale)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApplicationLocaleChanged &&
            (identical(other.locale, locale) || other.locale == locale));
  }

  @override
  int get hashCode => Object.hash(runtimeType, locale);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApplicationLocaleChangedCopyWith<_$ApplicationLocaleChanged>
      get copyWith =>
          __$$ApplicationLocaleChangedCopyWithImpl<_$ApplicationLocaleChanged>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loaded,
    required TResult Function(String locale) localeChanged,
    required TResult Function(bool enable) darkModeChanged,
    required TResult Function(AuthenticationStatus authStatus)
        authenticationStatusChanged,
    required TResult Function() authenticationLogoutRequested,
  }) {
    return localeChanged(locale);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loaded,
    TResult? Function(String locale)? localeChanged,
    TResult? Function(bool enable)? darkModeChanged,
    TResult? Function(AuthenticationStatus authStatus)?
        authenticationStatusChanged,
    TResult? Function()? authenticationLogoutRequested,
  }) {
    return localeChanged?.call(locale);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function(String locale)? localeChanged,
    TResult Function(bool enable)? darkModeChanged,
    TResult Function(AuthenticationStatus authStatus)?
        authenticationStatusChanged,
    TResult Function()? authenticationLogoutRequested,
    required TResult orElse(),
  }) {
    if (localeChanged != null) {
      return localeChanged(locale);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApplicationLoaded value) loaded,
    required TResult Function(ApplicationLocaleChanged value) localeChanged,
    required TResult Function(ApplicationDarkModeChanged value) darkModeChanged,
    required TResult Function(ApplicationAuthenticationStatusChanged value)
        authenticationStatusChanged,
    required TResult Function(ApplicationAuthenticationLogoutRequested value)
        authenticationLogoutRequested,
  }) {
    return localeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApplicationLoaded value)? loaded,
    TResult? Function(ApplicationLocaleChanged value)? localeChanged,
    TResult? Function(ApplicationDarkModeChanged value)? darkModeChanged,
    TResult? Function(ApplicationAuthenticationStatusChanged value)?
        authenticationStatusChanged,
    TResult? Function(ApplicationAuthenticationLogoutRequested value)?
        authenticationLogoutRequested,
  }) {
    return localeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApplicationLoaded value)? loaded,
    TResult Function(ApplicationLocaleChanged value)? localeChanged,
    TResult Function(ApplicationDarkModeChanged value)? darkModeChanged,
    TResult Function(ApplicationAuthenticationStatusChanged value)?
        authenticationStatusChanged,
    TResult Function(ApplicationAuthenticationLogoutRequested value)?
        authenticationLogoutRequested,
    required TResult orElse(),
  }) {
    if (localeChanged != null) {
      return localeChanged(this);
    }
    return orElse();
  }
}

abstract class ApplicationLocaleChanged implements ApplicationEvent {
  const factory ApplicationLocaleChanged({required final String locale}) =
      _$ApplicationLocaleChanged;

  String get locale;
  @JsonKey(ignore: true)
  _$$ApplicationLocaleChangedCopyWith<_$ApplicationLocaleChanged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ApplicationDarkModeChangedCopyWith<$Res> {
  factory _$$ApplicationDarkModeChangedCopyWith(
          _$ApplicationDarkModeChanged value,
          $Res Function(_$ApplicationDarkModeChanged) then) =
      __$$ApplicationDarkModeChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({bool enable});
}

/// @nodoc
class __$$ApplicationDarkModeChangedCopyWithImpl<$Res>
    extends _$ApplicationEventCopyWithImpl<$Res, _$ApplicationDarkModeChanged>
    implements _$$ApplicationDarkModeChangedCopyWith<$Res> {
  __$$ApplicationDarkModeChangedCopyWithImpl(
      _$ApplicationDarkModeChanged _value,
      $Res Function(_$ApplicationDarkModeChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enable = null,
  }) {
    return _then(_$ApplicationDarkModeChanged(
      enable: null == enable
          ? _value.enable
          : enable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ApplicationDarkModeChanged implements ApplicationDarkModeChanged {
  const _$ApplicationDarkModeChanged({required this.enable});

  @override
  final bool enable;

  @override
  String toString() {
    return 'ApplicationEvent.darkModeChanged(enable: $enable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApplicationDarkModeChanged &&
            (identical(other.enable, enable) || other.enable == enable));
  }

  @override
  int get hashCode => Object.hash(runtimeType, enable);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApplicationDarkModeChangedCopyWith<_$ApplicationDarkModeChanged>
      get copyWith => __$$ApplicationDarkModeChangedCopyWithImpl<
          _$ApplicationDarkModeChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loaded,
    required TResult Function(String locale) localeChanged,
    required TResult Function(bool enable) darkModeChanged,
    required TResult Function(AuthenticationStatus authStatus)
        authenticationStatusChanged,
    required TResult Function() authenticationLogoutRequested,
  }) {
    return darkModeChanged(enable);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loaded,
    TResult? Function(String locale)? localeChanged,
    TResult? Function(bool enable)? darkModeChanged,
    TResult? Function(AuthenticationStatus authStatus)?
        authenticationStatusChanged,
    TResult? Function()? authenticationLogoutRequested,
  }) {
    return darkModeChanged?.call(enable);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function(String locale)? localeChanged,
    TResult Function(bool enable)? darkModeChanged,
    TResult Function(AuthenticationStatus authStatus)?
        authenticationStatusChanged,
    TResult Function()? authenticationLogoutRequested,
    required TResult orElse(),
  }) {
    if (darkModeChanged != null) {
      return darkModeChanged(enable);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApplicationLoaded value) loaded,
    required TResult Function(ApplicationLocaleChanged value) localeChanged,
    required TResult Function(ApplicationDarkModeChanged value) darkModeChanged,
    required TResult Function(ApplicationAuthenticationStatusChanged value)
        authenticationStatusChanged,
    required TResult Function(ApplicationAuthenticationLogoutRequested value)
        authenticationLogoutRequested,
  }) {
    return darkModeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApplicationLoaded value)? loaded,
    TResult? Function(ApplicationLocaleChanged value)? localeChanged,
    TResult? Function(ApplicationDarkModeChanged value)? darkModeChanged,
    TResult? Function(ApplicationAuthenticationStatusChanged value)?
        authenticationStatusChanged,
    TResult? Function(ApplicationAuthenticationLogoutRequested value)?
        authenticationLogoutRequested,
  }) {
    return darkModeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApplicationLoaded value)? loaded,
    TResult Function(ApplicationLocaleChanged value)? localeChanged,
    TResult Function(ApplicationDarkModeChanged value)? darkModeChanged,
    TResult Function(ApplicationAuthenticationStatusChanged value)?
        authenticationStatusChanged,
    TResult Function(ApplicationAuthenticationLogoutRequested value)?
        authenticationLogoutRequested,
    required TResult orElse(),
  }) {
    if (darkModeChanged != null) {
      return darkModeChanged(this);
    }
    return orElse();
  }
}

abstract class ApplicationDarkModeChanged implements ApplicationEvent {
  const factory ApplicationDarkModeChanged({required final bool enable}) =
      _$ApplicationDarkModeChanged;

  bool get enable;
  @JsonKey(ignore: true)
  _$$ApplicationDarkModeChangedCopyWith<_$ApplicationDarkModeChanged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ApplicationAuthenticationStatusChangedCopyWith<$Res> {
  factory _$$ApplicationAuthenticationStatusChangedCopyWith(
          _$ApplicationAuthenticationStatusChanged value,
          $Res Function(_$ApplicationAuthenticationStatusChanged) then) =
      __$$ApplicationAuthenticationStatusChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthenticationStatus authStatus});
}

/// @nodoc
class __$$ApplicationAuthenticationStatusChangedCopyWithImpl<$Res>
    extends _$ApplicationEventCopyWithImpl<$Res,
        _$ApplicationAuthenticationStatusChanged>
    implements _$$ApplicationAuthenticationStatusChangedCopyWith<$Res> {
  __$$ApplicationAuthenticationStatusChangedCopyWithImpl(
      _$ApplicationAuthenticationStatusChanged _value,
      $Res Function(_$ApplicationAuthenticationStatusChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authStatus = null,
  }) {
    return _then(_$ApplicationAuthenticationStatusChanged(
      authStatus: null == authStatus
          ? _value.authStatus
          : authStatus // ignore: cast_nullable_to_non_nullable
              as AuthenticationStatus,
    ));
  }
}

/// @nodoc

class _$ApplicationAuthenticationStatusChanged
    implements ApplicationAuthenticationStatusChanged {
  const _$ApplicationAuthenticationStatusChanged({required this.authStatus});

  @override
  final AuthenticationStatus authStatus;

  @override
  String toString() {
    return 'ApplicationEvent.authenticationStatusChanged(authStatus: $authStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApplicationAuthenticationStatusChanged &&
            (identical(other.authStatus, authStatus) ||
                other.authStatus == authStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, authStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApplicationAuthenticationStatusChangedCopyWith<
          _$ApplicationAuthenticationStatusChanged>
      get copyWith => __$$ApplicationAuthenticationStatusChangedCopyWithImpl<
          _$ApplicationAuthenticationStatusChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loaded,
    required TResult Function(String locale) localeChanged,
    required TResult Function(bool enable) darkModeChanged,
    required TResult Function(AuthenticationStatus authStatus)
        authenticationStatusChanged,
    required TResult Function() authenticationLogoutRequested,
  }) {
    return authenticationStatusChanged(authStatus);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loaded,
    TResult? Function(String locale)? localeChanged,
    TResult? Function(bool enable)? darkModeChanged,
    TResult? Function(AuthenticationStatus authStatus)?
        authenticationStatusChanged,
    TResult? Function()? authenticationLogoutRequested,
  }) {
    return authenticationStatusChanged?.call(authStatus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function(String locale)? localeChanged,
    TResult Function(bool enable)? darkModeChanged,
    TResult Function(AuthenticationStatus authStatus)?
        authenticationStatusChanged,
    TResult Function()? authenticationLogoutRequested,
    required TResult orElse(),
  }) {
    if (authenticationStatusChanged != null) {
      return authenticationStatusChanged(authStatus);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApplicationLoaded value) loaded,
    required TResult Function(ApplicationLocaleChanged value) localeChanged,
    required TResult Function(ApplicationDarkModeChanged value) darkModeChanged,
    required TResult Function(ApplicationAuthenticationStatusChanged value)
        authenticationStatusChanged,
    required TResult Function(ApplicationAuthenticationLogoutRequested value)
        authenticationLogoutRequested,
  }) {
    return authenticationStatusChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApplicationLoaded value)? loaded,
    TResult? Function(ApplicationLocaleChanged value)? localeChanged,
    TResult? Function(ApplicationDarkModeChanged value)? darkModeChanged,
    TResult? Function(ApplicationAuthenticationStatusChanged value)?
        authenticationStatusChanged,
    TResult? Function(ApplicationAuthenticationLogoutRequested value)?
        authenticationLogoutRequested,
  }) {
    return authenticationStatusChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApplicationLoaded value)? loaded,
    TResult Function(ApplicationLocaleChanged value)? localeChanged,
    TResult Function(ApplicationDarkModeChanged value)? darkModeChanged,
    TResult Function(ApplicationAuthenticationStatusChanged value)?
        authenticationStatusChanged,
    TResult Function(ApplicationAuthenticationLogoutRequested value)?
        authenticationLogoutRequested,
    required TResult orElse(),
  }) {
    if (authenticationStatusChanged != null) {
      return authenticationStatusChanged(this);
    }
    return orElse();
  }
}

abstract class ApplicationAuthenticationStatusChanged
    implements ApplicationEvent {
  const factory ApplicationAuthenticationStatusChanged(
          {required final AuthenticationStatus authStatus}) =
      _$ApplicationAuthenticationStatusChanged;

  AuthenticationStatus get authStatus;
  @JsonKey(ignore: true)
  _$$ApplicationAuthenticationStatusChangedCopyWith<
          _$ApplicationAuthenticationStatusChanged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ApplicationAuthenticationLogoutRequestedCopyWith<$Res> {
  factory _$$ApplicationAuthenticationLogoutRequestedCopyWith(
          _$ApplicationAuthenticationLogoutRequested value,
          $Res Function(_$ApplicationAuthenticationLogoutRequested) then) =
      __$$ApplicationAuthenticationLogoutRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ApplicationAuthenticationLogoutRequestedCopyWithImpl<$Res>
    extends _$ApplicationEventCopyWithImpl<$Res,
        _$ApplicationAuthenticationLogoutRequested>
    implements _$$ApplicationAuthenticationLogoutRequestedCopyWith<$Res> {
  __$$ApplicationAuthenticationLogoutRequestedCopyWithImpl(
      _$ApplicationAuthenticationLogoutRequested _value,
      $Res Function(_$ApplicationAuthenticationLogoutRequested) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ApplicationAuthenticationLogoutRequested
    implements ApplicationAuthenticationLogoutRequested {
  const _$ApplicationAuthenticationLogoutRequested();

  @override
  String toString() {
    return 'ApplicationEvent.authenticationLogoutRequested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApplicationAuthenticationLogoutRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loaded,
    required TResult Function(String locale) localeChanged,
    required TResult Function(bool enable) darkModeChanged,
    required TResult Function(AuthenticationStatus authStatus)
        authenticationStatusChanged,
    required TResult Function() authenticationLogoutRequested,
  }) {
    return authenticationLogoutRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loaded,
    TResult? Function(String locale)? localeChanged,
    TResult? Function(bool enable)? darkModeChanged,
    TResult? Function(AuthenticationStatus authStatus)?
        authenticationStatusChanged,
    TResult? Function()? authenticationLogoutRequested,
  }) {
    return authenticationLogoutRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function(String locale)? localeChanged,
    TResult Function(bool enable)? darkModeChanged,
    TResult Function(AuthenticationStatus authStatus)?
        authenticationStatusChanged,
    TResult Function()? authenticationLogoutRequested,
    required TResult orElse(),
  }) {
    if (authenticationLogoutRequested != null) {
      return authenticationLogoutRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApplicationLoaded value) loaded,
    required TResult Function(ApplicationLocaleChanged value) localeChanged,
    required TResult Function(ApplicationDarkModeChanged value) darkModeChanged,
    required TResult Function(ApplicationAuthenticationStatusChanged value)
        authenticationStatusChanged,
    required TResult Function(ApplicationAuthenticationLogoutRequested value)
        authenticationLogoutRequested,
  }) {
    return authenticationLogoutRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApplicationLoaded value)? loaded,
    TResult? Function(ApplicationLocaleChanged value)? localeChanged,
    TResult? Function(ApplicationDarkModeChanged value)? darkModeChanged,
    TResult? Function(ApplicationAuthenticationStatusChanged value)?
        authenticationStatusChanged,
    TResult? Function(ApplicationAuthenticationLogoutRequested value)?
        authenticationLogoutRequested,
  }) {
    return authenticationLogoutRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApplicationLoaded value)? loaded,
    TResult Function(ApplicationLocaleChanged value)? localeChanged,
    TResult Function(ApplicationDarkModeChanged value)? darkModeChanged,
    TResult Function(ApplicationAuthenticationStatusChanged value)?
        authenticationStatusChanged,
    TResult Function(ApplicationAuthenticationLogoutRequested value)?
        authenticationLogoutRequested,
    required TResult orElse(),
  }) {
    if (authenticationLogoutRequested != null) {
      return authenticationLogoutRequested(this);
    }
    return orElse();
  }
}

abstract class ApplicationAuthenticationLogoutRequested
    implements ApplicationEvent {
  const factory ApplicationAuthenticationLogoutRequested() =
      _$ApplicationAuthenticationLogoutRequested;
}

/// @nodoc
mixin _$ApplicationState {
  UIStatus get status => throw _privateConstructorUsedError;
  String get locale => throw _privateConstructorUsedError;
  bool get isDarkMode => throw _privateConstructorUsedError;
  AuthenticationStatus get authStatus => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ApplicationStateCopyWith<ApplicationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApplicationStateCopyWith<$Res> {
  factory $ApplicationStateCopyWith(
          ApplicationState value, $Res Function(ApplicationState) then) =
      _$ApplicationStateCopyWithImpl<$Res, ApplicationState>;
  @useResult
  $Res call(
      {UIStatus status,
      String locale,
      bool isDarkMode,
      AuthenticationStatus authStatus,
      User? user});
}

/// @nodoc
class _$ApplicationStateCopyWithImpl<$Res, $Val extends ApplicationState>
    implements $ApplicationStateCopyWith<$Res> {
  _$ApplicationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? locale = null,
    Object? isDarkMode = null,
    Object? authStatus = null,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as UIStatus,
      locale: null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String,
      isDarkMode: null == isDarkMode
          ? _value.isDarkMode
          : isDarkMode // ignore: cast_nullable_to_non_nullable
              as bool,
      authStatus: null == authStatus
          ? _value.authStatus
          : authStatus // ignore: cast_nullable_to_non_nullable
              as AuthenticationStatus,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ApplicationStateCopyWith<$Res>
    implements $ApplicationStateCopyWith<$Res> {
  factory _$$_ApplicationStateCopyWith(
          _$_ApplicationState value, $Res Function(_$_ApplicationState) then) =
      __$$_ApplicationStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UIStatus status,
      String locale,
      bool isDarkMode,
      AuthenticationStatus authStatus,
      User? user});
}

/// @nodoc
class __$$_ApplicationStateCopyWithImpl<$Res>
    extends _$ApplicationStateCopyWithImpl<$Res, _$_ApplicationState>
    implements _$$_ApplicationStateCopyWith<$Res> {
  __$$_ApplicationStateCopyWithImpl(
      _$_ApplicationState _value, $Res Function(_$_ApplicationState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? locale = null,
    Object? isDarkMode = null,
    Object? authStatus = null,
    Object? user = freezed,
  }) {
    return _then(_$_ApplicationState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as UIStatus,
      locale: null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String,
      isDarkMode: null == isDarkMode
          ? _value.isDarkMode
          : isDarkMode // ignore: cast_nullable_to_non_nullable
              as bool,
      authStatus: null == authStatus
          ? _value.authStatus
          : authStatus // ignore: cast_nullable_to_non_nullable
              as AuthenticationStatus,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }
}

/// @nodoc

class _$_ApplicationState implements _ApplicationState {
  const _$_ApplicationState(
      {this.status = UIStatus.loading,
      this.locale = 'en',
      this.isDarkMode = false,
      this.authStatus = AuthenticationStatus.unknown,
      this.user = User.empty});

  @override
  @JsonKey()
  final UIStatus status;
  @override
  @JsonKey()
  final String locale;
  @override
  @JsonKey()
  final bool isDarkMode;
  @override
  @JsonKey()
  final AuthenticationStatus authStatus;
  @override
  @JsonKey()
  final User? user;

  @override
  String toString() {
    return 'ApplicationState(status: $status, locale: $locale, isDarkMode: $isDarkMode, authStatus: $authStatus, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApplicationState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.locale, locale) || other.locale == locale) &&
            (identical(other.isDarkMode, isDarkMode) ||
                other.isDarkMode == isDarkMode) &&
            (identical(other.authStatus, authStatus) ||
                other.authStatus == authStatus) &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, status, locale, isDarkMode, authStatus, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ApplicationStateCopyWith<_$_ApplicationState> get copyWith =>
      __$$_ApplicationStateCopyWithImpl<_$_ApplicationState>(this, _$identity);
}

abstract class _ApplicationState implements ApplicationState {
  const factory _ApplicationState(
      {final UIStatus status,
      final String locale,
      final bool isDarkMode,
      final AuthenticationStatus authStatus,
      final User? user}) = _$_ApplicationState;

  @override
  UIStatus get status;
  @override
  String get locale;
  @override
  bool get isDarkMode;
  @override
  AuthenticationStatus get authStatus;
  @override
  User? get user;
  @override
  @JsonKey(ignore: true)
  _$$_ApplicationStateCopyWith<_$_ApplicationState> get copyWith =>
      throw _privateConstructorUsedError;
}
