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
                Navigator.popAndPushNamed(context, '/Alertas');
              },
              child: const Text("Alertas")),
          ElevatedButton(
              onPressed: () {
                Navigator.popAndPushNamed(context, '/Pestanas');
              },
              child: const Text("Pestañas")),
          ElevatedButton(
              onPressed: () {
                Navigator.popAndPushNamed(context, '/Parametros',
                    arguments: {'mensaje: Hola mundo', 'estado: activo'});
              },
              child: const Text("Parametros"))
        ],
      ),
    );
  }
}
