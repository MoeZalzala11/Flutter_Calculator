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

  void numberPressed(String clickedNum) {
    setState(() {
      if (operator == '') {
        firstInput = firstInput + clickedNum;
      } else {
        secondInput = secondInput + clickedNum;
      }
      if (kDebugMode) {
        print(clickedNum);
      }
    });
  }

  void onBackSpacePressed(String clickedBackSpace) {
    setState(() {
      if (secondInput != '') {
        secondInput = secondInput.substring(0, secondInput.length - 1);
      } else if (operator != '') {
        operator = '';
      } else {
        firstInput = firstInput.substring(0, firstInput.length - 1);
      }
      if (kDebugMode) {
        print(clickedBackSpace);
      }
    });
  }

  void clearPressed(String clickedClearButton) {
    setState(() {
      firstInput = '';
      secondInput = '';
      result = "";
      operator = "";
      if (kDebugMode) {
        print(clickedClearButton);
      }
    });
  }

  void operatorPressed(String clickedOperator) {
    setState(() {
      if (firstInput == '') {
        firstInput = '0';
        operator = clickedOperator;
      } else if (operator == '') {
        operator = clickedOperator;
      } else if (operator != clickedOperator) {
        operator = clickedOperator;
      } else {
        equalPressed(clickedOperator);
      }
    });
  }

  void equalPressed(String equalButton) {
    setState(() {
      if (operator == '+') {
        result = ('${int.parse(firstInput) + int.parse(secondInput)}');
        firstInput = result;
        secondInput = '';
        operator = '';
      } else if (operator == '-') {
        result = ('${int.parse(firstInput) - int.parse(secondInput)}');
        firstInput = result;
        secondInput = '';
        operator = '';
      } else if (operator == '×') {
        result = ('${int.parse(firstInput) * int.parse(secondInput)}');
        firstInput = result;
        secondInput = '';
        operator = '';
      } else if (operator == '/') {
        result = ('${int.parse(firstInput) / int.parse(secondInput)}');
        firstInput = result;
        secondInput = '';
        operator = '';
      } else if (operator == '%') {
        result = ('${int.parse(firstInput) % int.parse(secondInput)}');
        firstInput = result;
        secondInput = '';
        operator = '';
      }
      if (kDebugMode) {
        print(operator);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
              flex: 1,
              child: Container(
                padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      firstInput + operator + secondInput,
                      style: TextStyle(
                          fontSize:
                              24 * MediaQuery.of(context).textScaleFactor,
                          color: Colors.white70,
                          fontWeight: FontWeight.w300),
                    ),
                    Text(
                      result,
                      style: TextStyle(
                          fontSize:
                              32 * MediaQuery.of(context).textScaleFactor,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              )),
          Expanded(
            flex: 2,
            child: Container(
              color: const Color(0xff23252D),
              width: MediaQuery.of(context).size.width,
              child: IntrinsicWidth(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          getCalculatorButton(
                            label: '7',
                            onPress: numberPressed,
                            onLongPress: () {},
                          ),
                          getCalculatorButton(
                            label: '8',
                            onPress: numberPressed,
                            onLongPress: () {},
                          ),
                          getCalculatorButton(
                            label: '9',
                            onPress: numberPressed,
                            onLongPress: () {},
                          ),
                          getCalculatorButton(
                            label: '×',
                            onPress: operatorPressed,
                            onLongPress: () {},
                          ),
                          getCalculatorButton(
                            label: 'C',
                            onPress: clearPressed,
                            onLongPress: () {},
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          getCalculatorButton(
                            label: '4',
                            onPress: numberPressed,
                            onLongPress: () {},
                          ),
                          getCalculatorButton(
                            label: '5',
                            onPress: numberPressed,
                            onLongPress: () {},
                          ),
                          getCalculatorButton(
                            label: '6',
                            onPress: numberPressed,
                            onLongPress: () {},
                          ),
                          getCalculatorButton(
                            label: '-',
                            onPress: operatorPressed,
                            onLongPress: () {},
                          ),
                          getCalculatorButton(
                            label: '/',
                            onPress: operatorPressed,
                            onLongPress: () {},
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          getCalculatorButton(
                            label: '1',
                            onPress: numberPressed,
                            onLongPress: () {},
                          ),
                          getCalculatorButton(
                            label: '2',
                            onPress: numberPressed,
                            onLongPress: () {},
                          ),
                          getCalculatorButton(
                            label: '3',
                            onPress: numberPressed,
                            onLongPress: () {},
                          ),
                          getCalculatorButton(
                            label: '+',
                            onPress: operatorPressed,
                            onLongPress: () {},
                          ),
                          getCalculatorButton(
                            label: '%',
                            onPress: operatorPressed,
                            onLongPress: () {},
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          getCalculatorButton(
                            label: '⌫ ',
                            onPress: onBackSpacePressed,
                            onLongPress: () {},
                          ),
                          getCalculatorButton(
                            label: '0',
                            onPress: numberPressed,
                            onLongPress: () {},
                          ),
                          getCalculatorButton(
                            label: '.',
                            onPress: () {
                              if (kDebugMode) {
                                print('hello');
                              }
                              setState(() {});
                            },
                            onLongPress: () {},
                          ),
                          getCalculatorButton(
                            label: '=',
                            width: 132,
                            height: 64,
                            backgroundColor: Colors.redAccent,
                            onPress: equalPressed,
                            onLongPress: () {},
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget getCalculatorButton({
    required String label,
    required Function onPress,
    required Function onLongPress,
    Color backgroundColor = const Color((0xff23252D)),
    double width = 72,
    double height = 96,
  }) {
    return CalculatorButton(
        label: label,
        onPress: onPress,
        onLongPress: onLongPress,
        backgroundColor: backgroundColor,
        width: width,
        height: height);
  }
}
