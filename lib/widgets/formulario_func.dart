import 'package:flutter/material.dart';

class Formulario extends StatefulWidget {
  const Formulario({super.key});

  @override
  State<Formulario> createState() => _FormularioState();
}

class _FormularioState extends State<Formulario> {
  TextEditingController tNombres = TextEditingController();
  TextEditingController tApellidos = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Formulario"),
      ),
      body: ListView(
        children: [
          cajas('Digite nombre', tNombres),
          cajas('Digite apellido', tApellidos),
          button()
        ],
      ),
    );
  }

  Widget cajas(String texto, TextEditingController nCaja) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: TextField(
        controller: nCaja,
        decoration: const InputDecoration(
            border: OutlineInputBorder(), label: Text("Digite el nombre")),
      ),
    );
  }

  Widget caja1() {
    return Container(
      padding: const EdgeInsets.all(20),
      child: const TextField(
        decoration: InputDecoration(
            border: OutlineInputBorder(), label: Text("Digite el nombre")),
      ),
    );
  }

  Widget button() {
    return Container(
      padding: const EdgeInsets.all(20),
      child: ElevatedButton(
        onPressed: () {},
        child: const Text('This is a button'),
      ),
    );
  }
}
