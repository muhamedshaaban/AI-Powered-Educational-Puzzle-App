import 'package:flutter/material.dart';
import 'dart:math';

import 'package:graduation_app/helper/helper.dart';

import '../registeration/child/child_name_screen.dart';

class PlanCompletionScreen extends StatelessWidget {
  final Random _random = Random();

  PlanCompletionScreen({super.key});

  // Generate random but controlled positions for ellipses
  List<Positioned> _generateEllipses(BuildContext context) {
    final ellipses =
        List.generate(8, (i) => 'assets/images/Ellipse ${15 + i}.png');
    ellipses.shuffle(_random);

    final size = MediaQuery.of(context).size;
    final centerX = size.width / 2;
    final centerY = 170.0;
    final radius = 70.0;

    return List.generate(ellipses.length, (index) {
      final angle = 1.5 * pi * index / ellipses.length;
      final variation = _random.nextDouble() * 0.3 - 0.2;
      final x = centerX + cos(angle + variation) * radius;
      final y = centerY + sin(angle + variation) * radius;

      return Positioned(
        left: x - 5,
        top: y - 5,
        child: Image.asset(ellipses[index], width: 10, height: 10),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image
          SizedBox(
            width: double.infinity,
            height: 375,
            child: Image.asset(
              'assets/images/student_age_2.png',
              fit: BoxFit.cover,
            ),
          ),

          // Bottom container
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.6,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color(0xffBFA7FF),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: Stack(
                children: [
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              bottom: 40,
                              top: 120), // Space between image and text
                          child: Image.asset(
                            'assets/images/Group 4.png',
                            width: 100, // Consistent width
                          ),
                        ),
                        SizedBox(height: 10),
                        const Text(
                          'Your plan is ready!',
                          style: TextStyle(
                            fontFamily: fontFamily,
                            fontSize: 24,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 8), // Small space
                        const Text(
                          '''But, you need create an account to save 
                           your progress.''',
                          style: TextStyle(
                            fontFamily: fontFamily,
                            fontSize: 14,
                            color: Colors.white70,
                          ),
                        ),
                        Spacer(),
                        FittedBox(
                          fit: BoxFit.scaleDown,
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const ChildNameScreen()),
                              );
                            },
                            child: Container(
                              width: 343,
                              height: 48,
                              margin: const EdgeInsets.only(bottom: 20),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color(0xff5E11B5),
                              ),
                              child: Center(
                                child: Text(
                                  'Create an Account',
                                  style: TextStyle(
                                    fontFamily: fontFamily,
                                    fontSize: 20,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),

                  // Randomly positioned ellipses
                  ..._generateEllipses(context),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
