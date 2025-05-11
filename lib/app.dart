import 'package:flutter/material.dart';
import 'package:graduation_app/screens/onboarding/splash_screen.dart';

import 'widgets/games/child_games_screen.dart';
import 'screens/registeration/teahcer/teacher_approval_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, home: ChildGamesScreen());
  }
}
