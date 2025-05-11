import 'package:flutter/material.dart';

import '../../helper/helper.dart';

class TeacherOrStudentAgeFieldWidget extends StatefulWidget {
  const TeacherOrStudentAgeFieldWidget({
    super.key,
    required this.age,
    this.textColor = Colors.white,
    required this.onTap,
    this.isSelected = false, // خاصية جديدة للاختيار
  });

  final String age;
  final Color textColor;
  final void Function() onTap;
  final bool isSelected;

  @override
  State<TeacherOrStudentAgeFieldWidget> createState() => _TeacherOrStudentAgeFieldWidgetState();
}

class _TeacherOrStudentAgeFieldWidgetState extends State<TeacherOrStudentAgeFieldWidget> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: MouseRegion(
        onEnter: (_) => setState(() => _isHovered = true),
        onExit: (_) => setState(() => _isHovered = false),
        child: GestureDetector(
          onTap: widget.onTap,
          child: Container(
            height: 51,
            width: 343,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: widget.isSelected
                    ? Color(0xff5E11B5) // لون الـ border لما يكون مختار
                    : _isHovered
                        ? Color(0xff5E11B5)
                        : Colors.white,
                width: 2,
              ),
            ),
            child: Center(
              child: Text(
                widget.age,
                style: TextStyle(
                  fontFamily: fontFamily,
                  fontSize: 20,
                  color: widget.isSelected
                      ? Color(0xff5E11B5) // لون النص لما يكون مختار
                      : _isHovered
                          ? Color(0xff5E11B5)
                          : widget.textColor,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}