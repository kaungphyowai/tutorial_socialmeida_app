import 'package:flutter/material.dart';

class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, 4 * size.height / 5);
    Offset firstControlPoint = Offset(size.width / 4, size.height);
    Offset centerPoint = Offset(size.width / 2, 4 * size.height / 5);
    Offset secondControlPoint = Offset(3 * size.width / 4, 3 * size.height / 5);

    Offset endPoint = Offset(size.width, 4 * size.height / 5);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        centerPoint.dx, centerPoint.dy);
    path.quadraticBezierTo(
        secondControlPoint.dx, secondControlPoint.dy, endPoint.dx, endPoint.dy);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
