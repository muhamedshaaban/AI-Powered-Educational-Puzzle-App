import 'package:flutter/material.dart';
import 'package:graduation_app/helper/helper.dart';
import 'teacher_or_child/teacher_or_child_screen.dart';

class WelcomeScreenBottomWidget extends StatelessWidget {
  const WelcomeScreenBottomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final MediaQueryData mediaQuery = MediaQuery.of(context);
    final double screenWidth = mediaQuery.size.width;
    final double screenHeight = mediaQuery.size.height;
    final bool isSmallScreen = screenWidth < 400;

    return Column(
      children: [
        SizedBox(height: screenHeight * 0.12), // Responsive spacing
        _buildGetStartedButton(context, isSmallScreen, screenWidth),
        const SizedBox(height: 24), // Fixed spacing between buttons
        _buildLoginButton(isSmallScreen, screenWidth),
      ],
    );
  }

  Widget _buildGetStartedButton(
      BuildContext context, bool isSmallScreen, double screenWidth) {
    return Container(
      height: 48,
      width: isSmallScreen ? screenWidth * 0.5 : 204, // Responsive width
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.white, width: 2),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 8),
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ChildOrTeacherScreen(),
              ),
            );
          },
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 6.0),
              child: Text(
                'Get Started',
                style: TextStyle(
                  fontFamily: fontFamily,
                  fontSize: isSmallScreen ? 18 : 20, // Responsive font size
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildLoginButton(bool isSmallScreen, double screenWidth) {
    return Container(
      height: 48,
      width: isSmallScreen ? screenWidth * 0.8 : 340, // Responsive width
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color(0xff5E11B5),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 8),
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 6.0),
            child: Text(
              'I already have an account',
              style: TextStyle(
                fontFamily: fontFamily,
                fontSize: isSmallScreen ? 18 : 20, // Responsive font size
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
