import 'package:get_it/get_it.dart';
import 'package:talker_flutter/talker_flutter.dart';

final getIt = GetIt.instance;

void setupDependencies() {
  getIt.registerLazySingleton<Talker>(() => TalkerFlutter.init());
}
