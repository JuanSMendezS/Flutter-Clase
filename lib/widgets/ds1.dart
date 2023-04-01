import 'package:flutter/material.dart';

class ds1 extends StatelessWidget {
  const ds1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Desing'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text('Titulo'),
            const Text('Subtitulo'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  color: Colors.amberAccent,
                  child: const Text('Hola'),
                ),
                const Text('Hola 2'),
                const Text('Hola 3'),
              ],
            )
          ],
        ));
  }
}
