import 'package:flutter/material.dart';
import 'package:dice_roll/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        //backgroundColor: Color.fromARGB(255, 233, 211, 43),
        body: GradientContainer(
          Color.fromARGB(255, 223, 19, 19),
          Color.fromARGB(255, 228, 222, 36),
        ),
      ),
    ),
  );
}
