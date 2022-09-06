import 'package:flutter/material.dart';
import 'calculator_home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: const TextTheme(
          headline1: TextStyle(color: Colors.white70),
          headline2: TextStyle(color: Colors.white),
          bodyText2: TextStyle(color: Colors.white),
          subtitle1: TextStyle(color: Colors.white),
        ),
      ),
      home: Scaffold(
        backgroundColor: const Color(0xFF15171C),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color(0xFF15171c),
          title: const Text('Calculator'),
        ),
        body: SafeArea(
          child: Container(
              width: double.infinity, // Code to assign full width
              height: double.infinity,
              child: CalculatorHomePage()),
        ),
      ),
    );
  }
}
