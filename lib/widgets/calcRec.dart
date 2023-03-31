import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int valor = 0;
  String op = "";
  TextEditingController txtLado = TextEditingController();
  TextEditingController txtAltura = TextEditingController();
  void calcular() {
    setState(() {
      valor = int.parse(txtLado.text) * int.parse(txtAltura.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Calcular area de Rectangulo")),
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              child: TextField(
                controller: txtLado,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Lado",
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              child: TextField(
                controller: txtAltura,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Altura",
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  const Text("Que deseas calcular?"),
                  const Divider(),
                  RadioListTile(
                    title: const Text("Area"),
                    value: "Masculino",
                    groupValue: op,
                    onChanged: (value) {
                      setState(() {
                        op = value.toString();
                      });
                    },
                    activeColor: Color.fromARGB(184, 33, 5, 191),
                  ),
                  RadioListTile(
                    title: const Text("Femenino"),
                    value: "Femenino",
                    groupValue: op,
                    onChanged: (value) {
                      setState(() {
                        op = value.toString();
                      });
                    },
                    activeColor: Color.fromARGB(186, 212, 9, 222),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                calcular();
              },
              child: const Text('Calcular'),
            ),
          ],
        ));
  }
}
