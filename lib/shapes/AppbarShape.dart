import 'package:flutter/material.dart';

class Customshape extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    double h =size.height;
    double w = size.width;

    var path = Path();
    path.lineTo(0, h);
    path.quadraticBezierTo(
      w * 0.5,
      h - 100,
        w,
      h,
    );
    path.lineTo(w, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}