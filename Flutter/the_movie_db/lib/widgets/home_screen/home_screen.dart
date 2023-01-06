import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:flutter_svg/svg.dart';

class ContentWidget extends StatefulWidget {
  const ContentWidget({super.key});

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
        decoration: const BoxDecoration(
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
                    color: const Color.fromRGBO(0, 0, 0, 1),
                    border: Border.all(
                      color: const Color.fromRGBO(0, 0, 0, 1),
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
                            semanticsLabel: 'line16')),
                    const Positioned(
                        top: 53.56201171875,
                        left: 881.2333984375,
                        child: Divider(
                            color: Color.fromRGBO(203, 255, 0, 1),
                            thickness: 2)),
                  ]))),
          const Positioned(
              top: 48,
              left: 442,
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
            top: 42.3134765625,
            left: 397,
            child: Transform.rotate(
              angle: 0.5043641766218772 * (math.pi / 180),
              child: SvgPicture.asset('assets/images/logo.svg',
                  semanticsLabel: 'logo'),
            ),
          ),
          Positioned(
              top: 54,
              left: 399,
              child: Container(
                  width: 31,
                  height: 31,
                  decoration: const BoxDecoration(
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
              top: 928,
              left: 642,
              child: SizedBox(
                  width: 306,
                  height: 196,
                  child: Stack(children: const <Widget>[
                    Positioned(
                        top: 0,
                        left: 0,
                        child: Text(
                          'by',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(122, 0, 255, 1),
                              fontFamily: 'Montserrat',
                              fontSize: 80,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        )),
                    Positioned(
                        top: 44,
                        left: 103,
                        child: Text(
                          'Gybernaty',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(144, 170, 219, 1),
                              fontFamily: 'Montserrat',
                              fontSize: 32,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        )),
                  ]))),
          Positioned(
              top: 928,
              left: 642,
              child: SizedBox(
                  width: 306,
                  height: 196,
                  child: Stack(children: const <Widget>[
                    Positioned(
                        top: 0,
                        left: 0,
                        child: Text(
                          'by',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(122, 0, 255, 1),
                              fontFamily: 'Montserrat',
                              fontSize: 80,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        )),
                    Positioned(
                        top: 44,
                        left: 103,
                        child: Text(
                          'Gybernaty',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(144, 170, 219, 1),
                              fontFamily: 'Montserrat',
                              fontSize: 32,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        )),
                  ]))),
          Positioned(
              top: 1047,
              left: 391,
              child: Transform.rotate(
                angle: -0.000005008956130975318 * (math.pi / 180),
                child: const Divider(
                    color: Color.fromRGBO(144, 170, 219, 1), thickness: 1),
              )),
          Positioned(
              top: 1047,
              left: 391,
              child: Transform.rotate(
                angle: -0.000005008956130975318 * (math.pi / 180),
                child: const Divider(
                    color: Color.fromRGBO(144, 170, 219, 1), thickness: 1),
              )),
          Positioned(
              top: 922,
              left: 391,
              child: Transform.rotate(
                angle: 0.000005008956538086317 * (math.pi / 180),
                child: const Divider(
                    color: Color.fromRGBO(144, 170, 219, 1), thickness: 1),
              )),
          Positioned(
              top: 961,
              left: 1003,
              child: Container(
                  width: 268,
                  height: 53,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(5),
                      topRight: Radius.circular(5),
                      bottomLeft: Radius.circular(5),
                      bottomRight: Radius.circular(5),
                    ),
                    color: const Color.fromRGBO(
                        185, 185, 185, 0.20000000298023224),
                    border: Border.all(
                      color: const Color.fromRGBO(185, 185, 185, 1),
                      width: 1,
                    ),
                  ),
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 12,
                        left: 10,
                        child: Container(
                            width: 33,
                            height: 33,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/Reddit_icon_1308461.png'),
                                  fit: BoxFit.fitWidth),
                            ))),
                    Positioned(
                        top: 12,
                        left: 53,
                        child: Container(
                            width: 33,
                            height: 33,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/Medium_tile_logo_icon_1689831.png'),
                                  fit: BoxFit.fitWidth),
                            ))),
                    Positioned(
                        top: 12,
                        left: 96,
                        child: Container(
                            width: 33,
                            height: 33,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/Linked_iconicons1.png'),
                                  fit: BoxFit.fitWidth),
                            ))),
                    Positioned(
                        top: 12,
                        left: 139,
                        child: SizedBox(
                            width: 33,
                            height: 33,
                            child: Stack(children: <Widget>[
                              Positioned(
                                top: 6,
                                left: 3,
                                child: SvgPicture.asset(
                                    'assets/images/vector2.svg',
                                    semanticsLabel: 'vector2'),
                              ),
                              Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Container(
                                      width: 33,
                                      height: 33,
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/images/Githubsign_iconicons1.png'),
                                            fit: BoxFit.fitWidth),
                                      ))),
                            ]))),
                    Positioned(
                        top: 12,
                        left: 225,
                        child: SizedBox(
                            width: 33,
                            height: 37.71428680419922,
                            child: Stack(children: <Widget>[
                              Positioned(
                                top: 6.5,
                                left: 2.5,
                                child: SvgPicture.asset(
                                    'assets/images/vector3.svg',
                                    semanticsLabel: 'vector3'),
                              ),
                              Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Container(
                                      width: 33,
                                      height: 37.71428680419922,
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/images/Discord_icon_1607001.png'),
                                            fit: BoxFit.fitWidth),
                                      ))),
                            ]))),
                    Positioned(
                        top: 12,
                        left: 182,
                        child: Container(
                            width: 33,
                            height: 33,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/Twittericon.png'),
                                  fit: BoxFit.fitWidth),
                            ))),
                  ]))),
          Positioned(
              top: 961,
              left: 1003,
              child: Container(
                  width: 268,
                  height: 53,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(5),
                      topRight: Radius.circular(5),
                      bottomLeft: Radius.circular(5),
                      bottomRight: Radius.circular(5),
                    ),
                    color: const Color.fromRGBO(
                        185, 185, 185, 0.20000000298023224),
                    border: Border.all(
                      color: const Color.fromRGBO(185, 185, 185, 1),
                      width: 1,
                    ),
                  ),
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 12,
                        left: 10,
                        child: Container(
                            width: 33,
                            height: 33,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/Reddit_icon_1308461.png'),
                                  fit: BoxFit.fitWidth),
                            ))),
                    Positioned(
                        top: 12,
                        left: 53,
                        child: Container(
                            width: 33,
                            height: 33,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/Medium_tile_logo_icon_1689831.png'),
                                  fit: BoxFit.fitWidth),
                            ))),
                    Positioned(
                        top: 12,
                        left: 96,
                        child: Container(
                            width: 33,
                            height: 33,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/Linked_iconicons1.png'),
                                  fit: BoxFit.fitWidth),
                            ))),
                    Positioned(
                        top: 12,
                        left: 139,
                        child: SizedBox(
                            width: 33,
                            height: 33,
                            child: Stack(children: <Widget>[
                              Positioned(
                                top: 6,
                                left: 3,
                                child: SvgPicture.asset(
                                    'assets/images/vector2.svg',
                                    semanticsLabel: 'vector2'),
                              ),
                              Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Container(
                                      width: 33,
                                      height: 33,
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/images/Githubsign_iconicons1.png'),
                                            fit: BoxFit.fitWidth),
                                      ))),
                            ]))),
                    Positioned(
                        top: 12,
                        left: 225,
                        child: SizedBox(
                            width: 33,
                            height: 37.71428680419922,
                            child: Stack(children: <Widget>[
                              Positioned(
                                top: 6.5,
                                left: 2.5,
                                child: SvgPicture.asset(
                                    'assets/images/vector3.svg',
                                    semanticsLabel: 'vector3'),
                              ),
                              Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Container(
                                      width: 33,
                                      height: 37.71428680419922,
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/images/Discord_icon_1607001.png'),
                                            fit: BoxFit.fitWidth),
                                      ))),
                            ]))),
                    Positioned(
                        top: 12,
                        left: 182,
                        child: Container(
                            width: 33,
                            height: 33,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/Twittericon.png'),
                                  fit: BoxFit.fitWidth),
                            ))),
                  ]))),
          Positioned(
              top: 849,
              left: 861,
              child: Container(
                  width: 200,
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
                  child: Stack(children: const <Widget>[
                    Positioned(
                        top: 13,
                        left: 36,
                        child: Text(
                          'Private Sale',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(178, 108, 255, 1),
                              fontFamily: 'Montserrat',
                              fontSize: 22,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        )),
                  ]))),
          Positioned(
              top: 754,
              left: 751,
              child: SizedBox(
                  width: 417,
                  height: 72,
                  child: Stack(children: const <Widget>[
                    Positioned(
                        top: 0,
                        left: 0,
                        child: Text(
                          ' Millions of users can spend ',
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
                        top: 36,
                        left: 25.687885284423828,
                        child: Text(
                          'billions on their interests',
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
                  ]))),
          Positioned(
              top: 574,
              left: 820,
              child: Container(
                  width: 280,
                  height: 64,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(3),
                      topRight: Radius.circular(3),
                      bottomLeft: Radius.circular(3),
                      bottomRight: Radius.circular(3),
                    ),
                    border: Border.all(
                      color: const Color.fromRGBO(74, 74, 74, 1),
                      width: 1,
                    ),
                  ),
                  child: Stack(children: const <Widget>[
                    Positioned(
                        top: 15,
                        left: 54,
                        child: Text(
                          'Contract Adress',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(178, 108, 255, 1),
                              fontFamily: 'Grape Nuts',
                              fontSize: 28,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        )),
                  ]))),
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
