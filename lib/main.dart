import 'package:logger/logger.dart';

import 'index.dart';

Future<void> main() async {
  await runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();

    setupLocator();
    Logger.level = Level.all;
    AppConfig.init();

    runApp(const MyApp());
  }, (error, stack) {});
}
