import 'package:flutter/material.dart';
import 'package:graduation_app/screens/child/child_home_screen.dart';
import 'package:graduation_app/screens/onboarding/splash_screen.dart';

import 'screens/onboarding/welcome_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, home: ChildHomeScreen());
  }
}
