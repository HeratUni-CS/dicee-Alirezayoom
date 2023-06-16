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

class DicePage extends StatelessWidget {
  const DicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextButton(
            onPressed: () {
              print("left");
            },
            child: Image.asset("images/dice1.png"),
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
