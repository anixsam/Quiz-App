import 'package:flutter/material.dart';

import './textcontrol.dart';

class TextDisplay extends StatelessWidget {
  var displayText;

  TextDisplay(this.displayText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Text(
        displayText,
        style: TextStyle(
          color: Colors.blue,
          fontSize: 35,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
