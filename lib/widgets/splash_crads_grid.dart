import 'package:flutter/material.dart';

import 'spalsh_card_widget.dart';

class SplashScreenCardsGrid extends StatelessWidget {
  const SplashScreenCardsGrid({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 80),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              SplashCardWidget(
                color: const Color(0xff81E581),
                text: 'ABCs',
                imagePath: 'assets/images/arcticons_abc.svg',
              ),
              SplashCardWidget(
                  color: Color(0xffFFB379),
                  text: 'Numbers',
                  imagePath: 'assets/images/emojione_input-numbers.svg'),
            ],
          ),
          Row(children: [
            SplashCardWidget(
              color: const Color(0xff50CEE2),
              text: 'Shapes',
              imagePath: 'assets/images/fluent-mdl2_shapes.svg',
            ),
            SplashCardWidget(
                color: Color(0xffF25DB1),
                text: 'Colors',
                imagePath: 'assets/images/unjs_theme-colors.svg'),
          ]),
          Row(
            children: [
              SplashCardWidget(
                color: const Color(0xffFF6054),
                text: 'Animals',
                imagePath: 'assets/images/emojione_tropical-fish.svg',
              ),
              SplashCardWidget(
                  color: Color(0xffF1A1FF),
                  text: 'Puzzles',
                  imagePath: 'assets/images/arcticons_puzzel-cc.svg')
            ],
          )
        ],
      ),
    );
  }
}
