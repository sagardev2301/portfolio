import 'package:flutter/material.dart';
import '../constants.dart';

class NavButtons extends StatefulWidget {
  const NavButtons(
      {required this.navTitle,
      required this.index,
      required this.isHovering,
      super.key});
  final List isHovering;
  final int index;
  final String navTitle;

  @override
  State<NavButtons> createState() => _NavButtonsState();
}

class _NavButtonsState extends State<NavButtons> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: Colors.transparent,
      onHover: (value) {
        setState(() {
          value
              ? widget.isHovering[widget.index] = true
              : widget.isHovering[widget.index] = false;
        });
      },
      onTap: () {},
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            widget.navTitle,
            style: TextStyle(
                color: widget.isHovering[widget.index]
                    ? Color.fromARGB(255, 3, 111, 95)
                    : Color.fromARGB(255, 26, 173, 151),
                fontWeight: FontWeight.bold,
                fontSize: 18),
          ),
          const SizedBox(height: 3),
          Visibility(
            maintainAnimation: true,
            maintainState: true,
            maintainSize: true,
            visible: widget.isHovering[widget.index],
            child: Container(
              height: 3,
              width: 40,
              decoration: BoxDecoration(
                  color: Color(0xFF051441),
                  borderRadius: BorderRadius.circular(10)),
            ),
          ),
        ],
      ),
    );
  }
}
