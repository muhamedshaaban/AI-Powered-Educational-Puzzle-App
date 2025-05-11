import 'package:flutter/material.dart';

import '../../widgets/child_resgister_screen_widget.dart';
import 'child_password_screen.dart';

class ChildEmailScreen extends StatelessWidget {
  const ChildEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: ChildRegisterScreenWidget(
        registerType: 'e-mail',
        nextScreen: (context) => const ChildPasswordScreen(),
      ),
    );
  }
}