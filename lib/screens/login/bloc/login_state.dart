part of 'login_bloc.dart';

class LoginState extends Equatable {
  const LoginState(
      {this.status = Status.none,
      this.username = "",
      this.password = "",
      this.errorMessage = ""});

  final Status status;
  final String username;
  final String password;
  final String errorMessage;

  LoginState copyWith(
      {Status? status,
      String? username,
      String? password,
      String? errorMessage}) {
    return LoginState(
      status: status ?? this.status,
      username: username ?? this.username,
      password: password ?? this.password,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  @override
  List<Object> get props => [status, username, password, errorMessage];
}
