import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:flutter_svg/svg.dart';

class ContentWidget extends StatefulWidget {
  @override
  _ContentWidgetState createState() => _ContentWidgetState();
}

class _ContentWidgetState extends State<ContentWidget> {
  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator ContentWidget - FRAME

    return Container(
        width: 1920,
        height: 1080,
        decoration: BoxDecoration(
          color: Color.fromRGBO(0, 0, 0, 1),
        ),
        child: Stack(children: <Widget>[
          Positioned(
              top: 0,
              left: 0,
              child: Container(
                  width: 1920,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(0, 0, 0, 1),
                    border: Border.all(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      width: 1,
                    ),
                  ),
                  child: Stack(children: <Widget>[
                    const Positioned(
                        top: 70,
                        left: 906,
                        child: Text(
                          'Links',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(234, 108, 255, 1),
                              fontFamily: 'Montserrat',
                              fontSize: 22,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        )),
                    const Positioned(
                        top: 73,
                        left: 1045,
                        child: Text(
                          'Projects',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(144, 170, 219, 1),
                              fontFamily: 'Montserrat',
                              fontSize: 22,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        )),
                    const Positioned(
                        top: 73,
                        left: 1225,
                        child: Text(
                          'whatsUp',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(144, 170, 219, 1),
                              fontFamily: 'Montserrat',
                              fontSize: 22,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        )),
                    const Positioned(
                        top: 73,
                        left: 1384,
                        child: Text(
                          'Papers',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(144, 170, 219, 1),
                              fontFamily: 'Montserrat',
                              fontSize: 22,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        )),
                    const Positioned(
                        top: 67,
                        left: 686,
                        child: Text(
                          'Commune',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(144, 170, 219, 1),
                              fontFamily: 'Montserrat',
                              fontSize: 22,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        )),
                    Positioned(
                      top: 57,
                      left: 681,
                      child: SvgPicture.asset('assets/images/line16.svg',
                          semanticsLabel: 'line16'),
                    ),
                    const Positioned(
                        top: 53.56201171875,
                        left: 881.2333984375,
                        child: Divider(
                            color: Color.fromRGBO(203, 255, 0, 1),
                            thickness: 2)),
                  ]))),
          const Positioned(
              top: 48,
              left: 455,
              child: Text(
                'Gyber',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Color.fromRGBO(185, 185, 185, 1),
                    fontFamily: 'Montserrat',
                    fontSize: 30,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1),
              )),
          const Positioned(
              top: 48,
              left: 455,
              child: Text(
                'Gyber',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Color.fromRGBO(185, 185, 185, 1),
                    fontFamily: 'Montserrat',
                    fontSize: 30,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1),
              )),
          Positioned(
              top: 45,
              left: 390,
              child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(3),
                      topRight: Radius.circular(3),
                      bottomLeft: Radius.circular(3),
                      bottomRight: Radius.circular(3),
                    ),
                    color: const Color.fromRGBO(
                        185, 185, 185, 0.10000000149011612),
                    border: Border.all(
                      color: const Color.fromRGBO(203, 255, 0, 1),
                      width: 1,
                    ),
                  ),
                  child: Stack(children: <Widget>[]))),
          Positioned(
              top: 54,
              left: 399,
              child: Container(
                  width: 31,
                  height: 31,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ),
                  child: Stack(children: <Widget>[
                    Positioned(
                      top: 0,
                      left: 0,
                      child: SvgPicture.asset('assets/images/vector.svg',
                          semanticsLabel: 'vector'),
                    ),
                  ]))),
          Positioned(
              top: 54,
              left: 399,
              child: Container(
                  width: 31,
                  height: 31,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ),
                  child: Stack(children: <Widget>[
                    Positioned(
                      top: 0,
                      left: 0,
                      child: SvgPicture.asset('assets/images/vector.svg',
                          semanticsLabel: 'vector'),
                    ),
                  ]))),
          Positioned(
              top: 52,
              left: 395,
              child: Container(
                  width: 54,
                  height: 36,
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 2,
                        left: 0,
                        child: Transform.rotate(
                          angle: 2.1210963808616636 * (math.pi / 180),
                          child: Divider(
                              color: Color.fromRGBO(178, 108, 255, 1),
                              thickness: 2),
                        )),
                    Positioned(
                        top: 18,
                        left: 0,
                        child: Transform.rotate(
                          angle: 1.0609117297840098 * (math.pi / 180),
                          child: Divider(
                              color: Color.fromRGBO(203, 255, 0, 1),
                              thickness: 1),
                        )),
                    Positioned(
                        top: 34,
                        left: 0,
                        child: Transform.rotate(
                          angle: -2.2457425031658125 * (math.pi / 180),
                          child: Divider(
                              color: Color.fromRGBO(144, 170, 219, 1),
                              thickness: 1),
                        )),
                  ]))),
          Positioned(
              top: 52,
              left: 395,
              child: Container(
                  width: 54,
                  height: 36,
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 2,
                        left: 0,
                        child: Transform.rotate(
                          angle: 2.1210963808616636 * (math.pi / 180),
                          child: Divider(
                              color: Color.fromRGBO(178, 108, 255, 1),
                              thickness: 2),
                        )),
                    Positioned(
                        top: 18,
                        left: 0,
                        child: Transform.rotate(
                          angle: 1.0609117297840098 * (math.pi / 180),
                          child: Divider(
                              color: Color.fromRGBO(203, 255, 0, 1),
                              thickness: 1),
                        )),
                    Positioned(
                        top: 34,
                        left: 0,
                        child: Transform.rotate(
                          angle: -2.2457425031658125 * (math.pi / 180),
                          child: Divider(
                              color: Color.fromRGBO(144, 170, 219, 1),
                              thickness: 1),
                        )),
                  ]))),
          Positioned(
              top: 574,
              left: 820,
              child: Container(
                  width: 280,
                  height: 64,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(3),
                      topRight: Radius.circular(3),
                      bottomLeft: Radius.circular(3),
                      bottomRight: Radius.circular(3),
                    ),
                    border: Border.all(
                      color: Color.fromRGBO(74, 74, 74, 1),
                      width: 1,
                    ),
                  ),
                  child: Stack(children: <Widget>[]))),
          const Positioned(
              top: 399,
              left: 578,
              child: Text(
                'The Macroeconomic DAO',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Color.fromRGBO(185, 185, 185, 1),
                    fontFamily: 'Montserrat',
                    fontSize: 60,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1),
              )),
          const Positioned(
              top: 234,
              left: 627,
              child: Text(
                'Welcome to Future',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Color.fromRGBO(136, 171, 0, 1),
                    fontFamily: 'Grape Nuts',
                    fontSize: 95,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1),
              )),
        ]));
  }
}
