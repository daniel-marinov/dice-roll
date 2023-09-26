// import 'package:dice_roll/styled_text.dart';
import 'package:dice_roll/dice_roller.dart';
import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer(
      {super.key, required this.grColor1, required this.grColor2});

  const GradientContainer.purple({super.key})
      : grColor1 = Colors.deepPurple,
        grColor2 = Colors.deepPurpleAccent;

  final Color grColor1;
  final Color grColor2;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [grColor1, grColor2],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
