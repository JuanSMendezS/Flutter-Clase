import 'package:flutter/material.dart';

class Images extends StatelessWidget {
  const Images({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Imagenes"),
      ),
      body: ListView(children: [
        Image.asset("assets/images/kh1.png"),
        Image.asset("assets/images/kh2.png"),
      ]),
    );
  }
}
