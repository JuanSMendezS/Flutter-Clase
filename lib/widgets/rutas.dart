import 'package:flutter/material.dart';

class Rutas extends StatelessWidget {
  const Rutas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Principal"),
      ),
      body: Row(
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.popAndPushNamed(context, '/Images');
              },
              child: const Text("Images")),
          ElevatedButton(
              onPressed: () {
                Navigator.popAndPushNamed(context, '/Formulario');
              },
              child: const Text("Formulario")),
        ],
      ),
    );
  }
}
