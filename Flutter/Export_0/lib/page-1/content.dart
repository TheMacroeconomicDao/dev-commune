import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

class Scene_3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 1920;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // contentgXM (8:63)
        width: double.infinity,
        height: 1080 * fem,
        decoration: BoxDecoration(
          color: Color(0xff000000),
        ),
        child: Container(
          // headeryPy (8:64)
          padding: EdgeInsets.fromLTRB(390 * fem, 45 * fem, 455 * fem, 0 * fem),
          width: double.infinity,
          height: 100 * fem,
          decoration: BoxDecoration(
            border: Border.all(color: Color(0xff000000)),
            color: Color(0xff000000),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                // autogroupk9wzRWs (8dxEbzSyUhJ3j1QN7MK9wZ)
                margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 6 * fem, 5 * fem),
                width: 59 * fem,
                height: 50 * fem,
                child: Image.asset(
                  'assets/page-1/images/auto-group-k9wz.png',
                  width: 59 * fem,
                  height: 50 * fem,
                ),
              ),
              Container(
                // autogroupg9q5VFq (8dxEvyuLBKZh18vkbQg9q5)
                margin:
                    EdgeInsets.fromLTRB(0 * fem, 0 * fem, 136 * fem, 15 * fem),
                width: 90 * fem,
                height: 37 * fem,
                child: Stack(
                  children: [
                    Positioned(
                      // gyberc5Z (8:72)
                      left: 0 * fem,
                      top: 0 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 90 * fem,
                          height: 37 * fem,
                          child: Text(
                            'Gyber\n',
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
                      // gybergzX (8:73)
                      left: 0 * fem,
                      top: 0 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 90 * fem,
                          height: 37 * fem,
                          child: Text(
                            'Gyber\n',
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
              Container(
                // autogrouput1yP8F (8dxF3p3HSx1fezSWJ2Ut1y)
                padding:
                    EdgeInsets.fromLTRB(0 * fem, 3.44 * fem, 0 * fem, 0 * fem),
                width: 784 * fem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // autogroupbyjk6HZ (8dxFE4FDMPgddmi8qxByJK)
                      margin: EdgeInsets.fromLTRB(
                          5 * fem, 0 * fem, 3 * fem, 0 * fem),
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            // gyberorgQ3M (8:69)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 100 * fem, 6 * fem),
                            child: Text(
                              'Commune',
                              style: SafeGoogleFont(
                                'Montserrat',
                                fontSize: 22 * ffem,
                                fontWeight: FontWeight.w500,
                                height: 1.2175 * ffem / fem,
                                color: Color(0xff90aadb),
                              ),
                            ),
                          ),
                          Container(
                            // gyberorg6gs (8:65)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 80 * fem, 3 * fem),
                            child: Text(
                              'Links',
                              style: SafeGoogleFont(
                                'Montserrat',
                                fontSize: 22 * ffem,
                                fontWeight: FontWeight.w500,
                                height: 1.2175 * ffem / fem,
                                color: Color(0xffea6cff),
                              ),
                            ),
                          ),
                          Container(
                            // gyberorgDWb (8:66)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 89 * fem, 0 * fem),
                            child: Text(
                              'Projects',
                              style: SafeGoogleFont(
                                'Montserrat',
                                fontSize: 22 * ffem,
                                fontWeight: FontWeight.w500,
                                height: 1.2175 * ffem / fem,
                                color: Color(0xff90aadb),
                              ),
                            ),
                          ),
                          Container(
                            // gyberorgvvo (8:67)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 58 * fem, 0 * fem),
                            child: Text(
                              'whatsUp',
                              style: SafeGoogleFont(
                                'Montserrat',
                                fontSize: 22 * ffem,
                                fontWeight: FontWeight.w500,
                                height: 1.2175 * ffem / fem,
                                color: Color(0xff90aadb),
                              ),
                            ),
                          ),
                          Text(
                            // gyberorgSeF (8:68)
                            'Papers',
                            style: SafeGoogleFont(
                              'Montserrat',
                              fontSize: 22 * ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.2175 * ffem / fem,
                              color: Color(0xff90aadb),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
