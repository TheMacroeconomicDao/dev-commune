import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

class Scene_6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 406;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // milllionusersYmh (8:106)
        width: double.infinity,
        height: 73 * fem,
        child: Stack(
          children: [
            Positioned(
              // millionsofuserscanspend6HR (8:107)
              left: 0 * fem,
              top: 0 * fem,
              child: Align(
                child: SizedBox(
                  width: 406 * fem,
                  height: 37 * fem,
                  child: Text(
                    ' Millions of users can spend \n',
                    style: SafeGoogleFont(
                      'Montserrat',
                      fontSize: 30 * ffem,
                      fontWeight: FontWeight.w300,
                      height: 1.2175 * ffem / fem,
                      color: Color(0xffb9b9b9),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // billionsontheirinterestsyMD (8:108)
              left: 25.6879882812 * fem,
              top: 36 * fem,
              child: Align(
                child: SizedBox(
                  width: 364 * fem,
                  height: 37 * fem,
                  child: Text(
                    'billions on their interests\n',
                    style: SafeGoogleFont(
                      'Montserrat',
                      fontSize: 30 * ffem,
                      fontWeight: FontWeight.w300,
                      height: 1.2175 * ffem / fem,
                      color: Color(0xffb9b9b9),
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
