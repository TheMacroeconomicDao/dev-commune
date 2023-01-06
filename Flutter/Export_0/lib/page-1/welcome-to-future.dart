import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

class Scene_9 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 662;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // welcometofuturessq (8:112)
        width: double.infinity,
        height: 117 * fem,
        child: Text(
          'Welcome to Future\n',
          style: SafeGoogleFont(
            'Grape Nuts',
            fontSize: 95 * ffem,
            fontWeight: FontWeight.w400,
            height: 1.225 * ffem / fem,
            color: Color(0xff88ab00),
          ),
        ),
      ),
    );
  }
}
