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
                child: const CalculationScreen(),
              )),
          Expanded(
            flex: 2,
            child: Container(
              width: double.infinity,

              color: const Color(0xff23252D),
              child: Column(
                children: [CalculatorButton(
                  labelColor: Colors.white,
                  label: '0',
                  onPress: () {
                    if (kDebugMode) {
                      print('hello');
                    }
                    setState(() { });
                  },
                ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
