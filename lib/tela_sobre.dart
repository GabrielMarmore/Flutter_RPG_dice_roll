import 'package:flutter/material.dart';

class Sobre extends StatelessWidget {
  const Sobre({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sobre"),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.grey[850],
        padding: const EdgeInsets.all(3.0),
        alignment: Alignment.center,
        child: Column(
          children: const [
            Text("Sobre a Aplicação"),
          ],
        ),
      ),
    );
  }
}
