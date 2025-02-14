import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' show
  BuildContext,
  Color,
  Colors,
  Expanded,
  StatelessWidget,
  Text,
  TextButton,
  TextStyle,
  Widget;

class Button extends StatelessWidget {
  final String textValue;
  final Color buttonColor;
  final int flex;
  final Function setValue;

  const Button(
      this.textValue,
      this.buttonColor,
      this.flex,
      this.setValue,
      {super.key}
  );

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: Container(
        margin: EdgeInsets.all(5),
        child: TextButton(
          onPressed: () => setValue(textValue),
          style: TextButton.styleFrom(
            backgroundColor: buttonColor,
          ),
          child: Text(
            textValue,
            style: TextStyle(
              fontSize: 25,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}