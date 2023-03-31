import 'package:flutter/material.dart';

class Barra extends StatefulWidget {
  const Barra({super.key});

  @override
  State<Barra> createState() => _BarraState();
}

class _BarraState extends State<Barra> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Computacion Movil"),
        titleSpacing: 0.5,
        centerTitle: true,
        toolbarHeight: 70,
        toolbarOpacity: 0.9,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(5),
                topLeft: Radius.circular(5),
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20))),
        backgroundColor: Colors.amber,
      ),
      body: const Center(
        child: Text("Hola"),
      ),
    );
  }
}
