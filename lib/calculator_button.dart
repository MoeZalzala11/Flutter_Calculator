import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  const CalculatorButton(
      {Key? key,
      required this.label,
      required this.onPress,
      this.backgroundColor,
      required this.width,
      required this.height})
      : super(key: key);

  final String label;
  final VoidCallback onPress;
  final Color? backgroundColor;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      color: backgroundColor,
      child: ConstrainedBox(
        constraints: BoxConstraints(maxHeight: height, maxWidth: width),
        child: TextButton(
          onPressed: onPress,
          child: Text(
            label,
            style: const TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
