import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'child_game_widget.dart';

class ChildGamesScreen extends StatefulWidget {
  const ChildGamesScreen({super.key});

  @override
  _ChildGamesScreenState createState() => _ChildGamesScreenState();
}

class _ChildGamesScreenState extends State<ChildGamesScreen>
    with SingleTickerProviderStateMixin {
  final PageController _pageController = PageController();
  int _currentPage = 0;
  late AnimationController _animationController;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    );
    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeIn,
      ),
    );
    _animationController.forward();
  }

  @override
  void dispose() {
    _pageController.dispose();
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffBFA7FF),
      body: FadeTransition(
        opacity: _fadeAnimation,
        child: Column(
          children: [
            Expanded(
              child: ExpandablePageView(
                controller: _pageController,
                onPageChanged: (index) {
                  setState(() {
                    _currentPage = index;
                  });
                  // Restart animation on page change
                  _animationController.reset();
                  _animationController.forward();
                },
                children: [
                  GameWidget(
                    aboveImagePath: 'assets/images/home_puzzle.png',
                    belowImagePath: 'assets/images/home_puzzle_1.png',
                    titleText: 'Problem Solving',
                    buttonText: 'Puzzle',
                  ),
                  GameWidget(
                    aboveImagePath: 'assets/images/home_draw.png',
                    belowImagePath: 'assets/images/home_draw_1.png',
                    titleText: 'Pattern Recognition',
                    buttonText: 'Draw',
                  ),
                  GameWidget(
                    aboveImagePath: 'assets/images/home_flipping.png',
                    belowImagePath: 'assets/images/home_flipping_1.png',
                    titleText: 'Memory Game',
                    buttonText: 'Flipping',
                  ),
                ],
              ),
            ),
            // Animated page indicator
            TweenAnimationBuilder(
              tween: Tween<double>(begin: 0, end: 1),
              duration: const Duration(milliseconds: 500),
              builder: (context, double value, child) {
                return Opacity(
                  opacity: value,
                  child: Transform.translate(
                    offset: Offset(0, (1 - value) * 20),
                    child: child,
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 64.0),
                child: SmoothPageIndicator(
                  controller: _pageController,
                  count: 3,
                  effect: const WormEffect(
                    dotHeight: 10,
                    dotWidth: 10,
                    activeDotColor: Colors.white,
                    dotColor: Color(0xff5E11B5),
                    spacing: 8,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
