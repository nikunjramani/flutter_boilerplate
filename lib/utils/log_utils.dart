import 'package:logger/logger.dart';

class LogUtil {
  static final Logger _logger = Logger();

  /// Logs a debug message
  static void d(String message) {
    _logger.d(message);
  }

  /// Logs an info message
  static void i(String message) {
    _logger.i(message);
  }

  /// Logs a warning message
  static void w(String message) {
    _logger.w(message);
  }

  /// Logs an error message
  static void e(String message, [dynamic error, StackTrace? stackTrace]) {
    _logger.e(message, error: error, stackTrace: stackTrace);
  }

  /// Logs a verbose message
  static void v(String message) {
    _logger.v(message);
  }
}
