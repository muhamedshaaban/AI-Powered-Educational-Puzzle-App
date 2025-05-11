import 'package:flutter/material.dart';

import '../helper/helper.dart';
import '../screens/onboarding/intersting_topics_screen.dart';
import 'teacher_or_student_age_field_widget.dart';
import 'teacher_or_student_continue_button.dart';

class ChildAgeBottomWidget extends StatelessWidget {
  const ChildAgeBottomWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 40),
        child: Text(
          "How old are you?",
          style: TextStyle(
              fontSize: 24, fontFamily: fontFamily, color: Colors.white),
        ),
      ),
      TeacherOrStudentAgeFieldWidget(
        age: '3 - 5 years old',
        borderColor: Colors.white,
      ),
      SizedBox(height: 20),
      TeacherOrStudentAgeFieldWidget(
        age: '6 - 8 years old',
        borderColor: Color(0xff5E11B5),
        textColor: Color(0xff5E11B5),
      ),
      SizedBox(height: 20),
      TeacherOrStudentAgeFieldWidget(
        age: '8 - 10 years old',
        borderColor: Colors.white,
      ),
      SizedBox(height: 20),
      TeacherOrStudentAgeFieldWidget(
        age: '10 - 13 years old',
        borderColor: Colors.white,
      ),
      Spacer(),
      TeacherOrStudentContinueButton(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const InterestingTopicsScreen(),
            ),
          );
        },
      ),
    ]);
  }
}
