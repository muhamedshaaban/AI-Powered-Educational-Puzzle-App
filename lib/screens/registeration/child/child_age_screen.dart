import 'package:flutter/material.dart';
import '../../../widgets/child/child_age_bottom_widget.dart';

class ChildAgeScreen extends StatelessWidget {
  const ChildAgeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: 375,
            child: Image.asset(
              'assets/images/teacher_or_student.png',
              fit: BoxFit.fill,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.65,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color(0xffBFA7FF),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: ChildAgeBottomWidget(),
            ),
          ),
        ],
      ),
    );
  }
}
