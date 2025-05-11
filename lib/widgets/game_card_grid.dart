import 'package:flutter/material.dart';

import 'game_card_widget.dart';

class GameCardGrid extends StatelessWidget {
  const GameCardGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            GameCardWidget(
              imagePath: 'assets/images/ps.png',
              gameType: 'Problem Solving',
              gameName: 'Puzzle',
            ),
            const SizedBox(
              width: 20,
            ),
            GameCardWidget(
              imagePath: 'assets/images/memory.png',
              gameType: 'Memory Game',
              gameName: 'Young',
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            GameCardWidget(
              imagePath: 'assets/images/pr.png',
              gameType: 'Creativity',
              gameName: 'Draw',
            ),
            const SizedBox(
              width: 20,
            ),
            GameCardWidget(
              imagePath: 'assets/images/ps.png',
              gameType: 'Pattern Recognition',
              gameName: 'Flipping',
            ),
          ],
        ),
      ],
    );
  }
}
