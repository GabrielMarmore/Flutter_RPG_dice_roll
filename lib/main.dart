// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'dados.dart';
import 'tela_dados.dart';
import 'tela_sobre.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Acerto Crítico',
      theme: ThemeData(primarySwatch: Colors.purple),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Dados d = Dados();
  TextEditingController lados = TextEditingController();
  TextEditingController dados = TextEditingController();
  int dado = 0;
  int quantidade = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Acerto Crítico"),
        centerTitle: true,
      ),
      resizeToAvoidBottomInset: false,
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.purple,
              ),
              child: Text(
                "Acerto Crítico",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text("Inicio"),
              subtitle: const Text("Tela de início"),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.casino),
              title: const Text("Dados"),
              subtitle: const Text("Rolagem rapida"),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TelaDados()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.accessibility_rounded),
              title: const Text("Sobre"),
              subtitle: const Text("Informações sobre a aplicação"),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Sobre()),
                );
              },
            ),
          ],
        ),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
              child: Text(
                "Faça suas rolagens",
                style: TextStyle(fontSize: 24),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TelaDados()),
                    );
                  },
                  child: Text('Rolagem rapida'),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: TextField(
                controller: lados,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: "Quantidade de lados: ", hintText: "20"),
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: TextField(
                controller: dados,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: "Quantidade de dados: ", hintText: "1"),
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      dado = int.parse(lados.text);
                      quantidade = dados.text == ""? 1 : int.parse(dados.text);
                    });
                  },
                  child: Text('Rolar'),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Card(
                child: ListTile(
                  leading: Icon(
                    Icons.casino,
                    color: Colors.white,
                    size: 36.0,
                  ),
                  trailing: Icon(
                    Icons.casino,
                    color: Colors.white,
                    size: 36.0,
                  ),
                  title: Text(
                    'Resultado',
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                  subtitle: Text(
                    d.getDado(dado, quantidade),
                    style: TextStyle(fontSize: 16, color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
                color: Colors.purple,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
