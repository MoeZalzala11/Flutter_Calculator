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
      height: 64,
      width: 64,
      color: backgroundColor,
      child: TextButton(
        onPressed: onPress,
        child: Text(
          label,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
