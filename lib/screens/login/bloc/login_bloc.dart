import 'package:bloc/bloc.dart';
import 'package:flutter_boilerplate/data/repositories/authentication_repository.dart';
import 'package:flutter_boilerplate/screens/login/view/login_page.dart';
import 'package:flutter_boilerplate/utils/form_validation.dart';
import 'package:equatable/equatable.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc({
    required AuthenticationRepository authenticationRepository,
  })  : _authenticationRepository = authenticationRepository,
        super(const LoginState()) {
    on<LoginUsernameChanged>(_onUsernameChanged);
    on<LoginPasswordChanged>(_onPasswordChanged);
    on<LoginSubmitted>(_onSubmitted);
  }

  final AuthenticationRepository _authenticationRepository;

  void _onUsernameChanged(
    LoginUsernameChanged event,
    Emitter<LoginState> emit,
  ) {
    emit(
      state.copyWith(
        username: event.username,
      ),
    );
  }

  void _onPasswordChanged(
    LoginPasswordChanged event,
    Emitter<LoginState> emit,
  ) {
    emit(
      state.copyWith(
        password: event.password,
      ),
    );
  }

  Future<void> _onSubmitted(
    LoginSubmitted event,
    Emitter<LoginState> emit,
  ) async {
    if (state.password.isValidPassword && state.username.isValidEmail) {
      emit(state.copyWith(status: Status.inProgress));
      try {
        await _authenticationRepository.logIn(
          username: state.username,
          password: state.password,
        );
        emit(state.copyWith(status: Status.success));
      } catch (e) {
        emit(
            state.copyWith(status: Status.failure, errorMessage: e.toString()));
      }
    }
  }
}
