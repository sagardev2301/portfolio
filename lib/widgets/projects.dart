import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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

class IndividualProjects extends StatelessWidget {
  const IndividualProjects({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      width: 360,
      padding: const EdgeInsets.all(0.0),
      decoration: BoxDecoration(
          color: Colors.green, borderRadius: BorderRadius.circular(15)),
      child: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(18),
              child: Image.asset(
                'images/Leaf.jpg',
                fit: BoxFit.fill,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 100,
              width: double.infinity,
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  )),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Text(
                          "Project ABC",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        Spacer(),
                        Icon(FontAwesomeIcons.arrowRight)
                      ],
                    ),
                    const Text(
                      "This project does xyz, blah blah blah",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        overflow: TextOverflow.visible,
                      ),
                    )
                  ]),
            ),
          )
        ],
      ),
    );
  }
}
