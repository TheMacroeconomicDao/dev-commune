import 'package:flutter/material.dart';
import 'package:myapp/utils.dart';

class Scene_0 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 280;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // btnt6o (8:109)
        width: double.infinity,
        height: 64 * fem,
        decoration: BoxDecoration(
          border: Border.all(color: Color(0xff4a4a4a)),
          borderRadius: BorderRadius.circular(3 * fem),
        ),
        child: Center(
          child: Text(
            'Contract Adress\n',
            style: SafeGoogleFont(
              'Grape Nuts',
              fontSize: 28 * ffem,
              fontWeight: FontWeight.w400,
              height: 1.225 * ffem / fem,
              color: Color(0xffb26cff),
            ),
          ),
        ),
      ),
    );
  }
}
