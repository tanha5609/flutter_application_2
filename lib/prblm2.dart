import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Button Press',
      home: const HomeScreen(),
    );
  }
}


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Button Press Example')),
      body: const Center(child: MyButton()),
    );
  }
}
class MyButton extends StatefulWidget {
  const MyButton({super.key});

  @override
  State<MyButton> createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  String buttonText = 'Before Button Pressed';

  void onButtonPressed() {
    setState(() {
      buttonText = 'Button Pressed';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(buttonText),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: onButtonPressed,
          style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
          child: const Text(
            'Press Me',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.pink,
            ),
          ),
        ),
      ],
    );
  }
}
