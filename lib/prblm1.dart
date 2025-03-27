import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey[50],
        body: Center(
          child: Text(
            'Hello World!',
            style: TextStyle(
              fontFamily: 'Pacifico',
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Color(0xFF673AB7),
            ),
          ),
        ),
      ),
    );
  }
}