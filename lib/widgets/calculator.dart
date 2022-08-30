import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {

  final String text;
  final int fillColor;
  final int textColor;
  final double textSize;

  final Function callback;

  const CalculatorButton ({
    required this.text,
    required this.fillColor,
    required this.callback,
    required this.textColor,
    required this.textSize,
});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: SizedBox(
        width: 70,
        height: 70,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Color(fillColor),
              textStyle: TextStyle(
                fontSize: textSize,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              )
          ),
          child: Text("${text}", style: TextStyle(color: Color(textColor))),
          onPressed: () => callback(text),
        ),
      ),
    );
  }
}