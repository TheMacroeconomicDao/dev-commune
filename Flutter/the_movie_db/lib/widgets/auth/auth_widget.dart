import 'package:flutter/material.dart';
import 'package:the_movie_db/Theme/app_button_style.dart';

class AuthWidget extends StatefulWidget {
  const AuthWidget({super.key});

  @override
  State<AuthWidget> createState() => _AuthWidgetState();
}

class _AuthWidgetState extends State<AuthWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login to Your Accaunt'),
      ),
      body: ListView(
        children: const [
          _HeaderWidget(),
        ],
      ),
    );
  }
}

class _HeaderWidget extends StatelessWidget {
  const _HeaderWidget();

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(fontSize: 25, color: Colors.green);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: const [
          SizedBox(
            height: 25,
          ),
          Text(
            'Welcome the Future',
            style: textStyle,
          ),
          SizedBox(
            height: 25,
          ),
          Text(
            'The Macroeconomic Dao',
            style: textStyle,
          ),
          SizedBox(
            height: 25,
          ),
          _FormWidget(),
        ],
      ),
    );
  }
}

class _FormWidget extends StatefulWidget {
  const _FormWidget();

  @override
  State<_FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<_FormWidget> {
  final _loginTextController = TextEditingController();
  final _passwordTextController = TextEditingController();
  String? errorText;

  void _auth() {
    final login = _loginTextController.text;
    final password = _passwordTextController.text;
    if (login == 'admin' && password == 'admin') {
      errorText = null;

      Navigator.of(context).pushNamed('/main_screen');
    } else {
      errorText = 'Неверный Логин или Пароль';
    }
    setState(() {});
  }

  void _resetPassword() {
    debugPrint('reset password');
  }

  @override
  Widget build(BuildContext context) {
    const inputBorder = InputDecoration(
      border: OutlineInputBorder(),
      contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      isCollapsed: true,
    );

    const textStyle =
        TextStyle(fontSize: 15, color: Color.fromARGB(255, 48, 48, 48));

    const inputColor = Color(0xFF01B4E4);
    final errorText = this.errorText;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (errorText != null) ...[
          Text(
            errorText,
            style: const TextStyle(fontSize: 17, color: Colors.red),
          ),
          const SizedBox(
            height: 20,
          )
        ],
        const Text(
          'User Name',
          style: textStyle,
        ),
        const SizedBox(
          height: 5,
        ),
        TextField(
          controller: _loginTextController,
          decoration: inputBorder,
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
          'Password',
          style: textStyle,
        ),
        const SizedBox(
          height: 5,
        ),
        TextField(
          controller: _passwordTextController,
          decoration: inputBorder,
          obscureText: true,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Row(
            children: [
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(inputColor),
                    foregroundColor: MaterialStateProperty.all(Colors.white),
                    textStyle: MaterialStateProperty.all(const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w500)),
                    padding: MaterialStateProperty.all(
                        const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 8))),
                onPressed: () {
                  _auth();
                },
                child: const Text('Login'),
              ),
              const SizedBox(
                width: 30,
              ),
              TextButton(
                  style: const ButtonStyle(
                      foregroundColor: MaterialStatePropertyAll(inputColor),
                      textStyle: MaterialStatePropertyAll(TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w400))),
                  onPressed: () {
                    _resetPassword();
                  },
                  child: const Text('Reset Password')),
            ],
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        const Text('Or Sign up'),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: TextButton(
              onPressed: () {},
              style: AppButtonStyle.linkButton,
              child: const Text('Register')),
        ),
        const SizedBox(
          height: 25,
        ),
        const Text('If you signed up but didn`t get your verification email '),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: TextButton(
              onPressed: () {},
              style: AppButtonStyle.linkButton,
              child: const Text('Verify email')),
        ),
      ],
    );
  }
}
