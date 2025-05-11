import 'package:flutter/material.dart';

import '../../../widgets/teacher_or_child/teacher_or_child_password_widget.dart';
import 'teacher_avatar_screen.dart';

class TeacherPasswordScreen extends StatelessWidget {
  const TeacherPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChildOrTeacherPasswordWidget(
        imagePath: 'assets/images/teacher_image.png',
        text: 'Keep your account safe!',
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => TeacherAvatarScreen()));
        },
      ),
    );
  }
}
