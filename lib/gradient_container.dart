import 'package:flutter/material.dart';

import 'package:first_project/dice-roll.dart';

const alignBegin = Alignment.topLeft;
const alignEnd = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  GradientContainer(this.color1, this.color2, {super.key});

  final Color color1;
  final Color color2;

  @override
  Widget build(ctx) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: alignBegin,
          end: alignEnd,
        ),
      ),

      child: Center(child: DiceRoller()),
    );
  }
}
