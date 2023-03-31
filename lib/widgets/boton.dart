import 'package:flutter/material.dart';

class Boton extends StatefulWidget {
  const Boton({super.key});

  @override
  State<Boton> createState() => _BotonState();
}

class _BotonState extends State<Boton> {
  int cnt = 0;

  void incrementar(){
     setState(() {
       cnt++;
     });
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
       appBar: AppBar(
         title: const Text("Boton + Contador"),
       ),
       body: Center(
          child: ElevatedButton(
            onPressed: (){
              incrementar();
            },
            child: Text("Hola $cnt", style: const TextStyle(
                    color: Color.fromARGB(255, 8, 8, 8),
                    fontSize: 30,
                    letterSpacing: 8
                  ),),
          ),
       )
    );
  }
}


