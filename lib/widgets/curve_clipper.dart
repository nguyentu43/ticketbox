import 'package:flutter/cupertino.dart';

class CurveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path()
      ..lineTo(0, 0.8 * size.height)
      ..quadraticBezierTo(
          size.width / 3, size.height, 2 * size.width / 3, 0.7 * size.height)
      ..quadraticBezierTo(
          5 * size.width / 6, 0.55 * size.height, size.width, 0.7 * size.height)
      ..lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
