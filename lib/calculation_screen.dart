import 'package:flutter/material.dart';

class CalculationScreen extends StatelessWidget {
  const CalculationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
        Text(
          '11+27',
          style: TextStyle(fontSize: 32,
              color: Colors.white70,
              fontWeight: FontWeight.w300),
        ),
        //SizedBox(height:10),
        Text(
          '38',
          style: TextStyle(fontSize: 48,
          fontWeight: FontWeight.w500),
        ),
         SizedBox(height: 10,)
      ],
    );
  }
}
Widget buildButtons()=> Container(

);
