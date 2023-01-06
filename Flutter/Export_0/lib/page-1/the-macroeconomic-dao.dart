import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

class Scene_8 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 764;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // themacroeconomicdaosDd (8:111)
        width: double.infinity,
        height: 74 * fem,
        child: Text(
          'The Macroeconomic DAO\n',
          style: SafeGoogleFont(
            'Montserrat',
            fontSize: 60 * ffem,
            fontWeight: FontWeight.w300,
            height: 1.2175 * ffem / fem,
            color: Color(0xffb9b9b9),
          ),
        ),
      ),
    );
  }
}
