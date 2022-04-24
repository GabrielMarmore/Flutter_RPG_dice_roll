// ignore_for_file: prefer_const_constructors, no_logic_in_create_state

import 'package:flutter/material.dart';
import 'dart:math';

class TelaDados extends StatefulWidget {
  TelaDados({Key? key}) : super(key: key);
 
  @override
  roll createState() => roll();
}

class roll extends State<TelaDados> {

  var imageArray = [
    'one.png',
    'two.png',
    'three.png',
    'four.png',
    'five.png',
    'six.png'
  ];
  int randomIntForDiceOne = Random().nextInt(6);
  int randomIntForDiceTwo = Random().nextInt(6);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      appBar: AppBar(
        title: const Text("Rolagem de Dados"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(21, 50, 21, 50),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 60),
              child: Text(
                'A soma é: ' +
                    (randomIntForDiceOne + randomIntForDiceTwo + 2).toString(),
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Image.asset(
                  'images/' + imageArray[randomIntForDiceOne],
                  height: 150,
                  width: 150,
                ),
                Image.asset(
                  'images/' + imageArray[randomIntForDiceTwo],
                  height: 150,
                  width: 150,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 60),
              child: ElevatedButton(
                onPressed: changeImage,
                child: Text('Rolar'),
              ),
            )
          ],
        ),
      ),
    );
  }

  void changeImage() {
    setState(() {
      randomIntForDiceOne = Random().nextInt(6);
      randomIntForDiceTwo = Random().nextInt(6);
    });
  }
}

