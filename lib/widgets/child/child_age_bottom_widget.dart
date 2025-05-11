import 'package:flutter/material.dart';

import '../../helper/helper.dart';
import '../../screens/onboarding/intersting_topics_screen.dart';
import '../teacher_or_child/teacher_or_child_age_field_widget.dart';
import '../teacher_or_child/teacher_or_child_continue_button.dart';

class ChildAgeBottomWidget extends StatefulWidget {
  const ChildAgeBottomWidget({super.key});

  @override
  _ChildAgeBottomWidgetState createState() => _ChildAgeBottomWidgetState();
}

class _ChildAgeBottomWidgetState extends State<ChildAgeBottomWidget> {
  String? _selectedAge; // متغير لتخزين العمر المختار

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40),
            child: Text(
              "How old are you?",
              style: TextStyle(
                fontSize: 24,
                fontFamily: fontFamily,
                color: Colors.white,
              ),
            ),
          ),
          TeacherOrStudentAgeFieldWidget(
            age: '3 - 5 years old',
            isSelected: _selectedAge == '3 - 5 years old',
            onTap: () {
              setState(() {
                _selectedAge = '3 - 5 years old';
              });
            },
          ),
          SizedBox(height: 24),
          TeacherOrStudentAgeFieldWidget(
            age: '6 - 8 years old',
            isSelected: _selectedAge == '6 - 8 years old',
            onTap: () {
              setState(() {
                _selectedAge = '6 - 8 years old';
              });
            },
          ),
          SizedBox(height: 24),
          TeacherOrStudentAgeFieldWidget(
            age: '8 - 10 years old',
            isSelected: _selectedAge == '8 - 10 years old',
            onTap: () {
              setState(() {
                _selectedAge = '8 - 10 years old';
              });
            },
          ),
          SizedBox(height: 24),
          TeacherOrStudentAgeFieldWidget(
            age: '10 - 13 years old',
            isSelected: _selectedAge == '10 - 13 years old',
            onTap: () {
              setState(() {
                _selectedAge = '10 - 13 years old';
              });
            },
          ),
          Spacer(),
          if (_selectedAge != null) // الزرار يظهر بس لو العمر مختار
            TeacherOrStudentContinueButton(
              onTap: () {
                // مرر _selectedAge للشاشة الجاية أو احفظه في Provider
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const InterestingTopicsScreen(),
                  ),
                );
              },
            ),
        ],
      ),
    );
  }
}
