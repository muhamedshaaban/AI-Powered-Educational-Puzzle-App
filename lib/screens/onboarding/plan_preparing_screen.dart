import 'package:flutter/material.dart';
import '../../widgets/plan_preparing_bottom_widget.dart';

class PlanPreparingScreen extends StatelessWidget {
  const PlanPreparingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: 375,
            child: Image.asset(
              'assets/images/student_age.png',
              fit: BoxFit.cover,
            ),
          ),
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
                  child: PlanPreparingBottomWidget())),
        ],
      ),
    );
  }
}

