import 'package:flutter/material.dart';
import 'package:flutter_dapp/pages/home.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Home(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: Colors.deepPurple,
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                const Color.fromARGB(255, 93, 0, 255),
              ),
            ),
          ),
          appBarTheme: const AppBarTheme(elevation: 0)),
    );
  }
}
