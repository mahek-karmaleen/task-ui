import 'package:flutter/material.dart';
import 'package:task_ui/first_screen.dart';
import 'package:task_ui/second_screen.dart';
import 'package:task_ui/third_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: const FirstScreen(),
      home: const ThirdScreen(),
      // home: const ThirdScreen(),
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.lightBlue,
          appBarTheme: const AppBarTheme(
              color: Colors.lightBlue, elevation: 0, centerTitle: true)),
    );
  }
}
