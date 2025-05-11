import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:graduation_app/widgets/teacher_or_child/teacher_or_child_password_widget.dart';

import 'child_home_screen.dart';

class ChildPasswordScreen extends StatelessWidget {
  const ChildPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChildOrTeacherPasswordWidget(
        imagePath: 'assets/images/student_age_3.png',
        text: 'Keep your Game safe!',
        onTap: () => ShowDialogMethod(context),
      ),
    );
  }

    Future<dynamic> ShowDialogMethod(BuildContext context) {
    return showDialog(
      context: context,
      barrierColor: Colors.transparent, 
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
