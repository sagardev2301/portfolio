import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:velocity_x/velocity_x.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    print(context.screenWidth);
    return SizedBox(
      height: 100,
      child: Wrap(
        spacing: context.screenWidth > 1400 ? 20 : 10,
        crossAxisAlignment: WrapCrossAlignment.center,
        runAlignment: WrapAlignment.center,
        children: [
          SizedBox(
            width: 0.10 * context.screenWidth,
          ),
          const Text(
            "Sagar Kumar",
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.w700,
              color: Color(0xff1b0161),
            ),
          ),
          
          NavButton(title: "About", onPressed: () {}),
          const SizedBox(
            width: 30,
          ),
          NavButton(title: "Technical Skills", onPressed: () {}),
          const SizedBox(
            width: 30,
          ),
          NavButton(title: "Projects", onPressed: () {}),
          const SizedBox(
            width: 30,
          ),
          NavButton(title: "Contact Me", onPressed: () {}),
        ],
      ),
    );
  }
}

class NavButton extends StatelessWidget {
  const NavButton({required this.title, required this.onPressed, super.key});
  final String title;
  final Function? onPressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => onPressed,
        child: Text(
          title,
          style: txtNavTheme,
        ));
  }
}
