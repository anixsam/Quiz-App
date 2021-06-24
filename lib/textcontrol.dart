import 'package:assignment1/text.dart';
import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {
  final VoidCallback changeText;
  final String buttonText;
  TextControl(this.changeText, this.buttonText);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        child: Text(buttonText),
        onPressed: changeText,
      ),
    );
  }
}
