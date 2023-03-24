import 'dart:async';

import 'package:flutter_boilerplate/app/bloc_observer.dart';
import 'package:flutter_boilerplate/configs/app_config.dart';
import 'package:flutter_boilerplate/injector/injector.dart';
import 'package:flutter_boilerplate/services/crashlytics_service/crashlytics_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';

import 'app/view/my_app.dart';

Future<void> main() async {
  await runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();

    /// Firebase initialize ...
    Logger.level = Level.verbose;
    AppConfig.configDev();
    Injector.init();

    await Injector.instance.allReady();

    runApp(const MyApp());
  }, (error, stack) {
    final CrashlyticsService crashlyticsService =
        Injector.instance<CrashlyticsService>();
    crashlyticsService.recordException(error, stack);
  });
}
