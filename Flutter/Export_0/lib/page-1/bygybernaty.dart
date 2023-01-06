import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

class Scene_2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 309;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // bygybernatyZpf (8:87)
        width: double.infinity,
        height: 98 * fem,
        child: Stack(
          children: [
            Positioned(
              // byWzo (8:88)
              left: 0 * fem,
              top: 0 * fem,
              child: Align(
                child: SizedBox(
                  width: 115 * fem,
                  height: 98 * fem,
                  child: Text(
                    'by\n',
                    style: SafeGoogleFont(
                      'Montserrat',
                      fontSize: 80 * ffem,
                      fontWeight: FontWeight.w400,
                      height: 1.2175 * ffem / fem,
                      letterSpacing: 6 * fem,
                      color: Color(0xff7a00ff),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // gybernatyBLF (8:89)
              left: 103 * fem,
              top: 44 * fem,
              child: Align(
                child: SizedBox(
                  width: 206 * fem,
                  height: 39 * fem,
                  child: Text(
                    'Gybernaty\n',
                    style: SafeGoogleFont(
                      'Montserrat',
                      fontSize: 32 * ffem,
                      fontWeight: FontWeight.w300,
                      height: 1.2175 * ffem / fem,
                      letterSpacing: 4.16 * fem,
                      color: Color(0xff90aadb),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
