import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_auth_animation/constants.dart';
import 'package:flutter_auth_animation/widgets/follow_button.dart';
import 'package:flutter_auth_animation/widgets/login_form.dart';
import 'package:flutter_auth_animation/widgets/sign_up_form.dart';
import 'package:flutter_auth_animation/widgets/socal_buttons.dart';
import 'package:flutter_svg/svg.dart';
//import 'package:liquid_swipe/liquid_swipe.dart';

class AuthScreen extends StatefulWidget {
  AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen>
    with SingleTickerProviderStateMixin {
  // If we want to show our sign up  then we set it true
  bool _isShowSignUp = false;

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
      _isShowSignUp = !_isShowSignUp;
    });
    _isShowSignUp
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
    // it provide us screen height and width
    final _size = MediaQuery.of(context).size;

    return Scaffold(
      body: AnimatedBuilder(
          animation: _animationController,
          builder: (context, _) {
            return Stack(
              children: [
                // Lets animate the transitions

                // Login
                AnimatedPositioned(
                  curve: Curves.decelerate,
                  duration: defaultDuration,
                  // we use 88% width for login
                  width: _size.width * 0.88, // 88%
                  height: _size.height,
                  left: _isShowSignUp ? -_size.width * 0.76 : 0, // 76%
                  child: Container(
                    color: login_bg,
                    child: InkWell(
                      child: LoginForm(),
                      onTap: () {
                        if (_isShowSignUp) {
                          updateView();
                        }
                      },
                    ),
                  ),
                ),

                // Sign Up
                AnimatedPositioned(
                    curve: Curves.decelerate,
                    duration: defaultDuration,
                    height: _size.height,
                    width: _size.width * 0.88,
                    left:
                        _isShowSignUp ? _size.width * 0.12 : _size.width * 0.88,
                    child: Container(
                      color: signup_bg,
                      child: InkWell(
                        onTap: () {
                          if (!_isShowSignUp) {
                            updateView();
                          }
                        },
                        child: SignUpForm(),
                      ),
                    )),

                // Logo
                AnimatedPositioned(
                  curve: Curves.decelerate,
                  duration: defaultDuration,
                  top: _size.height * 0.1, // 10%
                  left: 0,
                  right:
                      _isShowSignUp ? -_size.width * 0.1 : _size.width * 0.14,
                  child: AnimatedSwitcher(
                    duration: defaultDuration,
                    child: Container(
                      child: SvgPicture.asset(
                        'assets/animation_logo.svg',
                        height: 60,
                      ),
                    ),
                  ),
                ),

                // Reg Button
                AnimatedPositioned(
                  curve: Curves.decelerate,
                  duration: defaultDuration,
                  top: _isShowSignUp
                      ? _size.height * 0.5
                      : _size.height * 0.46, // 10%
                  left:
                      _isShowSignUp ? _size.width * 0.11 : _size.width * 0.063,
                  right: _isShowSignUp ? _size.width * 0.3 : _size.width * 0.18,
                  child: AnimatedSwitcher(
                    duration: defaultDuration,
                    child: Container(
                      child: FollowButton(
                        backgroundColor: Color.fromARGB(255, 38, 35, 87),
                        borderColor: Colors.white38,
                        text: 'Sign',
                        textColor: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                  ),
                ),

                // Wallet Button
                AnimatedPositioned(
                  curve: Curves.decelerate,
                  duration: defaultDuration,
                  top: _isShowSignUp
                      ? _size.height * 0.5
                      : _size.height * 0.51, // 10%
                  left:
                      _isShowSignUp ? _size.width * 0.65 : _size.width * 0.063,
                  right:
                      _isShowSignUp ? _size.width * 0.17 : _size.width * 0.18,
                  child: AnimatedSwitcher(
                    duration: defaultDuration,
                    child: Container(
                      child: FollowButton(
                        backgroundColor: Color.fromARGB(255, 25, 48, 66),
                        borderColor: Colors.white38,
                        text: 'whith Wallet',
                        textColor: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                  ),
                ),

                // Social Btns
                AnimatedPositioned(
                  curve: Curves.decelerate,
                  duration: defaultDuration,
                  width: _size.width,
                  bottom: _size.height * 0.1, // 10%
                  right: _isShowSignUp
                      ? -_size.width * 0.06
                      : _size.width * 0.06, // Now its center
                  child: SocalButtns(),
                ),

                // Login Text
                AnimatedPositioned(
                  curve: Curves.decelerate,
                  duration: defaultDuration,
                  // when our sign up shows we want our login text to left center
                  bottom: _isShowSignUp
                      ? _size.height / 2 - 80
                      : _size.height * 0.3, // 30%
                  left: _isShowSignUp ? 0 : _size.width * 0.44 - 80,
                  // whidth of our text container is 160 so 160/2 = 80
                  // 0.88 / 2 = 0.44 (whidth of our login is 88%)
                  child: AnimatedDefaultTextStyle(
                    curve: Curves.linearToEaseOut,
                    duration: defaultDuration,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: _isShowSignUp ? 20 : 32,
                        fontWeight: FontWeight.bold,
                        color: _isShowSignUp ? Colors.white : Colors.white70),
                    child: Transform.rotate(
                      angle: -_animationTextRotate.value * pi / 180,
                      alignment: Alignment.topLeft,
                      child: InkWell(
                        onTap: () {
                          if (_isShowSignUp) {
                            updateView();
                          }
                        },
                        child: Center(
                          child: Container(
                            color: Colors.red,
                            padding: const EdgeInsets.symmetric(
                                vertical: defpaultPadding * 0.75),
                            width: 160,
                            // color: Colors.red,
                            child: Text(
                              'Log in'.toUpperCase(),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                // Sing up Text
                AnimatedPositioned(
                  curve: Curves.decelerate,
                  duration: defaultDuration,
                  // when our sign up shows we want our login text to left center
                  // As you can see Sign up Text not on center
                  bottom: !_isShowSignUp
                      ? _size.height / 2 - 80
                      : _size.height * 0.3, // 30%
                  right: _isShowSignUp ? _size.width * 0.44 - 80 : 0,
                  // whidth of our text container is 160 so 160/2 = 80
                  // 0.88 / 2 = 0.44 (whidth of our login is 88%)
                  child: AnimatedDefaultTextStyle(
                    curve: Curves.easeInQuart,
                    duration: defaultDuration,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: !_isShowSignUp ? 20 : 32,
                        fontWeight: FontWeight.bold,
                        color: _isShowSignUp ? Colors.white70 : Colors.white),
                    child: Transform.rotate(
                      angle: (90 - _animationTextRotate.value) * pi / 180,
                      alignment: Alignment.topRight,
                      child: InkWell(
                        onTap: () {
                          if (_isShowSignUp) {
                            //Sign up
                          } else
                            updateView();
                        },
                        child: Center(
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: defpaultPadding * 0.75),
                            width: 160,
                            child: Text(
                              'Sign up'.toUpperCase(),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            );
          }),
    );
  }
}
