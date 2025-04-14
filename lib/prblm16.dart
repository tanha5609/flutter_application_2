import 'package:flutter/material.dart';

// Design a simple app where a container changes its size, color, and shape when a button is clicked, using animation.

void main() {
  runApp(ShapeShiftApp());
}

class ShapeShiftApp extends StatelessWidget {
  const ShapeShiftApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DynamicContainerDemo(),
    );
  }
}

class DynamicContainerDemo extends StatefulWidget {
  const DynamicContainerDemo({super.key});

  @override
  DynamicContainerDemoState createState() => DynamicContainerDemoState();
}

class DynamicContainerDemoState extends State<DynamicContainerDemo> {
  bool _isTransformed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dynamic Shape Shifter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: Duration(seconds: 1),
              width: _isTransformed ? 200 : 100,
              height: _isTransformed ? 200 : 100,
              decoration: BoxDecoration(
                color: _isTransformed ? Colors.blue[400] : Colors.red[400],
                borderRadius: BorderRadius.circular(_isTransformed ? 100 : 0),
              ),
              curve: Curves.easeInOut,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _isTransformed = !_isTransformed;
                });
              },
              child: Text('Transform Shape'),
            ),
          ],
        ),
      ),
    );
  }
}