import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          leading: Padding(
            padding: const EdgeInsets.all(8),
            child: Image.network(
              'https://static.vecteezy.com/system/resources/previews/003/589/149/non_2x/mix-icon-for-demo-vector.jpg',
            ),
          ),
          title: const Text(
            'Bloom Studio',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          actions: [
            IconButton(
              icon: const Icon(
                Icons.search,
                color: Colors.white,
              ),
              style: IconButton.styleFrom(
                shape: CircleBorder(),
                backgroundColor: Colors.teal.shade300,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(
                Icons.menu,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
          ],
        ),
        body: const Center(
          child: Text('Welcome!'),
        ),
      ),
    );
  }
}