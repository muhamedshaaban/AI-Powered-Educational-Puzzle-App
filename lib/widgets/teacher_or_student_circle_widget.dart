import 'package:flutter/material.dart';

import '../helper/helper.dart';

class TeacherOrStudentCircleWidget extends StatelessWidget {
  const TeacherOrStudentCircleWidget({
    super.key,
    required this.borderColor,
    required this.text,
  });
  final Color borderColor;
  final String text;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: Container(
        height: 163,
        width: 163,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: borderColor, width: 12),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                fontSize: 20, fontFamily: fontFamily, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
