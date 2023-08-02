import 'package:logger/logger.dart';

class DebugLogService {


  static late final DebugLogService? _instance;
   static DebugLogService get instance => _instance ??= DebugLogService();

  DebugLogService({Logger? logger}) {
    _logger = logger ??
        Logger(
          printer: PrettyPrinter(),
        );
  }
  late final Logger _logger;

  void e({String? message, dynamic e, StackTrace? stack}) {
    _logger.e(message, error: e, stackTrace: stack, time: DateTime.now());
  }

  void d({required String? message, dynamic e, StackTrace? stack}) {
    _logger.d(message, error: e, stackTrace: stack, time: DateTime.now());
  }
  void w({String? message, dynamic e, StackTrace? stack}) {
    _logger.w(message, error: e, stackTrace: stack, time: DateTime.now());
  }

  void i({String? message, dynamic e, StackTrace? stack}) {
    _logger.i(message, error: e, stackTrace: stack, time: DateTime.now());
  }
}
