import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

class Scene_5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 1140;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // line2s6b (8:90)
        width: double.infinity,
        height: 1 * fem,
        decoration: BoxDecoration(
          color: Color(0xff90aadb),
        ),
      ),
    );
  }
}
