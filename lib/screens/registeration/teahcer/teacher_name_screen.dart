import 'package:flutter/material.dart';

import '../../../widgets/teacher_or_child/teacher_or_child_resgister_screen_widget.dart';
import 'teacher_email_screen.dart';

class TeacherNameScreen extends StatelessWidget {
  const TeacherNameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TeacherOrChildRegisterScreenWidget(
        imagePath: 'assets/images/teacher_image.png',
        childOrTeacher: 'teacher',
        registerType: 'name',
        nextScreen: (context) => const TeacherEmailScreen(),
      ),
    );
  }
}
