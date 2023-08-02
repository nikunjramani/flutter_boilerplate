import 'dart:async';

import 'package:flutter_boilerplate/build_type_utils.dart';
import 'package:flutter_boilerplate/configs/app_config.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

import 'app/view/my_app.dart';

Future<void> main() async {
  await runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();
    await BuildTypeUtils.instance.init();

    Logger.level = Level.all;
    AppConfig.init();


    runApp(const MyApp());
  }, (error, stack) {
  });
}
