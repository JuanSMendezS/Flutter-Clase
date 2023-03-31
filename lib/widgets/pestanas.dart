import 'package:flutter/material.dart';

class Pestanas extends StatelessWidget {
  const Pestanas({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Pestañas"),
            bottom: const TabBar(tabs: [
              Tab(
                icon: Icon(Icons.abc_sharp),
              ),
              Tab(
                icon: Icon(Icons.access_alarm),
              ),
              Tab(
                icon: Icon(Icons.access_time),
              )
            ]),
          ),
          body: TabBarView(children: [
            Container(
              padding: const EdgeInsets.all(4),
              child: const Icon(Icons.abc_sharp),
            ),
            const Icon(Icons.access_alarm),
            const Icon(Icons.access_time),
          ]),
        ));
  }
}
