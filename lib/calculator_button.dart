import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  const CalculatorButton(
      {Key? key,
      required this.label,
      required this.onPress,
      this.backgroundColor,
      required this.width,
      required this.height,
      required this.onLongPress})
      : super(key: key);

  final String label;
  final Function onPress;
  final Function onLongPress;
  final Color? backgroundColor;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: height,
      // width: width,
      child: ConstrainedBox(
        constraints: BoxConstraints(minHeight: height, minWidth: width),
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: backgroundColor,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(16))
            )
          ),
          onPressed: () => onPress(label),
          onLongPress: () => onLongPress(label),
          child: Text(
            label,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
