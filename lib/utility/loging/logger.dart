import 'package:logger/logger.dart';
import 'package:logger/web.dart';

class TLoggerHelper {
  static final Logger logger = Logger(
    printer: PrettyPrinter(),
// Customize the log levels based on your needs level: Level.debug,
  );
// Logger
  static void debug(String message) {
    logger.d(message);
  }

  static void info(String message) {
    logger.i(message);
  }

  static void warning(String message) {
    logger.w(message);
  }

  static void error(String message, [dynamic error]) {
    logger.e(message, error: error, stackTrace: StackTrace.current);
  }
}
