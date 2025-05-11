import 'package:flutter/material.dart';

import '../helper/helper.dart';
import 'custom_text_form_widget.dart';
import 'teacher_or_student_continue_button.dart';

class ChildRegisterScreenWidget extends StatelessWidget {
  const ChildRegisterScreenWidget({
    super.key,
    required this.registerType,
    required this.nextScreen,
  });
  final String registerType;
  final Widget Function(BuildContext) nextScreen;

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
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 140,
                      ),
                      Text(
                        'What is your child’s $registerType?',
                        style: TextStyle(
                            fontSize: 24,
                            fontFamily: fontFamily,
                            color: Colors.white),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Enter $registerType',
                        style: TextStyle(
                            fontSize: 14,
                            fontFamily: fontFamily,
                            color: Colors.white),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      CustomTextFormWidget(),
                      Spacer(),
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
                ))),
        SizedBox(
          width: double.infinity,
          height: 375,
          child: Image.asset(
            'assets/images/student_age_3.png',
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}
