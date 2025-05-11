import 'package:flutter/material.dart';

import '../../widgets/child_resgister_screen_widget.dart';
import 'child_email.screen.dart';

class ChildNameScreen extends StatelessWidget {
  const ChildNameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChildRegisterScreenWidget(
        registerType: 'name',
        nextScreen: (context) => const ChildEmailScreen(),
      ),
    );
  }
}

