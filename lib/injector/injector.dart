import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_boilerplate/app/bloc_observer.dart';
import 'package:flutter_boilerplate/injector/bloc_module.dart';
import 'package:get_it/get_it.dart';

import 'service_module.dart';

class Injector {
  static GetIt instance = GetIt.instance;
  Injector._();

  static void init() {
    ServiceModule.init();
    BlocModule.init();
    Bloc.observer = AppBlocObserver();
  }

  static void reset() {
    instance.reset();
  }

  static void resetLazySingleton() {
    instance.resetLazySingleton();
  }
}
