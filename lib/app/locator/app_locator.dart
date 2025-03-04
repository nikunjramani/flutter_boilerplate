import 'package:flutter_boilerplate/index.dart';
import 'package:flutter_boilerplate/pages/test/bloc/test_bloc.dart';

final GetIt getIt = GetIt.instance;

void setupLocator() {
  getIt.registerLazySingleton<ThemeBloc>(() => ThemeBloc());
  getIt.registerLazySingleton<LocalizationBloc>(() => LocalizationBloc());
  getIt.registerLazySingleton<TestBloc>(() => TestBloc());
}
