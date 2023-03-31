import 'package:flutter/material.dart';

class Etiquetas extends StatelessWidget {
  const Etiquetas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: const Text("Mi primera app Flutter"),
       ),
       body: const Center(
         child: Text("Hola Mundo",
                  style: TextStyle(
                    color: Colors.lightBlue,
                    fontSize: 30,
                    letterSpacing: 8
                  ),
                ),
       ) ,
    );
  }
}