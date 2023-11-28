import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_animation/core/contants.dart';
import 'package:ui_animation/profile_screen/profile_screen.dart';
import 'package:ui_animation/widgets/gradient_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            // Background Image
            Positioned.fill(
              child: Image.asset(
                'assets/images/Background_screen1.jpg',
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      GradientText(
                        'HOME',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                        gradient: LinearGradient(colors: [
                          Constants.leftGrad,
                          Constants.rightGrad,
                        ]),
                      ),
                      Image(
                        image: AssetImage('assets/images/setting.png'),
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                  const SizedBox(height: 50),
                  const Hero(
                    tag: 'CRISTIANO', // Use a unique tag for each Hero widget
                    child: GradientText(
                      'CRISTIANO',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff3FB4D4),
                        fontFamily: 'AudioWide',
                        letterSpacing: 8,
                      ),
                      gradient: LinearGradient(colors: [
                        Color(0xff5CC5C7),
                        Color(0xff1868AC),
                        Color(0xff5CC5C7),
                        Color(0xff1868AC),
                        Color(0xff5CC5C7),
                      ]),
                    ),
                  ),
                  const Hero(
                    tag: 'RONALDO',
                    child: Align(
                      alignment: Alignment.topRight,
                      child: GradientText(
                        'RONALDO',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff3FB4D4),
                          fontFamily: 'AudioWide',
                          letterSpacing: 8,
                        ),
                        gradient: LinearGradient(colors: [
                          Color(0xffED988D),
                          Color(0xffB01402),
                        ]),
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                  Center(
                    child: Stack(
                      children: [
                        SizedBox(
                          width: double.infinity,
                          child: Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const ProfileScreen(),
                                      ));
                                },
                                child: Hero(
                                  tag: 'PROFILE',
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      SvgPicture.asset(
                                        'assets/images/Polygon 2_screen1.svg',
                                        fit: BoxFit.cover,
                                        height: 100,
                                        width: 100,
                                      ),
                                      const Text(
                                        'PROFILE',
                                        style: TextStyle(
                                          color: Color(0XFF7AD6DE),
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Constants.height3,
                              Stack(
                                alignment: Alignment.center,
                                children: [
                                  SvgPicture.asset(
                                    'assets/images/Polygon 2_screen1.svg',
                                    fit: BoxFit.cover,
                                    height: 100,
                                    width: 100,
                                  ),
                                  const Image(
                                    image:
                                        AssetImage('assets/images/ronaldo.png'),
                                    fit: BoxFit.cover,
                                    height: 92,
                                    width: 99,
                                  ),
                                ],
                              ),
                              Constants.height3,
                              Hero(
                                tag: 'MORE',
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    SvgPicture.asset(
                                      'assets/images/Polygon 2_screen1.svg',
                                      fit: BoxFit.cover,
                                      height: 100,
                                      width: 100,
                                    ),
                                    const Text(
                                      'MORE',
                                      style: TextStyle(
                                        color: Color(0XFF7AD6DE),
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          top: 52,
                          left: 36,
                          child: Hero(
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
                                const Text(
                                  'EVENTS',
                                  style: TextStyle(
                                    color: Color(0XFF7AD6DE),
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          top: 154,
                          left: 36,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              SvgPicture.asset(
                                'assets/images/Polygon 2_screen1.svg',
                                fit: BoxFit.cover,
                                height: 100,
                                width: 100,
                              ),
                              const Text(
                                'ATTENDANCE',
                                style: TextStyle(
                                  color: Color(0XFF7AD6DE),
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          top: 52,
                          right: 36,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              SvgPicture.asset(
                                'assets/images/Polygon 2_screen1.svg',
                                fit: BoxFit.cover,
                                height: 100,
                                width: 100,
                              ),
                              const Text(
                                'SQUAD',
                                style: TextStyle(
                                  color: Color(0XFF7AD6DE),
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          top: 154,
                          right: 36,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              SvgPicture.asset(
                                'assets/images/Polygon 2_screen1.svg',
                                fit: BoxFit.cover,
                                height: 100,
                                width: 100,
                              ),
                              const Text(
                                'WELLNESS',
                                style: TextStyle(
                                  color: Color(0XFF7AD6DE),
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
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
