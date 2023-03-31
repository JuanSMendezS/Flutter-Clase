import 'package:flutter/material.dart';

class Parametros extends StatefulWidget {
  const Parametros({super.key});

  @override
  State<Parametros> createState() => _ParametrosState();
}

class _ParametrosState extends State<Parametros> {
  @override
  Widget build(BuildContext context) {
    Map arguments = ModalRoute.of(context)?.settings.arguments as Map;
    return Scaffold(
      appBar: AppBar(
        title: Text("${arguments['estado']}"),
      ),
      body: Center(
        child: Text("Valor Recuperado: ${arguments['mensaje']}"),
      ),
    );
  }
}
