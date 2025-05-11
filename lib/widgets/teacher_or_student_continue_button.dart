import 'package:flutter/material.dart';

import '../helper/helper.dart';

class TeacherOrStudentContinueButton extends StatelessWidget {
  const TeacherOrStudentContinueButton({
    super.key,
    required this.onTap,
  });
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Container(
        height: 48,
        width: 343,
        margin: EdgeInsets.only(bottom: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(0xff5E11B5),
        ),
        child: Center(
          child: InkWell(
            onTap: onTap,
            child: Text(
              'Continue',
              style: TextStyle(
                fontFamily: fontFamily,
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
