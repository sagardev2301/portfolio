import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.fromLTRB(150, 10, 50, 15),
      color: const Color(0xff88efe0),
      height: height * 0.125,
      width: double.infinity,
      child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: width * 0.30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      FontAwesomeIcons.linkedin,
                      size: height * 0.05,
                    ),
                  ),
                  // const SizedBox(
                  //   width: 10,
                  // ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        FontAwesomeIcons.instagram,
                        size: height * 0.05,
                      )),
                  // const SizedBox(
                  //   width: 10,
                  // ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        FontAwesomeIcons.whatsapp,
                        size: height * 0.05,
                      )),
                  // const SizedBox(
                  //   width: 10,
                  // ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        FontAwesomeIcons.envelope,
                        size: height * 0.05,
                      )),
                  // const SizedBox(
                  //   width: 10,
                  // ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        FontAwesomeIcons.github,
                        size: height * 0.05,
                      )),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Made with ",
                  style:
                      TextStyle(fontSize: height * 0.04, color: Colors.black),
                ),
                Icon(
                  FontAwesomeIcons.solidHeart,
                  color: const Color.fromARGB(255, 244, 16, 0),
                  size: height * 0.05,
                ),
                Text(
                  " by ",
                  style:
                      TextStyle(fontSize: height * 0.04, color: Colors.black),
                ),
                Text(
                  "Sagar",
                  style: TextStyle(
                      fontSize: height * 0.05,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xff2554f8)),
                ),
              ],
            )
          ]),
    );
  }
}
