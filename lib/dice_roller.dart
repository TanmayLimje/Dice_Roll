import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDice = 2;

  void rollDice() {
    setState(() {
      currentDice = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDice.png',
          width: 170,
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
                // padding: const EdgeInsets.only(
                //   top: 30,
                // ),
                foregroundColor: Colors.black,
                //backgroundColor: Colors.amberAccent,
                textStyle: const TextStyle(
                  // color: Colors.black,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                )),
            child: const Text("Roll Dice"))
      ],
    );
  }
}
