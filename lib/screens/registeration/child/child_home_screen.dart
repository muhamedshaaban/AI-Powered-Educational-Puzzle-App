import 'package:flutter/material.dart';
import 'package:graduation_app/helper/helper.dart';
import 'package:graduation_app/widgets/games/game_card_grid.dart';

class ChildHomeScreen extends StatelessWidget {
  const ChildHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffBFA7FF),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 32,
                  backgroundImage: const AssetImage(
                    'assets/images/child_avatar_4.png',
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                const Text(
                  'Pettoo',
                  style: TextStyle(
                    fontSize: 22,
                    fontFamily: fontFamily,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            GameCardGrid()
          ],
        ),
      ),
    );
  }
}
