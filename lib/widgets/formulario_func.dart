import 'package:flutter/material.dart';

class Formulario extends StatefulWidget {
  const Formulario({super.key});

  @override
  State<Formulario> createState() => _FormularioState();
}

class _FormularioState extends State<Formulario> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Formulario"),
      ),
      body: Column(
        children: [],
      ),
    );
  }

  Widget cajas() {
    return Container(
      padding: const EdgeInsets.all(20),
      child: const TextField(
        decoration: InputDecoration(
            border: OutlineInputBorder(), label: Text("Digite el nombre")),
      ),
    );
  }
}
