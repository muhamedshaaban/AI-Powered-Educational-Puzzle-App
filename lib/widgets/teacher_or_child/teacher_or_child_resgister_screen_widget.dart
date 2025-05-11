import 'package:flutter/material.dart';

import '../../helper/helper.dart';
import '../custom_text_form_widget.dart';
import 'teacher_or_child_continue_button.dart';

class TeacherOrChildRegisterScreenWidget extends StatelessWidget {
  const TeacherOrChildRegisterScreenWidget({
    super.key,
    required this.registerType,
    required this.nextScreen,
    required this.imagePath,
    required this.childOrTeacher,
  });
  final String registerType;
  final Widget Function(BuildContext) nextScreen;
  final String imagePath;
  final String childOrTeacher;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: MediaQuery.of(context).size.height * 0.7,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color(0xffBFA7FF),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 140), // Space for the image
                  Text(
                    childOrTeacher == 'child'
                        ? 'What is your child’s $registerType?'
                        : 'What is your $registerType?',
                    style: TextStyle(
                      fontSize: 22,
                      fontFamily: fontFamily,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Enter $registerType',
                    style: TextStyle(
                      fontSize: 12,
                      fontFamily: fontFamily,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const CustomTextFormWidget(),
                  const Spacer(),
                  TeacherOrStudentContinueButton(onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => nextScreen(context),
                      ),
                    );
                  }),
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          width: double.infinity,
          height: 378,
          child: Image.asset(
            imagePath,
            fit: BoxFit.fill,
          ),
        ),
      ],
    );
  }
}
