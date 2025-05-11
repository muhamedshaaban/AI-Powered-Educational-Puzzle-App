import 'package:flutter/material.dart';

import '../../widgets/welcome_screen_bottom_widget.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: 500,
            child: Image.asset(
              'assets/images/welcome_image.png',
              fit: BoxFit.cover,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.51,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color(0xffBFA7FF),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: WelcomeScreenBottomWidget(),
            ),
          ),
        ],
      ),
    );
  }
}
