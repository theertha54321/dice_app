import 'dart:math';

import 'package:flutter/material.dart';

class DiceScreen extends StatefulWidget {
  const DiceScreen({super.key});

  @override
  State<DiceScreen> createState() => _DiceScreenState();
}

class _DiceScreenState extends State<DiceScreen> {

List dices = [
  "assets/images/d1.png",
  "assets/images/d2.png",
  "assets/images/d3.png",
  "assets/images/d4.png",
  "assets/images/d5.png",
  "assets/images/d6.png",
  "assets/images/d5.png",
  "assets/images/d6.png",
  
];
int? randomNumber;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: (){
            randomNumber = Random().nextInt(6);
            print(randomNumber);
            setState(() {
              
            });
          },
          child: Image.asset(
            height: 200,
            width: 200,
            randomNumber == null? "assets/images/button.png" : dices[randomNumber!]
           
          )
    ),
      ),
    );
  }
}