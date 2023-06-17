import 'package:flutter/material.dart';

class OnHoverWidget extends StatefulWidget {
  const OnHoverWidget({required this.child, super.key});
  final Widget child;
  @override
  State<OnHoverWidget> createState() => _OnHoverWidgetState();
}

class _OnHoverWidgetState extends State<OnHoverWidget> {
  bool isHovered = false;

  void onHover(bool isHovered) {
    setState(() {
      this.isHovered = isHovered;
    });
  }

  @override
  Widget build(BuildContext context) {
    final hoveredTransform = Matrix4.identity()..translate(-5, -5, 0);
    final transform = isHovered ? hoveredTransform : Matrix4.identity();
    return MouseRegion(
      onEnter: (event) => onHover(true),
      onExit: (event) => onHover(false),
      child: AnimatedContainer(
          duration: const Duration(milliseconds: 100),
          transform: transform,
          child: widget.child),
    );
  }
}
