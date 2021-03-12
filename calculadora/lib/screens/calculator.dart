
import 'package:flutter/material.dart';

class Calculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Column(
        children: <widget>[
          Text('Display'),
          Text('Keyboard'),
        ],
      ),
    );
  }
}


