import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_auth_animation/constants.dart';
import 'package:flutter_auth_animation/widgets/login_form.dart';
import 'package:flutter_auth_animation/widgets/sign_up_form.dart';
import 'package:flutter_auth_animation/widgets/socal_buttons.dart';
import 'package:flutter_svg/svg.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen>
    with SingleTickerProviderStateMixin {
  bool _showSignUp = false;
  late AnimationController _animationController;
  late Animation<double> _animationTextRotate;
  void setUpAnimation() {
    _animationController =
        AnimationController(vsync: this, duration: defaultDuration);
    _animationTextRotate =
        Tween<double>(begin: 0, end: 90).animate(_animationController);
  }

  void updateView() {
    setState(() {
      _showSignUp = !_showSignUp;
    });
    _showSignUp
        ? _animationController.forward()
        : _animationController.reverse();
  }

  @override
  void initState() {
    setUpAnimation();
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 112, 204),
      body: AnimatedBuilder(
          animation: _animationController,
          builder: (context, snapshot) {
            return Stack(children: [
              // Login
              AnimatedPositioned(
                duration: defaultDuration,
                curve: defaultCurve,
                width: _size.width * 0.88,
                height: _size.height,
                left: _showSignUp ? -_size.width * 0.76 : _size.width * 0,
                child: InkWell(
                  onTap: () {
                    if (_showSignUp) {
                      updateView();
                    } else {
                      // Log in
                    }
                  },
                  child: Container(
                    color: login_bg,
                    child: LoginForm(),
                  ),
                ),
              ),

              //Sign up
              AnimatedPositioned(
                  duration: defaultDuration,
                  curve: defaultCurve,
                  height: _size.height,
                  width: _size.width * 0.88,
                  left: _showSignUp ? _size.width * 0.12 : _size.width * 0.88,
                  child: InkWell(
                    onTap: () {
                      if (_showSignUp) {
                        // Sign Up
                      } else {
                        updateView();
                      }
                    },
                    child: Container(
                      color: signup_bg,
                      child: SignUpForm(),
                    ),
                  )),

              // Avatar
              AnimatedPositioned(
                duration: defaultDuration,
                curve: defaultCurve,
                left: 0,
                right: _showSignUp ? -_size.width * 0.06 : _size.width * 0.06,
                top: _size.height * 0.1,
                child: CircleAvatar(
                  backgroundColor: Colors.white60,
                  radius: 25,
                  child: AnimatedSwitcher(
                    duration: defaultDuration,
                    child: _showSignUp
                        ? SvgPicture.asset(
                            'assets/animation_logo.svg',
                            color: signup_bg,
                          )
                        : SvgPicture.asset(
                            'assets/animation_logo.svg',
                            color: login_bg,
                          ),
                  ),
                ),
              ),

              // Social Buttons
              AnimatedPositioned(
                duration: defaultDuration,
                curve: defaultCurve,
                width: _size.width,
                bottom: _size.height * 0.1,
                right: _showSignUp ? -_size.width * 0.06 : _size.width * 0.06,
                child: SocalButtns(),
              ),

              // Login Text
              AnimatedPositioned(
                duration: defaultDuration,
                curve: defaultCurve,
                bottom:
                    _showSignUp ? _size.height / 2 - 80 : _size.height * 0.3,
                left: _showSignUp ? 0 : _size.width * 0.44 - 80,
                child: AnimatedDefaultTextStyle(
                  duration: defaultDuration,
                  curve: defaultCurve,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: _showSignUp ? 20 : 32,
                      fontWeight: FontWeight.bold,
                      color: _showSignUp ? Colors.white : Colors.white70),
                  child: Transform.rotate(
                    angle: -_animationTextRotate.value * pi / 180,
                    alignment: Alignment.topLeft,
                    child: InkWell(
                      onTap: () {
                        if (_showSignUp) {
                          updateView();
                        } else {
                          // Log in
                        }
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: defaultPadding * 0.75),
                        // color: Colors.red,
                        width: 160,
                        child: Text(
                          'Login in'.toUpperCase(),
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              // Sign Up Text
              AnimatedPositioned(
                duration: defaultDuration,
                curve: defaultCurve,
                bottom:
                    !_showSignUp ? _size.height / 2 - 80 : _size.height * 0.3,
                right: _showSignUp ? _size.width * 0.44 - 80 : 0,
                child: AnimatedDefaultTextStyle(
                  duration: defaultDuration,
                  curve: defaultCurve,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: !_showSignUp ? 20 : 32,
                      fontWeight: FontWeight.bold,
                      color: !_showSignUp ? Colors.white : Colors.white70),
                  child: Transform.rotate(
                    angle: (90 - _animationTextRotate.value) * pi / 180,
                    alignment: Alignment.topRight,
                    child: InkWell(
                      onTap: () {
                        if (_showSignUp) {
                          // Sign Up
                        } else {
                          updateView();
                        }
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: defaultPadding * 1),
                        // color: Colors.red,
                        width: 160,
                        child: Text(
                          'Sign Up'.toUpperCase(),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ]);
          }),
    );
  }
}
