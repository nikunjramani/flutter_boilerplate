import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_boilerplate/data/models/user.dart';
import 'package:flutter_boilerplate/data/repositories/authentication_repository.dart';
import 'package:flutter_boilerplate/generated/l10n.dart';
import 'package:flutter_boilerplate/services/local_storage_service/shared_preferences_service.dart';
import 'package:flutter_boilerplate/utils/enums.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'application_bloc.freezed.dart';
part 'application_event.dart';
part 'application_state.dart';

class ApplicationBloc extends Bloc<ApplicationEvent, ApplicationState> {
  ApplicationBloc({
    required SharedPreferencesService sharedPreferencesService,
    required AuthenticationRepository authenticationRepository,
  }) : super(const ApplicationState()) {
    _localStorageService = sharedPreferencesService;
    on<ApplicationLoaded>(_onLoaded);
    on<ApplicationLocaleChanged>(_onLocaleChanged);
    on<ApplicationDarkModeChanged>(_onDarkModeChanged);
  }

  late SharedPreferencesService _localStorageService;
  late StreamSubscription<AuthenticationStatus>
      _authenticationStatusSubscription;

  @override
  Future<void> close() {
    _authenticationStatusSubscription.cancel();
    return super.close();
  }

  FutureOr<void> _onLoaded(
    ApplicationLoaded event,
    Emitter<ApplicationState> emit,
  ) {
    emit(state.copyWith(
      status: UIStatus.loading,
    ));

    final String locale = _localStorageService.locale;
    final bool isDarkMode = _localStorageService.isDarkMode;

    emit(state.copyWith(
      status: UIStatus.loadSuccess,
      locale: locale,
      isDarkMode: isDarkMode,
    ));
  }

  FutureOr<void> _onLocaleChanged(
    ApplicationLocaleChanged event,
    Emitter<ApplicationState> emit,
  ) async {
    if (state.locale != event.locale) {
      emit(state.copyWith(
        status: UIStatus.loading,
      ));
      await LocalString.load(Locale(event.locale));

      _localStorageService.setLocale(event.locale);

      emit(state.copyWith(
        status: UIStatus.loadSuccess,
        locale: event.locale,
      ));
    }
  }

  FutureOr<void> _onDarkModeChanged(
    ApplicationDarkModeChanged event,
    Emitter<ApplicationState> emit,
  ) async {
    if (state.isDarkMode != event.enable) {
      emit(state.copyWith(
        status: UIStatus.loading,
      ));

      _localStorageService.setIsDarkMode(event.enable);

      emit(state.copyWith(
        status: UIStatus.loadSuccess,
        isDarkMode: event.enable,
      ));
    }
  }
}
