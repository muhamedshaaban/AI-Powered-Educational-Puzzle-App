import 'package:flutter/material.dart';

import '../../helper/helper.dart';

class GameWidget extends StatelessWidget {
  const GameWidget({
    super.key,
    required this.aboveImagePath,
    required this.belowImagePath,
    required this.buttonText,
    required this.titleText,
  });

  final String aboveImagePath;
  final String belowImagePath;
  final String buttonText;
  final String titleText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 50, left: 50, top: 40),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Animated avatar and greeting
            TweenAnimationBuilder(
              tween: Tween<double>(begin: 0, end: 1),
              duration: const Duration(milliseconds: 500),
              builder: (context, double value, child) {
                return Opacity(
                  opacity: value,
                  child: Transform.translate(
                    offset: Offset(0, (1 - value) * 20),
                    child: child,
                  ),
                );
              },
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 24,
                    child: Image.asset(
                      'assets/images/child_avatar_1.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    'Hello, Child!',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xff5E11B5),
                      fontFamily: fontFamily,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            // Animated game container
            TweenAnimationBuilder(
              tween: Tween<double>(begin: 0, end: 1),
              duration: const Duration(milliseconds: 600),
              curve: Curves.easeOutBack,
              builder: (context, double value, child) {
                return Transform.scale(
                  scale: value,
                  child: child,
                );
              },
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height * 0.66,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 12),
                    FittedBox(
                      fit: BoxFit.fitWidth,
                      child: ClipRect(
                        child: Align(
                          heightFactor: 0.85,
                          child: Image.asset(
                            aboveImagePath,
                          ),
                        ),
                      ),
                    ),
                    // Animated button
                    TweenAnimationBuilder(
                      tween: Tween<double>(begin: 0, end: 1),
                      duration: const Duration(milliseconds: 700),
                      builder: (context, double value, child) {
                        return Opacity(
                          opacity: value,
                          child: Transform.translate(
                            offset: Offset(0, (1 - value) * 20),
                            child: child,
                          ),
                        );
                      },
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xffBFA7FF),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: Text(
                          buttonText,
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontFamily: fontFamily,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    // Animated title
                    TweenAnimationBuilder(
                      tween: Tween<double>(begin: 0, end: 1),
                      duration: const Duration(milliseconds: 800),
                      builder: (context, double value, child) {
                        return Opacity(
                          opacity: value,
                          child: child,
                        );
                      },
                      child: Text(
                        titleText,
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xffBFA7FF),
                          fontFamily: fontFamily,
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    // Animated bottom image
                    TweenAnimationBuilder(
                      tween: Tween<double>(begin: 0, end: 1),
                      duration: const Duration(milliseconds: 900),
                      builder: (context, double value, child) {
                        return Opacity(
                          opacity: value,
                          child: Transform.translate(
                            offset: Offset(0, (1 - value) * 20),
                            child: child,
                          ),
                        );
                      },
                      child: Image.asset(
                        belowImagePath,
                      ),
                    ),
                    const SizedBox(height: 12),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}