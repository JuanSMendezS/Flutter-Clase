import 'package:flutter/material.dart';

class CajaTexto extends StatelessWidget {
  const CajaTexto({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title: const Text("Caja de texto"),
      ),
      body: const Center(
        child: TextField(
          decoration:  InputDecoration(
            border: OutlineInputBorder(),
            labelText: "Nombres"
          ),
        ),
      )
    );
  }
}