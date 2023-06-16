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
    return Container();
  }
}
