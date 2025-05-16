import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Color(0xff7886C7),
      appBar: AppBar(
        backgroundColor: Color(0xff2D336B),
        title: Text(
          'Dicee',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
          ),
        ),
      ),
      body: DicePage(),
    ),
  ));
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {

  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void diceNumberChange(){
    setState((){
      leftDiceNumber = Random().nextInt(6)+1;
      rightDiceNumber = Random().nextInt(6)+1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children:[
          SizedBox(
            width:8.0
          ),
          Expanded(
            child: GestureDetector(
              onTap: diceNumberChange,
              child: Image.asset('images/dice$leftDiceNumber.png'),
            )
          ),
          SizedBox(
              width:16.0
          ),
          Expanded(
              child: GestureDetector(
                onTap: diceNumberChange,
                child: Image.asset('images/dice$rightDiceNumber.png'),
              )
          ),
          SizedBox(
              width:8.0
          ),
        ]
      ),
    );
  }
}
