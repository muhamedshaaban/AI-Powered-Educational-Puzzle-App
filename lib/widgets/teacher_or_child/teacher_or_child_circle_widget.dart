import 'package:flutter/material.dart';
import 'package:graduation_app/screens/registeration/child/child_age_screen.dart';
import 'package:graduation_app/screens/registeration/teahcer/teacher_age_screen.dart';

import '../../helper/helper.dart';

class TeacherOrStudentCircleWidget extends StatefulWidget {
  const TeacherOrStudentCircleWidget({
    super.key,
    required this.text,
  });
  final String text;

  @override
  _TeacherOrStudentCircleWidgetState createState() =>
      _TeacherOrStudentCircleWidgetState();
}

class _TeacherOrStudentCircleWidgetState
    extends State<TeacherOrStudentCircleWidget> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (widget.text == 'Child') {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => ChildAgeScreen()));
        } else {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const TeacherAgeScreen()),
          );
        }
      },
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: MouseRegion(
          onEnter: (_) => setState(() => _isHovered = true),
          onExit: (_) => setState(() => _isHovered = false),
          child: Container(
            height: 163,
            width: 163,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: _isHovered ? Color(0xff5E11B5) : Colors.white,
                width: 12,
              ),
            ),
            child: Center(
              child: Text(
                widget.text,
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: fontFamily,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
