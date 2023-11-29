import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui_animation/core/contants.dart';
import 'package:ui_animation/widgets/gradient_text.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            // Background Image
            Positioned.fill(
              child: Image.asset(
                'assets/images/background_screen2.jpg',
                fit: BoxFit.cover,
              ),
            ),

            // Content
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: const GradientText(
                          'PROFILE',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                          gradient: LinearGradient(colors: [
                            Constants.leftGrad,
                            Constants.rightGrad,
                          ]),
                        ),
                      ),
                      const Spacer(),
                      SvgPicture.asset(
                        'assets/images/🦆 icon _home_screen2.svg',
                      ),
                      Constants.width10,
                      const Image(
                        image: AssetImage('assets/images/setting.png'),
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                  Constants.height10,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Hero(
                        tag: 'EVENTS',
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            SvgPicture.asset(
                              'assets/images/Polygon 2_screen1.svg',
                              fit: BoxFit.cover,
                              height: 100,
                              width: 100,
                            ),
                            const Image(
                              image: AssetImage('assets/images/ronaldo.png'),
                              fit: BoxFit.cover,
                              height: 92,
                              width: 99,
                            ),
                          ],
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Hero(
                            tag: 'CRISTIANO',
                            child: Align(
                              alignment: Alignment.topRight,
                              child: Text(
                                'CRISTIANO',
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0XFF86BED8),
                                  fontFamily: 'BungeeOutline',
                                  decoration: TextDecoration.none,
                                ),
                              ),
                            ),
                          ),
                          Hero(
                            tag: 'RONALDO',
                            child: Align(
                              alignment: Alignment.topRight,
                              child: Text(
                                'RONALDO',
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0XFF86BED8),
                                  fontFamily: 'BungeeOutline',
                                  decoration: TextDecoration.none,
                                ),
                              ),
                            ),
                          ),
                          Constants.height10,
                          GradientText(
                            'FORWARD',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              letterSpacing: 10,
                            ),
                            gradient: LinearGradient(colors: [
                              Constants.leftGrad,
                              Constants.rightGrad,
                            ]),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Constants.height10,
                  SvgPicture.asset(
                    'assets/images/Line_22_screen2.svg',
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(height: 15),
                  const Align(
                    alignment: Alignment.bottomCenter,
                    child: GradientText(
                      'ELITE EVOLUTION',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2,
                      ),
                      gradient: LinearGradient(colors: [
                        Constants.leftGrad,
                        Constants.rightGrad,
                      ]),
                    ),
                  ),
                  const SizedBox(height: 15),
                  SvgPicture.asset(
                    'assets/images/Line_22_screen2.svg',
                    fit: BoxFit.cover,
                  ),
                  Constants.height10,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Hero(
                        tag: 'MORE',
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            SvgPicture.asset(
                              'assets/images/Polygon_4_screen2.svg',
                              fit: BoxFit.cover,
                              height: 80,
                              width: 80,
                            ),
                            Column(
                              children: const [
                                Text(
                                  'MATCHES',
                                  style: TextStyle(
                                    color: Color(0XFF7AD6DE),
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                                Text(
                                  'PLAYED',
                                  style: TextStyle(
                                    color: Color(0XFF7AD6DE),
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                                Text(
                                  '30',
                                  style: TextStyle(
                                    color: Color(0XFF7AD6DE),
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            children: const [
                              Text(
                                '     AGE',
                                style: TextStyle(
                                  color: Color(0XFF7AD6DE),
                                ),
                              ),
                              GradientText(
                                ' : 25',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                                gradient: LinearGradient(colors: [
                                  Constants.leftGrad,
                                  Constants.rightGrad,
                                ]),
                              ),
                            ],
                          ),
                          Row(
                            children: const [
                              Text(
                                'HEIGHT',
                                style: TextStyle(
                                  color: Color(0XFF7AD6DE),
                                ),
                              ),
                              GradientText(
                                " : 5'9'",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                                gradient: LinearGradient(colors: [
                                  Constants.leftGrad,
                                  Constants.rightGrad,
                                ]),
                              ),
                            ],
                          ),
                          Row(
                            children: const [
                              Text(
                                '   WEIGHT',
                                style: TextStyle(
                                  color: Color(0XFF7AD6DE),
                                ),
                              ),
                              GradientText(
                                ' : 70KG',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                                gradient: LinearGradient(colors: [
                                  Constants.leftGrad,
                                  Constants.rightGrad,
                                ]),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Hero(
                        tag: 'PROFILE',
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            SvgPicture.asset(
                              'assets/images/Polygon_4_screen2.svg',
                              fit: BoxFit.cover,
                              height: 80,
                              width: 80,
                            ),
                            Column(
                              children: const [
                                Text(
                                  'TRAININGS',
                                  style: TextStyle(
                                    color: Color(0XFF7AD6DE),
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                                Text(
                                  'COMPLETED',
                                  style: TextStyle(
                                    color: Color(0XFF7AD6DE),
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                                Text(
                                  '74',
                                  style: TextStyle(
                                    color: Color(0XFF7AD6DE),
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  SvgPicture.asset(
                    'assets/images/Line_22_screen2.svg',
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(height: 20),
                  const Align(
                    alignment: Alignment.bottomCenter,
                    child: GradientText(
                      'STATS',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        letterSpacing: 5,
                      ),
                      gradient: LinearGradient(colors: [
                        Constants.leftGrad,
                        Constants.rightGrad,
                      ]),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
