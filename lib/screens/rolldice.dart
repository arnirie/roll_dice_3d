import 'dart:math';

import 'package:flutter/material.dart';

class RollDice_Screen extends StatefulWidget {
  RollDice_Screen({super.key});

  @override
  State<RollDice_Screen> createState() => _RollDice_ScreenState();
}

class _RollDice_ScreenState extends State<RollDice_Screen> {
  int activeDiceFace = 6;

  List<String> diceImages = [
    'https://upload.wikimedia.org/wikipedia/commons/2/2c/Alea_1.png',
    'https://upload.wikimedia.org/wikipedia/commons/b/b8/Alea_2.png',
    'https://upload.wikimedia.org/wikipedia/commons/2/2f/Alea_3.png',
    'https://upload.wikimedia.org/wikipedia/commons/8/8d/Alea_4.png',
    'https://upload.wikimedia.org/wikipedia/commons/5/55/Alea_5.png',
    'https://upload.wikimedia.org/wikipedia/commons/f/f4/Alea_6.png',
    'https://img.freepik.com/free-vector/two-dices-white-background_1017-9453.jpg?w=740&t=st=1695607186~exp=1695607786~hmac=d500c545fb8db536d37802091ca911d2433e467182925103f59656b7e637e072'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.blue.shade700,
              Colors.purple.shade800,
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'Roll Dice!!!',
                style: TextStyle(
                  fontSize: 32,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              // Image.network(
              //     'https://img.freepik.com/free-vector/two-dices-white-background_1017-9453.jpg?w=740&t=st=1695607186~exp=1695607786~hmac=d500c545fb8db536d37802091ca911d2433e467182925103f59656b7e637e072'),
              Image.network(diceImages[activeDiceFace]),
              TextButton(
                  onPressed: () {
                    print('rolled dice');
                    var randNum = Random().nextInt(6);
                    setState(() {
                      activeDiceFace = randNum;
                    });
                  },
                  child: const Text('ROLL')),
            ],
          ),
        ),
      ),
    );
  }
}
