import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  final titulo = "Widgets Flutter";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print("Floating Action Button Pressed!");
          },
          child: const Icon(Icons.add),
        ),
        appBar: AppBar(
            title: Text(titulo),
            centerTitle: true,
            leading: const Icon(Icons.arrow_back)),
      ),
    );
  }
}
