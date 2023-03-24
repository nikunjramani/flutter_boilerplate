part of 'application_bloc.dart';

@Freezed()
class ApplicationState with _$ApplicationState {
  const factory ApplicationState({
    @Default(UIStatus.loading) UIStatus status,
    @Default('en') String locale,
    @Default(false) bool isDarkMode,
    @Default(AuthenticationStatus.unknown) AuthenticationStatus authStatus,
    @Default(User.empty) User? user,
  }) = _ApplicationState;
}

enum UIStatus {
  initial,
  loading,
  loadSuccess,
  loadFailed,
}
