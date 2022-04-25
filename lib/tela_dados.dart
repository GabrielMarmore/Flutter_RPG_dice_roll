// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'dart:math';

class TelaDados extends StatefulWidget {
  TelaDados({Key? key}) : super(key: key);

  @override
  Roll createState() => Roll();
}

class Roll extends State<TelaDados> {
  var imageArray = [
    'one.png',
    'two.png',
    'three.png',
    'four.png',
    'five.png',
    'six.png'
  ];
  int primeiroDado = Random().nextInt(6);
  int segundoDado = Random().nextInt(6);

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
                'A soma é: ' + (primeiroDado + segundoDado + 2).toString(),
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Image.asset(
                  'images/' + imageArray[primeiroDado],
                  height: 150,
                  width: 150,
                ),
                Image.asset(
                  'images/' + imageArray[segundoDado],
                  height: 150,
                  width: 150,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 60),
              child: ElevatedButton(
                onPressed: changeImage,
                child: Text(
                  'Rolar',
                  style: TextStyle(
                    color: Colors.purple,
                    fontSize: 20,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void changeImage() {
    setState(() {
      primeiroDado = Random().nextInt(6);
      segundoDado = Random().nextInt(6);
    });
  }
}
