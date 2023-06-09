import 'package:flutter/material.dart';
import 'package:portfolio/sections/about.dart';
import 'package:portfolio/sections/contact_me.dart';
import 'package:portfolio/sections/footer.dart';
import 'package:portfolio/sections/nav_bar.dart';
import 'package:portfolio/sections/projects.dart';
import 'package:portfolio/sections/tech.dart';
import 'package:velocity_x/velocity_x.dart';
import 'constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class Home extends StatelessWidget {
  Home({super.key});
  bool isMobile = false;
  @override
  Widget build(BuildContext context) {
    isMobile = context.screenWidth < 900 ? true : false;
    return Scaffold(
      //extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: isMobile
            ? Size(context.screenWidth, 60)
            : Size(context.screenWidth, 80),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Center(
            child: AppBar(
              title: Padding(
                padding: !isMobile
                    ? const EdgeInsets.fromLTRB(80, 0, 0, 0)
                    : const EdgeInsets.all(0),
                child: const MainTitle(),
              ),
              actions: !isMobile ? [const NavBar()] : null,
              elevation: 0,
              backgroundColor: Colors.transparent,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            About(),
            Technologies(),
            Projects(),
            ContactMe(),
            Footer()
          ],
        ),
      ),
      floatingActionButton: isMobile
          ? FloatingActionButton(
              onPressed: () {},
              backgroundColor: primaryColor,
              child: const Icon(
                FontAwesomeIcons.faceLaughWink,
                color: Colors.black,
              ),
            )
          : null,
    );
  }
}

class MainTitle extends StatelessWidget {
  const MainTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Sagar Kumar",
      style: mainTitle,
    );
  }
}
