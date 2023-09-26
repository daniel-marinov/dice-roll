import 'dart:math';
import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = 'assets/images/dice-1.png';
  var currentDiceRoll = 1;

  void rollDice() {
    currentDiceRoll = Random().nextInt(6) + 1;
    setState(() {
      activeDiceImage = 'assets/images/dice-$currentDiceRoll.png';
    });
    print('Dice rolled: $currentDiceRoll');
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          activeDiceImage,
          width: 200,
          height: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        ElevatedButton(
          onPressed: rollDice,
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(
              Colors.white,
            ),
            foregroundColor: MaterialStateProperty.all<Color>(
              Colors.deepPurple,
            ),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              ),
            ),
          ),
          child: const Text(
            'Roll Dice',
          ),
        ),
      ],
    );
  }
}
