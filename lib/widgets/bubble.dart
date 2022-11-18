import 'package:flutter/material.dart';

class Bubble extends StatelessWidget {
  final double ?top, bottom, left, right;
  final double size, opacity;
  final int r, g, b;
  const Bubble({Key? key, this.top, this.bottom, this.left, this.right, required this.opacity, required this.r, required this.g, required this.b, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: bottom ,
      top: top,
      left: left,
      right: right,
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          color: Color.fromRGBO(r, g, b, opacity),
          borderRadius: BorderRadius.all(
            Radius.circular(size),
          ),
        ),
      ),
    );
  }
}
