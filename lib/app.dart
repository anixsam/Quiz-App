import 'package:assignment1/text.dart';
import 'package:flutter/material.dart';

import './textcontrol.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  var _textIndex = 0;

  var defaultText = [
    "Default Text",
    "Text Changed",
    "Text Changed Again",
    "Changed Again"
  ];

  _changeText() {
    setState(() {
      _textIndex++;
    });
  }

  resetText() {
    setState(() {
      _textIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Flutter Assignment"),
      ),
      body: _textIndex < 4
          ? Container(
              child: Column(
              children: [
                TextDisplay(defaultText[_textIndex]),
                TextControl(_changeText, "Change Text"),
              ],
            ))
          : Column(
              children: [
                TextDisplay("Last Change"),
                TextControl(resetText, "Change Text")
              ],
            ),
    ));
  }
}
