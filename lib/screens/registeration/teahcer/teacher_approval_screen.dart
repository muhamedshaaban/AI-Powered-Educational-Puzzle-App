import 'package:flutter/material.dart';

import '../../../helper/helper.dart';
import '../../onboarding/login_screen.dart';

class TeacherApprovalScreen extends StatelessWidget {
  const TeacherApprovalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
            width: double.infinity,
            height: 300,
            child: Image.asset(
              'assets/images/pending_screen_image.png',
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
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
                        'Your request is under review',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    child: DefaultTextStyle(
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: fontFamily,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                      child: Text(
                        '''
Thank you for registering as a teacher in our system. 
Your request is under review by the administration,
and you will be notified when your account is approved.
Please be patient as this process may take some time.''',
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginScreen(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff5E11B5),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 40,
                          vertical: 14,
                        ),
                      ),
                      child: const Text(
                        'Go to Login',
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: fontFamily,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
