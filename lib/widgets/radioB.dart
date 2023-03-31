import 'package:flutter/material.dart';

class RadioB extends StatefulWidget {
  const RadioB({super.key});

  @override
  State<RadioB> createState() => _RadioBState();
}

class _RadioBState extends State<RadioB> {
  String genero = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Radio Button"),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Text("¿Cual es tu genero?"),
            const Divider(),
            RadioListTile(
              title: const Text("Masculino"),
              value: "Masculino",
              groupValue: genero,
              onChanged: (value) {
                setState(() {
                  genero = value.toString();
                });
              },
              activeColor: Color.fromARGB(184, 33, 5, 191),
            ),
            RadioListTile(
              title: const Text("Femenino"),
              value: "Femenino",
              groupValue: genero,
              onChanged: (value) {
                setState(() {
                  genero = value.toString();
                });
              },
              activeColor: Color.fromARGB(186, 212, 9, 222),
            ),
          ],
        ),
      ),
    );
  }
}
