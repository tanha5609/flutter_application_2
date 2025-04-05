import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: SimpleButtonApp(),
  ));
}

class SimpleButtonApp extends StatefulWidget {
  const SimpleButtonApp({super.key});

  @override
  State<SimpleButtonApp> createState() => _SimpleButtonAppState();
}

class _SimpleButtonAppState extends State<SimpleButtonApp> {
  String buttonText = 'Waiting for a click...';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fun Button Demo'),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              buttonText,
              style: const TextStyle(
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 25),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  buttonText = 'You clicked me!';
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple,
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 15,
                ),
              ),
              child: const Text(
                'Click Me!',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.pink,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}