import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/constants.dart';
import 'package:blur/blur.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600,
      width: double.infinity,
      child: Row(children: [
        Expanded(
          flex: 1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SocialButtons(icon: FontAwesomeIcons.linkedin, onPressed: () {}),
              const SizedBox(
                height: 10,
              ),
              SocialButtons(icon: FontAwesomeIcons.github, onPressed: () {}),
              const SizedBox(
                height: 10,
              ),
              SocialButtons(icon: FontAwesomeIcons.instagram, onPressed: () {}),
            ],
          ),
        ),
        Expanded(
          flex: 8,
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Stack(
              children: [
                const BackgroundDots(),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          Expanded(
                            flex: 5,
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    height: 80,
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: AnimatedTextKit(
                                      animatedTexts: [
                                        TypewriterAnimatedText(
                                          'Hi, I\'m Sagar,\nFlutter Developer',
                                          textStyle: const TextStyle(
                                            fontSize: 44,
                                            fontWeight: FontWeight.bold,
                                          ),
                                          speed:
                                              const Duration(milliseconds: 120),
                                        ),
                                      ],
                                      totalRepeatCount: 5,
                                      pause: const Duration(milliseconds: 500),
                                      displayFullTextOnTap: true,
                                      stopPauseOnTap: true,
                                    ),
                                  ),
                                  const Expanded(
                                    flex: 3,
                                    child: Text(
                                      "3rd Year Computer Science Undergrad from Delhi Technological University (DCE formerly).\nI like to solve DSA problems, doing little bit CP (competitive programming), and as usual Computer Science grad I also have little bit knowledge of OS, DBMS, CN.",
                                      style: TextStyle(
                                          fontSize: 16,
                                          overflow: TextOverflow.clip),
                                    ),
                                  ),
                                ]),
                          ),
                          Expanded(
                            flex: 1,
                            child: Row(children: const [
                              AboutButtons(
                                title: "Contact",
                                iconData: FontAwesomeIcons.share,
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              AboutButtons(
                                title: "Resume",
                                iconData: FontAwesomeIcons.download,
                              ),
                            ]),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Image.asset("images/mainphoto.png"),
                    ),
                  ],
                )
              ],
            ),
          ),
        )
      ]),
    );
  }
}

class BackgroundDots extends StatelessWidget {
  const BackgroundDots({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Container(
            height: 350,
            width: 61,
            decoration: BoxDecoration(
                color: primaryColor, borderRadius: BorderRadius.circular(50)),
          ).blurred(blur: 3, borderRadius: BorderRadius.circular(50)),
        ),
        const Positioned(
          top: 10,
          left: 350,
          child: Dots(
            color: primaryColor,
            size: 50,
          ),
        ),
        const Positioned(
          top: 50,
          left: 420,
          child: Dots(
            color: secondaryColor,
            size: 20,
          ),
        ),
        const Positioned(
          top: 100,
          right: 600,
          child: Dots(
            color: secondaryColor,
            size: 20,
          ),
        ),
        const Positioned(
          top: 40,
          right: 250,
          child: Dots(
            color: primaryColor,
            size: 50,
          ),
        ),
        const Positioned(
          top: 150,
          right: 600,
          child: Dots(
            color: primaryColor,
            size: 50,
          ),
        ),
        const Positioned(
          top: 350,
          right: 250,
          child: Dots(
            color: primaryColor,
            size: 50,
          ),
        ),
      ],
    );
  }
}

class Dots extends StatelessWidget {
  const Dots({
    required this.size,
    required this.color,
    super.key,
  });
  final double size;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
      ),
    ).blurred(blur: 3, borderRadius: BorderRadius.circular(100));
  }
}

class AboutButtons extends StatelessWidget {
  const AboutButtons({
    required this.title,
    required this.iconData,
    super.key,
  });
  final String title;
  final IconData iconData;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
          padding: const EdgeInsets.fromLTRB(25, 20, 25, 20),
          backgroundColor: primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          )),
      onPressed: () {},
      child: Row(children: [
        Text(
          title,
          style: const TextStyle(fontSize: 18, color: Colors.black),
        ),
        const SizedBox(
          width: 10,
        ),
        Icon(
          iconData,
          size: 25,
          color: Colors.black,
        )
      ]),
    );
  }
}

class SocialButtons extends StatelessWidget {
  const SocialButtons({required this.icon, required this.onPressed, super.key});
  final IconData icon;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () => onPressed,
        style: TextButton.styleFrom(
            padding: const EdgeInsets.all(20),
            shape: const CircleBorder(),
            backgroundColor: primaryColor),
        child: Icon(
          icon,
          size: 30,
          color: Colors.black,
        ));
  }
}
