part of 'application_bloc.dart';

@Freezed()
class ApplicationEvent with _$ApplicationEvent {
  const factory ApplicationEvent.loaded() = ApplicationLoaded;
  const factory ApplicationEvent.localeChanged({
    required String locale,
  }) = ApplicationLocaleChanged;
  const factory ApplicationEvent.darkModeChanged({
    required bool enable,
  }) = ApplicationDarkModeChanged;
  const factory ApplicationEvent.authenticationStatusChanged({
    required AuthenticationStatus authStatus,
  }) = ApplicationAuthenticationStatusChanged;
  const factory ApplicationEvent.authenticationLogoutRequested() = ApplicationAuthenticationLogoutRequested;
}
