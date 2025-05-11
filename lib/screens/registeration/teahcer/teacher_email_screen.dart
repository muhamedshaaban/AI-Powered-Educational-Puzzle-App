import 'package:flutter/material.dart';

import '../../../widgets/teacher_or_child/teacher_or_child_resgister_screen_widget.dart';
import 'teacher_password_screen.dart';

class TeacherEmailScreen extends StatelessWidget {
  const TeacherEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: TeacherOrChildRegisterScreenWidget(
      imagePath: 'assets/images/teacher_image.png',
      childOrTeacher: 'teacher',
      registerType: 'e-mail',
      nextScreen: (context) => const TeacherPasswordScreen(),
    ));
  }
}
