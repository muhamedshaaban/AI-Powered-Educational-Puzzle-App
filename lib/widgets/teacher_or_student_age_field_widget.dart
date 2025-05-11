import 'package:flutter/material.dart';

import '../helper/helper.dart';

class TeacherOrStudentAgeFieldWidget extends StatelessWidget {
  const TeacherOrStudentAgeFieldWidget({
    super.key,
    required this.age,
    required this.borderColor,
    this.textColor = Colors.white,
  });
  final String age;
  final Color borderColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: Container(
        height: 51,
        width: 343,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: borderColor, width: 2),
        ),
        child: Center(
          child: Text(
            age,
            style: TextStyle(
              fontFamily: fontFamily,
              fontSize: 20,
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }
}
