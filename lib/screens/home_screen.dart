import 'package:flutter/material.dart';
import 'package:portfolio/widgets/about.dart';
import 'package:portfolio/widgets/contact_me.dart';
import 'package:portfolio/widgets/footer.dart';
import 'package:portfolio/widgets/nav_bar.dart';
import 'package:portfolio/widgets/projects.dart';
import 'package:portfolio/widgets/tech.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: const [
          NavBar(), // About(), Technologies(),Projects(),ContactMe(), Footer()
          ],
      )),
    );
  }
}
