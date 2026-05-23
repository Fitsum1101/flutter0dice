import 'dart:math';

import 'package:flutter/material.dart';

final diceCount = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var count = diceCount.nextInt(6) + 1;

  void rollDice() {
    setState(() {
      count = diceCount.nextInt(6) + 1;
    });
  }

  @override
  Widget build(ctx) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/images/dice-$count.png', width: 200),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            padding: EdgeInsets.only(top: 20),
            foregroundColor: Colors.white,
            textStyle: TextStyle(fontSize: 28),
          ),
          child: Text('Roll Dice'),
        ),
      ],
    );
  }
}
