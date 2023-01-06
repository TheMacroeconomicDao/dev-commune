import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

class Scene_1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 200;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // btnovb (8:104)
        width: double.infinity,
        height: 50 * fem,
        decoration: BoxDecoration(
          border: Border.all(color: Color(0xffccff00)),
          color: Color(0x19b9b9b9),
          borderRadius: BorderRadius.circular(3 * fem),
        ),
        child: Center(
          child: Text(
            'Private Sale\n',
            style: SafeGoogleFont(
              'Montserrat',
              fontSize: 22 * ffem,
              fontWeight: FontWeight.w400,
              height: 1.2175 * ffem / fem,
              color: Color(0xffb26cff),
            ),
          ),
        ),
      ),
    );
  }
}
