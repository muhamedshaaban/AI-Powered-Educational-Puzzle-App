import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:graduation_app/helper/helper.dart';

class SplashCardWidget extends StatelessWidget {
  const SplashCardWidget({
    super.key,
    required this.color,
    required this.text,
    required this.imagePath,
  });

  final Color color;
  final String text;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: Container(
          width: 104,
          height: 38,
          margin: const EdgeInsets.only(right: 12, bottom: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: color,
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset(imagePath, width: 13, height: 13),
              ),
              const SizedBox(width: 5),
              Text(
                text,
                style: TextStyle(
                    fontFamily: fontFamily, fontSize: 14, color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}
