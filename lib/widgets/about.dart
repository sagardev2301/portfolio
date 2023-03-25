import 'dart:html';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/constants.dart';
import 'package:blur/blur.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:velocity_x/velocity_x.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: const [AboutTextWidget(), AboutImageWidget()],
    );
  }
}

class AboutImageWidget extends StatelessWidget {
  const AboutImageWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //color: Colors.blue,
      height: context.screenWidth < 900 ? 450 : 600,
      width: context.screenWidth < 1000
          ? context.screenWidth < 900
              ? context.screenWidth * 1.0
              : context.screenWidth * 0.4
          : context.screenWidth * 0.5,
      child: Center(child: Image.asset("images/mainphoto.png")),
    );
  }
}

class AboutTextWidget extends StatelessWidget {
  const AboutTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.screenWidth < 900 ? 500 : 600,
      width: context.screenWidth < 1000
          ? context.screenWidth < 900
              ? context.screenWidth * 1.0
              : context.screenWidth * 0.6
          : context.screenWidth * 0.5,
      // padding: context.screenWidth < 900
      //     ? const EdgeInsets.fromLTRB(8, 0, 0, 0)
      //     : const EdgeInsets.all(10),
      // color: Colors.green,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SocialButtons(
                    icon: FontAwesomeIcons.linkedin, onPressed: () {}),
                const SizedBox(
                  height: 10,
                ),
                SocialButtons(icon: FontAwesomeIcons.github, onPressed: () {}),
                const SizedBox(
                  height: 10,
                ),
                SocialButtons(
                    icon: FontAwesomeIcons.instagram, onPressed: () {}),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(5, 10, 5, 0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 80,
                          ),
                          SizedBox(
                            //color: Colors.grey,
                            height: context.screenWidth < 900
                                ? context.screenWidth * 0.2
                                : context.screenWidth * 0.1,
                            width: context.screenWidth < 900
                                ? context.screenWidth * 0.7
                                : context.screenWidth * 0.4,
                            child: AnimatedTextKit(
                              animatedTexts: [
                                TypewriterAnimatedText(
                                  'Hi, I\'m Sagar,\nFlutter Developer',
                                  textStyle: TextStyle(
                                    fontSize: context.screenWidth < 1000
                                        ? context.screenWidth < 900
                                            ? 35
                                            : 40
                                        : 45,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  speed: const Duration(milliseconds: 120),
                                ),
                              ],
                              totalRepeatCount: 5,
                              pause: const Duration(milliseconds: 500),
                              displayFullTextOnTap: true,
                              stopPauseOnTap: true,
                            ),
                          ),
                          SizedBox(
                            //color: Colors.white,
                            width: context.screenWidth < 900
                                ? context.screenWidth * 0.7
                                : context.screenWidth * 0.4,
                            child: Text(
                              "3rd Year Computer Science Undergrad from Delhi Technological University (DCE formerly).\nI like to solve DSA problems, doing little bit CP (competitive programming), and as usual Computer Science grad I also have little bit knowledge of OS, DBMS, CN.",
                              softWrap: true,
                              style: TextStyle(
                                  fontSize: context.screenWidth < 1000
                                      ? context.screenWidth < 900
                                          ? 14
                                          : 16
                                      : 18,
                                  overflow: TextOverflow.clip),
                            ),
                          ),
                        ]),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                    const AboutButtons(
                      title: "Contact",
                      iconData: FontAwesomeIcons.share,
                    ),
                    SizedBox(
                      width: context.screenWidth * 0.02,
                    ),
                    const AboutButtons(
                      title: "Resume",
                      iconData: FontAwesomeIcons.download,
                    ),
                  ]),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/*
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
*/
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
      onPressed: () {
        //TODO: Implement on pressed
      },
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
