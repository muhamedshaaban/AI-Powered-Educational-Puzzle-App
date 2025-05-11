import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../../helper/helper.dart';
import '../../../../widgets/custom_text_form_widget.dart';
import 'teacher_or_child_continue_button.dart';

class ChildOrTeacherPasswordWidget extends StatelessWidget {
  const ChildOrTeacherPasswordWidget(
      {super.key,
      required this.imagePath,
      required this.text,
      required this.onTap});

  final String imagePath;
  final String text;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  height: MediaQuery.of(context).size.height * 0.7,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Color(0xffBFA7FF),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 140,
                        ),
                        Text(
                          text,
                          style: TextStyle(
                              fontSize: 22,
                              fontFamily: fontFamily,
                              color: Colors.white),
                        ),
                        const SizedBox(
                          height: 22,
                        ),
                        Text(
                          'password',
                          style: TextStyle(
                              fontSize: 14,
                              fontFamily: fontFamily,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Flexible(
                            child: CustomTextFormWidget(
                          suffixIcon: Icon(Icons.visibility_off_outlined,
                              color: Colors.grey, size: 24),
                          prefixIocn: Icon(Icons.lock_outlined,
                              color: Colors.grey, size: 24),
                        )),
                        const SizedBox(
                          height: 12,
                        ),
                        Text(
                          'confirm password',
                          style: TextStyle(
                              fontSize: 14,
                              fontFamily: fontFamily,
                              color: Colors.white),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        CustomTextFormWidget(
                          prefixIocn: Icon(Icons.lock_outlined,
                              color: Colors.grey, size: 24),
                          suffixIcon: Icon(Icons.visibility_off_outlined,
                              color: Colors.grey, size: 24),
                        ),
                        Spacer(),
                        TeacherOrStudentContinueButton(
                            bottomMargin: 0, onTap: onTap),
                      ],
                    ),
                  ))),
          SizedBox(
            width: double.infinity,
            height: 375,
            child: Image.asset(
              imagePath,
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    );
  }
}
