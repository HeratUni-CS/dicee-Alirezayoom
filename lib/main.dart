import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MyDiceeApp(),
  );
}

class MyDiceeApp extends StatelessWidget {
  const MyDiceeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text("Dicee"),
          backgroundColor: Colors.grey.shade900,
        ),
        body: const DicePage(),
      ),
    );
  }
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 5;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextButton(
            onPressed: () {
              setState(() {
                leftDiceNumber = Random().nextInt(6) + 1;
              });
            },
            child: Image.asset("images/dice$leftDiceNumber.png"),
          ),
        ),
        Expanded(
          child: TextButton(
            onPressed: () {
              print('right');
            },
            child: Image.asset("images/dice1.png"),
          ),
        ),
      ],
    );
  }
}
