import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../helper/helper.dart';
import '../screens/onboarding/plan_completion_screen.dart';

class PlanPreparingBottomWidget extends StatelessWidget {
  const PlanPreparingBottomWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 20,
            left: 20,
            bottom: 80,
          ),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              '''preparing  a personalized 
learning plan for you ... ''',
              style: TextStyle(
                  fontSize: 20, fontFamily: fontFamily, color: Colors.white),
            ),
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>  PlanCompletionScreen(),
              ),
            );
          },
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: CircularPercentIndicator(
              radius: 120.0,
              lineWidth: 10.0,
              percent: 0.75,
              center: Text(
                "75%",
                style: TextStyle(
                  fontFamily: fontFamily,
                  fontSize: 40,
                  color: Colors.white,
                ),
              ),
              progressColor: Color(0xff5E11B5),
              backgroundColor: Colors.white,
            ),
          ),
        ),
        Spacer(),
        Padding(
          padding: const EdgeInsets.only(
            bottom: 32,
          ),
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              '''This will just  take a moment. Get ready for an 
                   amazing learning experience! ''',
              style: TextStyle(
                  fontSize: 14, fontFamily: fontFamily, color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
