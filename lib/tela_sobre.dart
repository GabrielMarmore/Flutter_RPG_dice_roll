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
        padding: const EdgeInsets.all(3.0),
        alignment: Alignment.center,
        child: Column(
          children: const [
            Padding(
              padding: EdgeInsets.fromLTRB(16, 16, 16, 2),
              child: Text(
                "Componentes do grupo",
                style: TextStyle(fontSize: 24),
              ),
            ),
            Text(
              "DDMI - Projeto P1",
              style: TextStyle(fontSize: 16),
            ),
            Card(
              child: ListTile(
                title: Text(
                  'Gabriel Mármore',
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
                subtitle: Text(
                  "https://github.com/GabrielMarmore",
                  style: TextStyle(fontSize: 14, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
              color: Colors.purple,
            ),
            Card(
              child: ListTile(
                title: Text(
                  'Lucas Celestino',
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
                subtitle: Text(
                  "https://github.com/LucasCelestino",
                  style: TextStyle(fontSize: 14, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
              color: Colors.purple,
            ),
            Card(
              child: ListTile(
                title: Text(
                  'Wilson Iglesias',
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
                subtitle: Text(
                  "https://github.com/WilsonIglesias",
                  style: TextStyle(fontSize: 14, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
              color: Colors.purple,
            ),
          ],
        ),
      ),
    );
  }
}
