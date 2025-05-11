import 'package:flutter/material.dart';

import '../../../widgets/teacher_or_child/teacher_or_child_resgister_screen_widget.dart';
import 'child_email.screen.dart';

class ChildNameScreen extends StatelessWidget {
  const ChildNameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TeacherOrChildRegisterScreenWidget(
        imagePath: 'assets/images/student_age_3.png',
        childOrTeacher: 'child',
        registerType: 'name',
        nextScreen: (context) => const ChildEmailScreen(),
      ),
    );
  }
}
