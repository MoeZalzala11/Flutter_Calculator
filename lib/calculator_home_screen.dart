import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'calculator_button.dart';

class CalculatorHomePage extends StatefulWidget {
  const CalculatorHomePage({Key? key}) : super(key: key);

  @override
  State<CalculatorHomePage> createState() => _CalculatorHomePageState();
}

class _CalculatorHomePageState extends State<CalculatorHomePage> {
  String firstInput = "";
  String secondInput = "";
  String result = "";
  String operator = "";

  void numberPressed(String clickedNum){
    setState(() {
      if(operator == ''){
        firstInput = firstInput+clickedNum;
      }
      if(kDebugMode){
        print(clickedNum);
      }
    });
  }
  void clearPressed(){
    setState(() {
      firstInput = '';
      secondInput = '';
      result = "";
      operator = "";
      if(kDebugMode){
        print('000');
      }
    });
  }
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
                  children: [
                    Text(
                      firstInput+operator+secondInput,
                      style: const TextStyle(
                          fontSize: 32,
                          color: Colors.white70,
                          fontWeight: FontWeight.w300),
                    ),
                    //SizedBox(height:10),
                    Text(
                      result,
                      style:
                          const TextStyle(fontSize: 48, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
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
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      getCalculatorButton(
                        label: '7',
                        onPress: () {
                          if (kDebugMode) {
                            print('hello');
                          }
                          setState(() {});
                        },
                      ),
                      getCalculatorButton(
                        label: '8',
                        onPress: () {
                          if (kDebugMode) {
                            print('hello');
                          }
                          setState(() {});
                        },
                      ),
                      getCalculatorButton(
                        label: '9',
                        onPress: () {
                          if (kDebugMode) {
                            print('hello');
                          }
                          setState(() {});
                        },
                      ),
                      getCalculatorButton(
                        label: '×',
                        onPress: () {
                          if (kDebugMode) {
                            print('hello');
                          }
                          setState(() {});
                        },
                      ),
                      getCalculatorButton(
                        label: '( )',
                        onPress: () {
                          if (kDebugMode) {
                            print('hello');
                          }
                          setState(() {});
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      getCalculatorButton(
                        label: '4',
                        onPress: () {
                          if (kDebugMode) {
                            print('hello');
                          }
                          setState(() {});
                        },
                      ),
                      getCalculatorButton(
                        label: '5',
                        onPress: () {
                          if (kDebugMode) {
                            print('hello');
                          }
                          setState(() {});
                        },
                      ),
                      getCalculatorButton(
                        label: '6',
                        onPress: () {
                          if (kDebugMode) {
                            print('hello');
                          }
                          setState(() {});
                        },
                      ),
                      getCalculatorButton(
                        label: '-',
                        onPress: () {
                          if (kDebugMode) {
                            print('hello');
                          }
                          setState(() {});
                        },
                      ),
                      getCalculatorButton(
                        label: '/',
                        onPress: () {
                          if (kDebugMode) {
                            print('hello');
                          }
                          setState(() {});
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      getCalculatorButton(
                        label: '1',
                        onPress: () {
                          if (kDebugMode) {
                            print('hello');
                          }
                          setState(() {});
                        },
                      ),
                      getCalculatorButton(
                        label: '2',
                        onPress: () {
                          if (kDebugMode) {
                            print('hello');
                          }
                          setState(() {});
                        },
                      ),
                      getCalculatorButton(
                        label: '3',
                        onPress: () {
                          if (kDebugMode) {
                            print('hello');
                          }
                          setState(() {});
                        },
                      ),
                      getCalculatorButton(
                        label: '+',
                        onPress: () {
                          if (kDebugMode) {
                            print('hello');
                          }
                          setState(() {});
                        },
                      ),
                      getCalculatorButton(
                        label: '%',
                        onPress: () {
                          if (kDebugMode) {
                            print('hello');
                          }
                          setState(() {});
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      getCalculatorButton(
                        label: 'C',
                        onPress: () {
                          clearPressed();
                        },
                      ),
                      getCalculatorButton(
                        label: '0',
                        onPress: () {
                          if (kDebugMode) {
                            print('hello');
                          }
                          setState(() {});
                        },
                      ),
                      getCalculatorButton(
                        label: '.',
                        onPress: () {
                          if (kDebugMode) {
                            print('hello');
                          }
                          setState(() {});
                        },
                      ),
                      getCalculatorButton(
                        label: '=',
                        width: 132,
                        height: 64,
                        backgroundColor: Colors.redAccent,
                        onPress: () {
                          if (kDebugMode) {
                            print('hello');
                          }
                          setState(() {});
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget getCalculatorButton({
    required String label,
    required VoidCallback onPress,
    Color backgroundColor = const Color((0xff23252D)),
    double width = 72,
    double height = 96,
  }) {
    return CalculatorButton(
        label: label,
        onPress: onPress,
        backgroundColor: backgroundColor,
        width: width,
        height: height);
  }
}
