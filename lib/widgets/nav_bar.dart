import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/screens/home_screen.dart';
import 'package:velocity_x/velocity_x.dart';

import 'nav_buttons.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  final List isHovering = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];
  @override
  Widget build(BuildContext context) {
    //print(context.screenWidth);
    return Center(
      child: Wrap(
        spacing: context.screenWidth / 30,
        alignment: WrapAlignment.center,
        children: [
          NavButtons(navTitle: "Home", index: 0, isHovering: isHovering),
          //SizedBox(width: context.screenWidth / 30),
          NavButtons(navTitle: "About", index: 1, isHovering: isHovering),
          //SizedBox(width: context.screenWidth / 30),
          NavButtons(
              navTitle: "Technical Skills", index: 2, isHovering: isHovering),
          //SizedBox(width: context.screenWidth / 30),
          NavButtons(navTitle: "Projects", index: 3, isHovering: isHovering),
          //SizedBox(width: context.screenWidth / 30),
          NavButtons(navTitle: "Contact Me", index: 4, isHovering: isHovering),
          SizedBox(width: context.screenWidth / 30),
        ],
      ),
    );
  }
}
