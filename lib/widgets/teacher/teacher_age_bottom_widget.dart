import 'package:flutter/material.dart';
import '../../helper/helper.dart';
import '../../screens/registeration/teahcer/teacher_name_screen.dart';
import '../teacher_or_child/teacher_or_child_age_field_widget.dart';
import '../teacher_or_child/teacher_or_child_continue_button.dart';

class TeacherAgeBottomWidget extends StatefulWidget {
  const TeacherAgeBottomWidget({super.key});

  @override
  _TeacherAgeBottomWidgetState createState() => _TeacherAgeBottomWidgetState();
}

class _TeacherAgeBottomWidgetState extends State<TeacherAgeBottomWidget> {
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
            age: '25 - 34 years old',
            isSelected: _selectedAge == '25 - 34 years old',
            onTap: () {
              setState(() {
                _selectedAge = '25 - 34 years old';
              });
            },
          ),
          SizedBox(height: 20),
          TeacherOrStudentAgeFieldWidget(
            age: '35 - 44 years old',
            isSelected: _selectedAge == '35 - 44 years old',
            onTap: () {
              setState(() {
                _selectedAge = '35 - 44 years old';
              });
            },
          ),
          SizedBox(height: 20),
          TeacherOrStudentAgeFieldWidget(
            age: '45 - 54 years old',
            isSelected: _selectedAge == '45 - 54 years old',
            onTap: () {
              setState(() {
                _selectedAge = '45 - 54 years old';
              });
            },
          ),
          SizedBox(height: 20),
          TeacherOrStudentAgeFieldWidget(
            age: '55 - 64 years old',
            isSelected: _selectedAge == '55 - 64 years old',
            onTap: () {
              setState(() {
                _selectedAge = '55 - 64 years old';
              });
            },
          ),
          Spacer(),
          if (_selectedAge != null)
            TeacherOrStudentContinueButton(
              onTap: () {
                // مرر _selectedAge للشاشة الجاية أو احفظه في Provider
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TeacherNameScreen(),
                  ),
                );
              },
            ),
        ],
      ),
    );
  }
}
