import 'package:flutter/material.dart';

import '../../../widgets/teacher_or_child/teacher_or_child_resgister_screen_widget.dart';
import '../../../widgets/teacher_or_child/teacher_or_child_password_widget.dart';
import 'child_password_screen.dart';

class ChildEmailScreen extends StatelessWidget {
  const ChildEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TeacherOrChildRegisterScreenWidget(
        imagePath: 'assets/images/student_age_3.png',
        childOrTeacher: 'child',
        registerType: 'e-mail',
        nextScreen: (context) => const ChildPasswordScreen(),
      ),
    );
  }
}
