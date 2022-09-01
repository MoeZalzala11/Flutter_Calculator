import 'package:flutter/material.dart';
import 'calculation_screen.dart';

class CalculatorHomePage extends StatefulWidget {
  const CalculatorHomePage({Key? key}) : super(key: key);

  @override
  State<CalculatorHomePage> createState() => _CalculatorHomePageState();
}

class _CalculatorHomePageState extends State<CalculatorHomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Expanded(
          flex: 1,
            child: Padding(
              padding: EdgeInsets.fromLTRB(16, 8, 0, 0),
              child: CalculationScreen(),
            )),
        Expanded(
          flex: 2,
          child: Container(color: const Color(0xff23252D) //Color(0xff23252D),
              ),
        ),
      ],
    );
  }
}
