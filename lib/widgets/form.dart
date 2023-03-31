import 'package:flutter/material.dart';

class Formulario extends StatefulWidget {
  const Formulario({super.key});

  @override
  State<Formulario> createState() => _FormularioState();
}

class _FormularioState extends State<Formulario> {
  String nombres = "";
  String apellidos = "";
  TextEditingController txtNombres = TextEditingController();
  TextEditingController txtApellidos = TextEditingController();
  void capturar() {
    setState(() {
      nombres = txtNombres.text;
      apellidos = txtApellidos.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Formulario")),
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              child: TextField(
                controller: txtNombres,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Nombre",
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              child: TextField(
                controller: txtApellidos,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Apellidos",
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                capturar();
              },
              child: const Text('Aceptar'),
            ),
            Text(nombres),
            Text(apellidos)
          ],
        ));
  }
}
