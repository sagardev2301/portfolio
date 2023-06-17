import 'package:flutter/material.dart';

import '../widgets/individual_projects.dart';
import '../widgets/onHoverButton.dart';

class Projects extends StatelessWidget {
  const Projects({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      spacing: 30,
      runSpacing: 30,
      children: const [
        IndividualProjects(),
        IndividualProjects(),
        IndividualProjects()
      ],
    );
  }
}
