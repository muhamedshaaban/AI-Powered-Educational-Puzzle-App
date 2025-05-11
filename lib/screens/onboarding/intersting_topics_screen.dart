import 'package:flutter/material.dart';
import 'package:graduation_app/helper/helper.dart';
import 'plan_preparing_screen.dart';

class InterestingTopicsScreen extends StatelessWidget {
  const InterestingTopicsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final isSmallScreen = screenSize.width < 600;

    return Scaffold(
      backgroundColor: const Color(0xffBFA7FF),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: screenSize.height * 0.1),
                const Text(
                  'To self expression &',
                  style: TextStyle(
                    fontSize: 28,
                    fontFamily: fontFamily,
                    color: Color(0xff5E11B5),
                  ),
                  textAlign: TextAlign.center,
                ),
                const Text(
                  'life skills',
                  style: TextStyle(
                    fontSize: 38,
                    fontFamily: fontFamily,
                    color: Color(0xff5E11B5),
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: screenSize.height * 0.05),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: screenSize.width * 0.1,
                  ),
                  child: AspectRatio(
                    aspectRatio: .6,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const PlanPreparingScreen(),
                          ),
                        );
                      },
                      child: Image.asset(
                        'assets/images/Group 10.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
