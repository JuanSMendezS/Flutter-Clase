import 'package:flutter/material.dart';

class chBox extends StatefulWidget {
  const chBox({super.key});

  @override
  State<chBox> createState() => _chBoxState();
}

class _chBoxState extends State<chBox> {
  String texto = "Acepto terminos y condiciones";
  bool estado = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Checkbox"),
        ),
        body: Row(
          children: [
            Center(
                child: Checkbox(
                    value: estado,
                    onChanged: ((value) {
                      setState(() {
                        estado = !estado;
                        if (estado) {
                        } else {}
                      });
                    })))
          ],
        ));
  }
}
