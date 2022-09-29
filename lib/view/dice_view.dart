import 'dart:math';

import 'package:flutter/material.dart';

class DiceView extends StatefulWidget {
  const DiceView({Key key}) : super(key: key);

  @override
  _DiceViewState createState() => _DiceViewState();
}

class _DiceViewState extends State<DiceView> {
  void changeNumber() {
    leftNumber = Random().nextInt(6) + 1;
    rightNumber = Random().nextInt(6) + 1;
    setState(() {});
  }

  int leftNumber = 3;
  int rightNumber = 5;

  // 0 + 1 = 1
  // 1 + 1 = 2
  // 2 + 1 = 3
  // 3 + 1 = 4
  // 4 + 1 = 5
  // 5 + 1 = 6
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Тапшырма 06'),
      ),
      body: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(top: 200.0, left: 25),
            child: InkWell(
                onTap: changeNumber,
                child: Image.asset('assets/images/dice$leftNumber.png')),
          ),
        ),
        const SizedBox(
          width: 15,
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(top: 200.0, right: 25),
            child: InkWell(
              onTap: changeNumber,
              child: Image.asset(
                'assets/images/dice$rightNumber.png',
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
