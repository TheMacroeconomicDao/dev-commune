import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

class Scene_7 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 268;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // sociallinksRGX (8:92)
        padding: EdgeInsets.fromLTRB(10 * fem, 12 * fem, 10 * fem, 3.29 * fem),
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(color: Color(0xffb9b9b9)),
          color: Color(0x33b9b9b9),
          borderRadius: BorderRadius.circular(5 * fem),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // redditicon1308461Gnw (8:93)
              margin:
                  EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 4.71 * fem),
              width: 33 * fem,
              height: 33 * fem,
              child: Image.asset(
                'assets/page-1/images/redditicon130846-1.png',
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              width: 10 * fem,
            ),
            Container(
              // mediumtilelogoicon1689831vMh (8:94)
              margin:
                  EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 4.71 * fem),
              width: 33 * fem,
              height: 33 * fem,
              child: Image.asset(
                'assets/page-1/images/mediumtilelogoicon168983-1.png',
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              width: 10 * fem,
            ),
            Container(
              // linkediconicons1ckK (8:95)
              margin:
                  EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 4.71 * fem),
              width: 33 * fem,
              height: 33 * fem,
              child: Image.asset(
                'assets/page-1/images/linkedicon-icons-1.png',
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              width: 10 * fem,
            ),
            Container(
              // githubiconsgF (8:97)
              margin:
                  EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 4.71 * fem),
              width: 33 * fem,
              height: 33 * fem,
              child: Stack(
                children: [
                  Positioned(
                    // vector2M5d (8:98)
                    left: 3 * fem,
                    top: 6 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 25.5 * fem,
                        height: 27 * fem,
                        child: Image.asset(
                          'assets/page-1/images/vector-2.png',
                          width: 25.5 * fem,
                          height: 27 * fem,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // githubsigniconicons13j9 (8:99)
                    left: 0 * fem,
                    top: 0 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 33 * fem,
                        height: 33 * fem,
                        child: Image.asset(
                          'assets/page-1/images/github-signicon-icons-1.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 10 * fem,
            ),
            Container(
              // twittericon9GP (8:103)
              margin:
                  EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 4.71 * fem),
              width: 33 * fem,
              height: 33 * fem,
              child: Image.asset(
                'assets/page-1/images/twittericon.png',
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              width: 10 * fem,
            ),
            Container(
              // discordicon3sZ (8:100)
              width: 33 * fem,
              height: 37.71 * fem,
              child: Stack(
                children: [
                  Positioned(
                    // vector3PgX (8:101)
                    left: 2.5 * fem,
                    top: 6.5 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 26.5 * fem,
                        height: 21 * fem,
                        child: Image.asset(
                          'assets/page-1/images/vector-3.png',
                          width: 26.5 * fem,
                          height: 21 * fem,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // discordicon16070017Md (8:102)
                    left: 0 * fem,
                    top: 0 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 33 * fem,
                        height: 37.71 * fem,
                        child: Image.asset(
                          'assets/page-1/images/discordicon160700-1.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
