import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:velocity_x/velocity_x.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      //padding: const EdgeInsets.fromLTRB(150, 10, 50, 15),
      color: const Color(0xff88efe0),
      height: height * 0.125,
      width: double.infinity,
      child: Center(
        child: Wrap(
            alignment: WrapAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: width < 1000
                    ? width < 800
                        ? width * 1.0
                        : width * 0.5
                    : width * 0.6,
                child: Center(
                  child: Padding(
                    padding: width < 1000
                        ? width < 900
                            ? const EdgeInsets.fromLTRB(20, 0, 150, 0)
                            : const EdgeInsets.fromLTRB(100, 0, 100, 0)
                        : const EdgeInsets.fromLTRB(150, 0, 250, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        FooterSocialButtons(
                            iconData: FontAwesomeIcons.linkedin),
                        FooterSocialButtons(
                            iconData: FontAwesomeIcons.instagram),
                        FooterSocialButtons(
                            iconData: FontAwesomeIcons.whatsapp),
                        FooterSocialButtons(
                            iconData: FontAwesomeIcons.envelope),
                        FooterSocialButtons(iconData: FontAwesomeIcons.github)
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: width < 1000
                    ? width < 800
                        ? width * 1.0
                        : width * 0.5
                    : width * 0.4,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Made with ",
                        style: TextStyle(
                            fontSize:
                                width < 900 ? height * 0.02 : height * 0.03,
                            color: Colors.black),
                      ),
                      Icon(
                        FontAwesomeIcons.solidHeart,
                        color: const Color.fromARGB(255, 244, 16, 0),
                        size: width < 900 ? height * 0.025 : height * 0.035,
                      ),
                      Text(
                        " by ",
                        style: TextStyle(
                            fontSize:
                                width < 900 ? height * 0.02 : height * 0.03,
                            color: Colors.black),
                      ),
                      Text(
                        "Sagar",
                        style: TextStyle(
                            fontSize:
                                width < 900 ? height * 0.025 : height * 0.035,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xff2554f8)),
                      ),
                    ],
                  ),
                ),
              )
            ]),
      ),
    );
  }
}

class FooterSocialButtons extends StatelessWidget {
  const FooterSocialButtons(
      {
      //required this.link,
      required this.iconData,
      super.key});
  final IconData iconData;
  //final String link;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: Icon(
        iconData,
        size: context.screenWidth < 1000
            ? context.screenWidth < 800
                ? 20
                : 25
            : 30,
      ),
    );
  }
}
