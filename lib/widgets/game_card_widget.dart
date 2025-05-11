import 'package:flutter/material.dart';

import '../helper/helper.dart';

class GameCardWidget extends StatelessWidget {
  const GameCardWidget({
    super.key,
    required this.imagePath,
    required this.gameType,
    required this.gameName,
  });
  final String imagePath;
  final String gameType;
  final String gameName;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Color(0xff5E11B5),
                  borderRadius: BorderRadius.circular(20),
                ),
                height: 130,
                width: 160,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 4, left: 10),
                          child: Text(
                            gameType,
                            style: TextStyle(
                              fontSize: 10,
                              fontFamily: fontFamily,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0, right: 10),
                          child: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Color(0xffFF2414),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            width: 32,
                            height: 14,
                            child: Text('Start',
                                style: TextStyle(
                                  fontSize: 10,
                                  fontFamily: fontFamily,
                                  color: Colors.white,
                                )),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                  ],
                ),
              ),
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                  child: Image.asset(
                    imagePath, 
                    height: 80, 
                    width: 150,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: 70, 
                left: 20,
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Color(0xffBFA7FF),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  width: 62,
                  height: 18,
                  child: Text(gameName,
                      style: TextStyle(
                        fontSize: 10,
                        fontFamily: fontFamily,
                        color: Colors.black,
                      )),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
