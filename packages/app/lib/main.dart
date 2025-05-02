import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:talker_flutter/talker_flutter.dart';

import 'di.dart';
import 'splash_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();

  setupDependencies(); // init GetIt и Talker

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Zruchnist V2',
      debugShowCheckedModeBanner: false,
      navigatorObservers: [
        TalkerRouteObserver(getIt<Talker>()),
      ],
      home: const SplashScreen(),
    );
  }
}
