import 'dart:ui';

import 'package:flutter/material.dart';

import '../../helper/helper.dart';
import '../../widgets/custom_text_form_widget.dart';
import '../../widgets/teacher_or_student_continue_button.dart';
import '../child/child_home_screen.dart';

class ChildPasswordScreen extends StatelessWidget {
  const ChildPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
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
                          'Keep your game safe!',
                          style: TextStyle(
                              fontSize: 24,
                              fontFamily: fontFamily,
                              color: Colors.white),
                        ),
                        const SizedBox(
                          height: 22,
                        ),
                        Text(
                          'password',
                          style: TextStyle(
                              fontSize: 14,
                              fontFamily: fontFamily,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Flexible(
                            child: CustomTextFormWidget(
                          suffixIcon: Icon(Icons.visibility_off_outlined,
                              color: Colors.grey, size: 24),
                          prefixIocn: Icon(Icons.lock_outlined,
                              color: Colors.grey, size: 24),
                        )),
                        const SizedBox(
                          height: 12,
                        ),
                        Text(
                          'confirm password',
                          style: TextStyle(
                              fontSize: 14,
                              fontFamily: fontFamily,
                              color: Colors.white),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        CustomTextFormWidget(
                          prefixIocn: Icon(Icons.lock_outlined,
                              color: Colors.grey, size: 24),
                          suffixIcon: Icon(Icons.visibility_off_outlined,
                              color: Colors.grey, size: 24),
                        ),
                        Spacer(),
                        TeacherOrStudentContinueButton(onTap: () {
                          ShowDialogMethod(context);
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
      ),
    );
  }

  Future<dynamic> ShowDialogMethod(BuildContext context) {
    return showDialog(
      context: context,
      barrierColor: Colors.transparent, // Allow background to show for blur
      builder: (context) => Stack(
        children: [
          // Blur the background
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
              child: Container(
                color: Colors.black.withOpacity(0.2), // Slight dim for contrast
              ),
            ),
          ),
          // Custom-colored dialog
          Center(
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xFF9F7AFF), // Hex color #9F7AFF
                borderRadius: BorderRadius.circular(12),
              ),
              padding: EdgeInsets.all(16),
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Material(
                color: Colors.transparent,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Ready? 🚀',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Let’s start the game!',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: Text(
                            'Cancel',
                            style: TextStyle(color: Colors.white70),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ChildHomeScreen(),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            foregroundColor: Color(0xFF9F7AFF),
                          ),
                          child: Text('Go!'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
