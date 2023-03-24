import 'package:flutter_boilerplate/app/bloc/application_bloc.dart';
import 'package:flutter_boilerplate/data/repositories/authentication_repository.dart';
import 'package:flutter_boilerplate/screens/login/bloc/login_bloc.dart';

import 'injector.dart';

class BlocModule {
  BlocModule._();

  static void init() {
    final injector = Injector.instance;

    injector.registerSingleton<ApplicationBloc>(ApplicationBloc(
        localStorageService: injector(),
        authenticationRepository: AuthenticationRepository()));
    injector.registerSingleton<LoginBloc>(
        LoginBloc(authenticationRepository: AuthenticationRepository()));
  }
}
