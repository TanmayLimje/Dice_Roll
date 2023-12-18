import 'package:dice_roll/dice_roller.dart';
import 'package:flutter/material.dart';

//import 'package:dice_roll/styled_text.dart';

const beginAllignment = Alignment.topLeft;
const endAllignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.c1, this.c2, {super.key});

  final Color c1;
  final Color c2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [c1, c2],
          begin: beginAllignment,
          end: endAllignment,
        ),
      ),
      child: const Center(child: DiceRoller()),
    );
  }
}
