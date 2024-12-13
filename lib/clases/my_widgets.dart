import 'dart:io';
import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  final titulo = "Widgets Flutter";

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    bool isAndroid = Platform.isAndroid;

    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
        appBar: AppBar(
          title: Text(
            titulo,
            style: const TextStyle(
              fontWeight: FontWeight.w900,
            ),
          ),
          centerTitle: true,
          leading: const Row(
            children: [
              Icon(Icons.menu),
            ],
          ),
          actions: const [
            FlutterLogo(),
          ],
        ),
        // body: Container(
        //   height: size.height * .5,
        //   color: Colors.blue,
        // ),
        // body: const Column(
        //   children: [
        //     Text("Texto de ejemplo"),
        //     Text(
        //       "Texto de ejemplo",
        //       style: TextStyle(
        //         fontSize: 18,
        //         fontWeight: FontWeight.w900,
        //         letterSpacing: 1,
        //         color: Color(0xFF590DE5),
        //       ),
        //     ),
        //   ],
        // ),
        // body: SizedBox(
        //   width: size.width,
        //   height: size.height,
        //   child: Stack(
        //     children: [
        //       Positioned(
        //         left: 16,
        //         bottom: isAndroid ? 16 : 50,
        //         child: myButtonFloating(),
        //       ),
        //     ],
        //   ),
        // ),
        body: const MisWidgets(),
      ),
    );
  }

// FloatingActionButtonPersonalizado
  Widget myButtonFloating() {
    return FloatingActionButton(
      onPressed: () {},
      child: const Icon(Icons.add),
    );
  }
}

class MisWidgets extends StatelessWidget {
  const MisWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        const Text("Mis widgets basicos"),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Text("ElevatedButton"),
            ),
            const SizedBox(width: 8),
            OutlinedButton(
              onPressed: () {},
              child: const Text("OutlinedButton"),
            ),
            const SizedBox(width: 8),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.headphones),
            ),
            const SizedBox(width: 8),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.headphones),
            ),
          ],
        ),
        Wrap(
          spacing: 8,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Text("ElevatedButton"),
            ),
            OutlinedButton(
              onPressed: () {},
              child: const Text("OutlinedButton"),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.headphones),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.headphones),
            ),
          ],
        ),
        Container(
          color: Colors.yellow,
          width: 200,
          height: 180,
          child: Image.network(
            "https://storage.googleapis.com/cms-storage-bucket/d83012c34a8f88a64e2b.jpg",
            fit: BoxFit.cover,
          ),
        ),
        Container(
          color: Colors.yellow,
          width: 200,
          height: 180,
          child: Image.asset(
            "assets/img/img.jpg",
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 16),
        Center(
          child: InkWell(
            onTap: () => print("Se presiono el boton"),
            child: Container(
              height: 64,
              width: 64,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(16),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black54,
                    offset: Offset(2, 2),
                    blurRadius: 4,
                  ),
                ],
              ),
            ),
          ),
        ),
        Column(
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Text("ElevatedButton"),
            ),
            OutlinedButton(
              onPressed: () {},
              child: const Text("OutlinedButton"),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.headphones),
            ),
          ],
        ),
        const SizedBox(height: 200),
      ],
    );
  }
}
