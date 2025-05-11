import 'package:flutter/material.dart';
import 'dart:math';

import 'game_card_widget.dart';

class GameCardGrid extends StatelessWidget {
  const GameCardGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            const Color(0xffB3E5FC), // Soft sky blue
            const Color(0xffE1F5FE), // Pale blue-white
          ],
        ),
      ),
      child: Stack(
        children: [
          // Child-friendly background with clouds, rainbow, and twinkling stars
          Positioned.fill(
            child: AnimatedBackground(),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FloatingCard(
                      child: GameCardWidget(
                        imagePath: 'assets/images/ps.png',
                        gameType: 'Problem Solving',
                        gameName: 'Puzzle',
                      ),
                    ),
                    const SizedBox(width: 20),
                    FloatingCard(
                      child: GameCardWidget(
                        imagePath: 'assets/images/flipping.jpg',
                        gameType: 'Memory Game',
                        gameName: 'Flipping',
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FloatingCard(
                      child: GameCardWidget(
                        imagePath: 'assets/images/draw.jpg',
                        gameType: 'Pattern Recognition',
                        gameName: 'Draw',
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Animated background with clouds, a rainbow, and twinkling stars
class AnimatedBackground extends StatefulWidget {
  @override
  _AnimatedBackgroundState createState() => _AnimatedBackgroundState();
}

class _AnimatedBackgroundState extends State<AnimatedBackground>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return CustomPaint(
          painter: ChildFriendlyBackgroundPainter(_controller.value),
          child: Container(),
        );
      },
    );
  }
}

// Custom painter for a child-friendly background
class ChildFriendlyBackgroundPainter extends CustomPainter {
  final double animationValue;

  ChildFriendlyBackgroundPainter(this.animationValue);

  @override
  void paint(Canvas canvas, Size size) {
    final random = Random();
    final cloudPaint = Paint()
      ..color = Colors.white.withOpacity(0.8)
      ..style = PaintingStyle.fill;
    final starPaint = Paint()..style = PaintingStyle.fill;
    final rainbowPaint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 10
      ..shader = SweepGradient(
        colors: [
          Colors.red,
          Colors.orange,
          Colors.yellow,
          Colors.green,
          Colors.blue,
          Colors.purple,
        ],
        transform: const GradientRotation(pi / 4),
      ).createShader(Rect.fromLTWH(0, 0, size.width, size.height));

    // Draw fluffy clouds
    void drawCloud(double x, double y, double radius) {
      canvas.drawCircle(Offset(x, y), radius, cloudPaint);
      canvas.drawCircle(Offset(x + radius * 0.8, y - radius * 0.5), radius * 0.7, cloudPaint);
      canvas.drawCircle(Offset(x - radius * 0.8, y - radius * 0.5), radius * 0.7, cloudPaint);
      canvas.drawCircle(Offset(x + radius * 1.2, y), radius * 0.6, cloudPaint);
      canvas.drawCircle(Offset(x - radius * 1.2, y), radius * 0.6, cloudPaint);
    }

    drawCloud(size.width * 0.2, size.height * 0.2, 40);
    drawCloud(size.width * 0.8, size.height * 0.15, 30);
    drawCloud(size.width * 0.5, size.height * 0.3, 35);

    // Draw a rainbow
    final rainbowPath = Path();
    for (double t = 0; t <= pi; t += 0.01) {
      final x = size.width * 0.5 + 150 * cos(t);
      final y = size.height * 0.6 + 150 * sin(t);
      if (t == 0) {
        rainbowPath.moveTo(x, y);
      } else {
        rainbowPath.lineTo(x, y);
      }
    }
    canvas.drawPath(rainbowPath, rainbowPaint);

    // Draw twinkling stars
    for (int i = 0; i < 30; i++) {
      final x = random.nextDouble() * size.width;
      final y = random.nextDouble() * size.height * 0.5; // Stars in the upper half
      final radius = (sin(animationValue * 2 * pi + i) + 1) * 1 + 0.5;

      starPaint.shader = RadialGradient(
        colors: [
          Colors.yellow.withOpacity(0.9),
          Colors.yellow.withOpacity(0.0),
        ],
      ).createShader(Rect.fromCircle(center: Offset(x, y), radius: radius));

      canvas.drawCircle(Offset(x, y), radius, starPaint);
    }
  }

  @override
  bool shouldRepaint(covariant ChildFriendlyBackgroundPainter oldDelegate) =>
      oldDelegate.animationValue != animationValue;
}

// Widget for floating card with continuous up-and-down animation
class FloatingCard extends StatefulWidget {
  final Widget child;

  const FloatingCard({super.key, required this.child});

  @override
  _FloatingCardState createState() => _FloatingCardState();
}

class _FloatingCardState extends State<FloatingCard>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _floatAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true);

    _floatAnimation = Tween<double>(begin: -10, end: 10).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOutSine),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _floatAnimation,
      builder: (context, child) {
        return Transform.translate(
          offset: Offset(0, _floatAnimation.value),
          child: widget.child,
        );
      },
    );
  }
}