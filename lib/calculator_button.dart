import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  const CalculatorButton(
      {Key? key,
      required this.label,
      required this.onPress,
      required this.labelColor,
      this.backgroundColor})
      : super(key: key);

  final String label;
  final VoidCallback onPress;
  final Color labelColor;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 80,
        height: 80,
        color: Colors.red,
        padding: const EdgeInsets.all(8),
        alignment: Alignment.center,
        child: InkWell(
          onTap: onPress,
          child: Text(
            label,
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ));
  }
}
