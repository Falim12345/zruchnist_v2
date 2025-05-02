abstract class Logger {
  void log(String message);
  void error(Object message, [StackTrace? stackTrace]);
}
