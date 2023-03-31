import 'package:flutter/material.dart';

class Calcular extends StatefulWidget {
  const Calcular({super.key});

  @override
  State<Calcular> createState() => _CalcularState();
}

class _CalcularState extends State<Calcular> {
  int valor = 0;
  TextEditingController txtCantidad = TextEditingController();
  TextEditingController txtPrecio = TextEditingController();
  bool estado = false;
  String texto = "Aplicar descuento";
  double newValue = 0.0;
  // void calcularTotal() {
  //   setState(() {
  //     valor = int.parse(txtCantidad.text) * int.parse(txtPrecio.text);
  //   });
  // }

  void descuento() {
    if (estado) {
      setState(() {
        valor = (int.parse(txtCantidad.text) * int.parse(txtPrecio.text));
        newValue = valor * .9;
      });
    } else {
      setState(() {
        newValue = (int.parse(txtCantidad.text) * int.parse(txtPrecio.text))
            .toDouble();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Formulario")),
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              child: TextField(
                controller: txtCantidad,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Cantidad",
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              child: TextField(
                controller: txtPrecio,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Precio",
                ),
              ),
            ),
            Row(children: [
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
            ]),
            Text(texto),
            ElevatedButton(
              onPressed: () {
                descuento();
              },
              child: const Text('Calcular'),
            ),
            Text("El total a pagar $newValue")
          ],
        ));
  }
}
