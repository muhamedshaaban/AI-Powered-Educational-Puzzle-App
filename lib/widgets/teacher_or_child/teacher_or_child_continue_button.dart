import 'package:flutter/material.dart';

import '../../helper/helper.dart';

class TeacherOrStudentContinueButton extends StatelessWidget {
  const TeacherOrStudentContinueButton({
    super.key,
    required this.onTap,
    this.bottomMargin = 20.0,
  });
  final void Function()? onTap;
  final double bottomMargin;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      width: double.infinity,
      margin: EdgeInsets.only(bottom: bottomMargin),
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
    );
  }
}
