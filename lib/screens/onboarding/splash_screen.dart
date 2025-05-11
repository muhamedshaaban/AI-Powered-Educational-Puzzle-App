import 'dart:math';
import 'package:flutter/material.dart';

import '../../widgets/splash_crads_grid.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  final Random _random = Random();
  late AnimationController _controller;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..repeat(reverse: true);

    _fadeAnimation = Tween<double>(begin: 0.3, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  List<Widget> _buildStarsAroundText(BuildContext context) {
    final size = MediaQuery.of(context).size;

    final double centerX = size.width / 2;
    final double centerY = 200;

    final double spread = 250;

    return List.generate(10, (index) {
      final dx = (_random.nextDouble() - 0.5) * 2 * spread;
      final dy = (_random.nextDouble() - 0.5) * 2 * spread;

      final left = centerX + dx;
      final top = centerY + dy;

      return Positioned(
        top: top,
        left: left,
        child: AnimatedBuilder(
          animation: _fadeAnimation,
          builder: (context, child) {
            return Opacity(
              opacity: _fadeAnimation.value,
              child: const Icon(Icons.star, color: Colors.white, size: 20),
            );
          },
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffBFA7FF),
      body: Stack(
        children: [
          ..._buildStarsAroundText(context),
          Center(
            child: Column(
              children: [
                SizedBox(height: 100),
                Text(
                  'foundation for ',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff5E11B5),
                    fontFamily: 'PoetsenOne',
                  ),
                ),
                Text(
                  'PRESCHOOL',
                  style: TextStyle(
                    fontSize: 32,
                    color: Color(0xff5E11B5),
                    fontFamily: 'PoetsenOne',
                  ),
                ),
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white.withOpacity(0.5),
                    border: Border.all(
                      color: const Color(0xff5E11B5),
                      width: 4,
                    ),
                  ),
                  child: const Icon(
                    Icons.child_care,
                    size: 50,
                    color: Color(0xff5E11B5),
                  ),
                ),
                const SizedBox(height: 20),
                SplashScreenCardsGrid(),
                const SizedBox(height: 38),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/splash.png'),
                          fit: BoxFit.fill),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
