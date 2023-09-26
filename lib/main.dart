import 'package:dice_roll/gradient_container.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: GradientContainer(
          grColor1: Colors.deepPurple,
          grColor2: Colors.deepPurpleAccent,
        ),
      ),
    ),
  );
}
