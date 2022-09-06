import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'calculation_screen.dart';
import 'calculator_button.dart';

class CalculatorHomePage extends StatefulWidget {
  const CalculatorHomePage({Key? key}) : super(key: key);

  @override
  State<CalculatorHomePage> createState() => _CalculatorHomePageState();
}

class _CalculatorHomePageState extends State<CalculatorHomePage> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
              flex: 1,
              child: Container(
                padding: const EdgeInsets.fromLTRB(16, 8, 0, 0),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Text(
                      '11+27',
                      style: TextStyle(
                          fontSize: 32,
                          color: Colors.white70,
                          fontWeight: FontWeight.w300),
                    ),
                    //SizedBox(height:10),
                    Text(
                      '38',
                      style:
                          TextStyle(fontSize: 48, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 10,
                    )
                  ],
                ),
              )),
          Expanded(
            flex: 2,
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.fromLTRB(8, 24, 8, 24),
              color: const Color(0xff23252D),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CalculatorButton(
                        labelColor: Colors.white,
                        label: '7',
                        onPress: () {
                          if (kDebugMode) {
                            print('hello');
                          }
                          setState(() {});
                        },
                      ),
                      CalculatorButton(
                        labelColor: Colors.white,
                        label: '8',
                        onPress: () {
                          if (kDebugMode) {
                            print('hello');
                          }
                          setState(() {});
                        },
                      ),
                      CalculatorButton(
                        labelColor: Colors.white,
                        label: '9',
                        onPress: () {
                          if (kDebugMode) {
                            print('hello');
                          }
                          setState(() {});
                        },
                      ),
                      CalculatorButton(
                        labelColor: Colors.white,
                        label: 'x',
                        onPress: () {
                          if (kDebugMode) {
                            print('hello');
                          }
                          setState(() {});
                        },
                      ),
                    ],
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CalculatorButton(
                        labelColor: Colors.white,
                        label: '7',
                        onPress: () {
                          if (kDebugMode) {
                            print('hello');
                          }
                          setState(() {});
                        },
                      ),
                      CalculatorButton(
                        labelColor: Colors.white,
                        label: '8',
                        onPress: () {
                          if (kDebugMode) {
                            print('hello');
                          }
                          setState(() {});
                        },
                      ),
                      CalculatorButton(
                        labelColor: Colors.white,
                        label: '9',
                        onPress: () {
                          if (kDebugMode) {
                            print('hello');
                          }
                          setState(() {});
                        },
                      ),
                      CalculatorButton(
                        labelColor: Colors.white,
                        label: 'x',
                        onPress: () {
                          if (kDebugMode) {
                            print('hello');
                          }
                          setState(() {});
                        },
                      ),
                    ],),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CalculatorButton(
                        labelColor: Colors.white,
                        label: '7',
                        onPress: () {
                          if (kDebugMode) {
                            print('hello');
                          }
                          setState(() {});
                        },
                      ),
                      CalculatorButton(
                        labelColor: Colors.white,
                        label: '8',
                        onPress: () {
                          if (kDebugMode) {
                            print('hello');
                          }
                          setState(() {});
                        },
                      ),
                      CalculatorButton(
                        labelColor: Colors.white,
                        label: '9',
                        onPress: () {
                          if (kDebugMode) {
                            print('hello');
                          }
                          setState(() {});
                        },
                      ),
                      CalculatorButton(
                        labelColor: Colors.white,
                        label: 'x',
                        onPress: () {
                          if (kDebugMode) {
                            print('hello');
                          }
                          setState(() {});
                        },
                      ),
                    ],),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CalculatorButton(
                        labelColor: Colors.white,
                        label: '7',
                        onPress: () {
                          if (kDebugMode) {
                            print('hello');
                          }
                          setState(() {});
                        },
                      ),
                      CalculatorButton(
                        labelColor: Colors.white,
                        label: '8',
                        onPress: () {
                          if (kDebugMode) {
                            print('hello');
                          }
                          setState(() {});
                        },
                      ),
                      CalculatorButton(
                        labelColor: Colors.white,
                        label: '9',
                        onPress: () {
                          if (kDebugMode) {
                            print('hello');
                          }
                          setState(() {});
                        },
                      ),
                      CalculatorButton(
                        labelColor: Colors.white,
                        label: 'x',
                        onPress: () {
                          if (kDebugMode) {
                            print('hello');
                          }
                          setState(() {});
                        },
                      ),
                    ],),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
