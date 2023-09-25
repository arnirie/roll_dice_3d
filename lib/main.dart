import 'package:flutter/material.dart';
import 'package:roll_dice_3d/screens/rolldice.dart';

void main() {
  runApp(RollDiceApp());
}

//app widget -> statelesswidget
class RollDiceApp extends StatelessWidget {
  const RollDiceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RollDice_Screen(),
    );
  }
}
