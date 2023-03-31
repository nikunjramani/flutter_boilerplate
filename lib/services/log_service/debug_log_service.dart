import 'package:logger/logger.dart';

class DebugLogService {
  DebugLogService({Logger? logger}) {
    _logger = logger ??
        Logger(
          printer: PrettyPrinter(),
        );
  }
  late final Logger _logger;

  void e(String message, dynamic e, StackTrace? stack) {
    _logger.e(message, e, stack);
  }
  void w(String message, dynamic e, StackTrace? stack) {
    _logger.w(message, e, stack);
  }

  void i(String message, dynamic e, StackTrace? stack) {
    _logger.i(message, e, stack);
  }
}
