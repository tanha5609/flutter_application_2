import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text Styling Demo',
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: TextStylingExample(),
    );
  }
}

class TextStylingExample extends StatelessWidget {
  const TextStylingExample({super.key});

  @override
  Widget build(BuildContext context) {
    const double spacing = 10.0;
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text Styling Demo'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Hello, Flutter!',
              style: TextStyle(
                fontSize: 24,
                color: Colors.lime,
              ),
            ),
            SizedBox(height: spacing),
            Text(
              'This is a simple text widget.',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: spacing),
            Text(
              'The Third Example',
              style: TextStyle(color: Colors.orange),
            ),
            SizedBox(height: spacing),
            Text(
              'THIS IS ALL CAPS',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.pink,
              ),
            ),
            SizedBox(height: spacing),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Row : ',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                Text(
                  'Styled ',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.teal,
                  ),
                ),
                Text(
                  'Text',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: spacing),
            Text(
              'This is a text with a custom font',
              style: GoogleFonts.alegreyaSc(
                textStyle: TextStyle(
                  color: Colors.green,
                  fontSize: 22,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}