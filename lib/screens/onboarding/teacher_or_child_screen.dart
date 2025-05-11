import 'package:flutter/material.dart';
import 'package:graduation_app/helper/helper.dart';

import '../../widgets/teacher_or_student_circle_widget.dart';
import '../../widgets/teacher_or_student_continue_button.dart';
import 'teacher_age_screen.dart';

class ChildOrTeacherScreen extends StatelessWidget {
  const ChildOrTeacherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: 375,
            child: Image.asset(
              'assets/images/teacher_or_student.png',
              fit: BoxFit.cover,
            ),
          ),
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  height: MediaQuery.of(context).size.height * 0.7,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Color(0xffBFA7FF),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 10, left: 40, right: 40),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text(
                              "I'm a ",
                              style: TextStyle(
                                  fontSize: 24,
                                  fontFamily: fontFamily,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      TeacherOrStudentCircleWidget(
                          borderColor: Colors.white, text: "Child"),
                      const SizedBox(height: 20),
                      TeacherOrStudentCircleWidget(
                          borderColor: Color(0xff5E11B5), text: "Teacher"),
                      Spacer(),
                      Flexible(
                        child: TeacherOrStudentContinueButton(
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const TeacherAgeScreen(),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ))),
        ],
      ),
    );
  }
}
