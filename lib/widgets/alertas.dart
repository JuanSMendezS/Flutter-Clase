import 'package:flutter/material.dart';

class Alertas extends StatelessWidget {
  const Alertas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Alertas"),
      ),
      body: Center(
          child: ElevatedButton(
              onPressed: () {
                mostrarAlerta(context);
              },
              child: const Text("Aceptar"))),
    );
  }

  mostrarAlerta(BuildContext context) {
    Widget BtnAcpetar = TextButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Text("Cerrar"));
    AlertDialog alerta = AlertDialog(
        title: const Text("Notificación"),
        content: const Text("Bienvenido....."),
        actions: [
          BtnAcpetar,
        ]);
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alerta;
        });
  }
}
