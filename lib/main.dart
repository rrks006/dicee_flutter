import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Center(
        child: Row(
          children: [
            Expanded(
              child: ElevatedButton(
                child: Image.asset("images/dice$leftDiceNumber.png"),
                onPressed: (){
                  changeDiceNumbersAndSetState();
                },
              ),
            ),
            Expanded(
                child: ElevatedButton(
                  child: Image.asset("images/dice$rightDiceNumber.png"),
                  onPressed: (){
                    changeDiceNumbersAndSetState();
                  },
                )
            ),
          ],
        ),
      ),
    );
  }

  void changeDiceNumbersAndSetState() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }
}

