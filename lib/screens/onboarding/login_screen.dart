import 'package:flutter/material.dart';
import 'package:graduation_app/widgets/teacher_or_child/teacher_or_child_continue_button.dart';

import '../../helper/helper.dart';
import '../../widgets/custom_text_form_widget.dart';
import '../../widgets/teacher_or_child/teacher_or_child_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        SizedBox(
            width: double.infinity,
            height: 300,
            child: Image.asset(
              'assets/images/login_bg.png',
              fit: BoxFit.fill,
            )),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: MediaQuery.of(context).size.height * 0.67,
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
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 24),
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      child: DefaultTextStyle(
                        style: TextStyle(
                          fontSize: 22,
                          fontFamily: fontFamily,
                          color: Color(0xff5E11B5),
                        ),
                        child: Text(
                          'Welcome Again!',
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      child: DefaultTextStyle(
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: fontFamily,
                          color: Colors.white,
                        ),
                        child: Text(
                          'Email',
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    CustomTextFormWidget(
                      prefixIocn:
                          Icon(Icons.person_pin_rounded, color: Colors.grey),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      child: DefaultTextStyle(
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: fontFamily,
                          color: Colors.white,
                        ),
                        child: Text(
                          'Password',
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    CustomTextFormWidget(
                      prefixIocn: Icon(Icons.lock_outlined, color: Colors.grey),
                      suffixIcon: Icon(Icons.visibility_off_outlined,
                          color: Colors.grey, size: 24),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: DefaultTextStyle(
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: fontFamily,
                            color: Colors.white,
                          ),
                          child: Text(
                            'Forget Password?',
                          ),
                        ),
                      ),
                    ),
                    Spacer(),
                    TeacherOrStudentContinueButton(
                        bottomMargin: 4,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LoginScreen(),
                            ),
                          );
                        }),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FittedBox(
                          fit: BoxFit.scaleDown,
                          child: DefaultTextStyle(
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: fontFamily,
                              color: Colors.white,
                            ),
                            child: Text(
                              'Not a member?',
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const ChildOrTeacherScreen(),
                              ),
                            );
                          },
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            child: DefaultTextStyle(
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: fontFamily,
                                color: const Color(0xff5E11B5),
                              ),
                              child: Text(
                                'Sign Up',
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
