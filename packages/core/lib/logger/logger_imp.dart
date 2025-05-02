import 'package:core/logger/logger.dart';
import 'package:talker/talker.dart';

class TalkerLogger implements Logger {
  TalkerLogger(this.talker);
  final Talker talker;

  @override
  void log(String message) => talker.info(message);

  @override
  void error(Object error, [StackTrace? stackTrace]) =>
      talker.handle(error, stackTrace);
}
