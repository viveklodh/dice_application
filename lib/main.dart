import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int index = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Dice Application"),
          ),
          body: Center(
            child: InkWell(
              onTap: () {
                setState(() {
                  index = Random().nextInt(5) + 1;
                });
              },
              child: Image.asset(
                "dice/dice$index.png",
                width: 200,
                height: 200,
              ),
            ),
          )),
    );
  }
}
