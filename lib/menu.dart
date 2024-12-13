import 'package:flutter/material.dart';
import 'package:mi_primera_app/gestor-habitos/home_hab.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(32),
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomeHabitosPage(),
                    ),
                  );
                },
                child: const Text('Gestor de Habitos'))
          ],
        ),
      ),
    );
  }
}
