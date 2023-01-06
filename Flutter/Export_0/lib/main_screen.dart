import 'package:flutter/material.dart';
import 'package:myapp/const.dart';
import 'package:animate_gradient/animate_gradient.dart';
import 'package:myapp/page-1/btn-TnB.dart';
import 'package:myapp/page-1/btn.dart';
import 'package:myapp/page-1/bygybernaty.dart';
import 'package:myapp/page-1/content.dart';
import 'package:myapp/page-1/line-1.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;

    return Scaffold(
        body: SafeArea(
      child: ListView(
        children: [
          Spacer(),
          Positioned(
            width: _size.width,
            height: _size.height,
            child: Scene_4(),
          ),
          Scene_3(),
          Spacer(
            flex: 3,
          )
        ],
      ),
    ));
  }
}
