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
      title: 'Pasta Snap Gallery',
      theme: ThemeData(primarySwatch: Colors.teal),
      home: ImageGridScreen(),
    );
  }
}

class ImageGridScreen extends StatelessWidget {
  ImageGridScreen({super.key});

  final List<String> imageUrls = [
    'https://media.istockphoto.com/id/1699715253/photo/spicy-asian-style-stir-fried-noodles-mee-goreng-mamak.webp?a=1&b=1&s=612x612&w=0&k=20&c=Uq5cutN9KiyqYZygj1BvYWSxTCS2YP9SvGZRghpVI6Q=',
    'https://media.istockphoto.com/id/688941792/photo/spaghetti-carbonara-on-fork.webp?a=1&b=1&s=612x612&w=0&k=20&c=KNr1kdB4j9ZkPEKdlkk6EvnDa9bchfVG1uEzCSxEoCU=',
    'https://media.istockphoto.com/id/1495698672/photo/prepared-spaghetti-pasta-with-fried-pork-meatballs-in-tomato-sauce-with-parsley-in-frying-pan.jpg?s=612x612&w=0&k=20&c=kjTHjI0EyY78sm7oXvbSnWgvYE7Vbz-__qup6TL6tPM=',
    'https://images.unsplash.com/photo-1621996346565-e3dbc646d9a9?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8cGFzdGF8ZW58MHx8MHx8fDA%3D',
    'https://plus.unsplash.com/premium_photo-1701098716519-5aab40a5ce9f?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cGFzdGElMjBkaXNofGVufDB8fDB8fHww',
    'https://images.unsplash.com/photo-1627286400579-027de47e9e73?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTV8fHRvbWF0byUyMHBhc3RhfGVufDB8fDB8fHww',
    'https://media.istockphoto.com/id/1399179382/photo/traditional-italian-spaghetti-bolognese-on-a-dark-background.jpg?s=612x612&w=0&k=20&c=f3yo8eqzp0_59_0mb28Re503MAyu2SCklN2rWyezDEI=',
    'https://img.freepik.com/premium-photo/italian-spaghetti-bolognese-black-bowl-table-cherry-tomatoes_233226-534.jpg',
    'https://images.unsplash.com/photo-1551892374-ecf8754cf8b0?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fHBhc3RhfGVufDB8fDB8fHww',
    'https://images.ricardocuisine.com/services/recipes/1x1/7260.jpg',
    'https://images.unsplash.com/photo-1515516969-d4008cc6241a?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    'https://plus.unsplash.com/premium_photo-1664478291780-0c67f5fb15e6?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8c3BhZ2hldHRpJTIwYm9sb2duZXNlfGVufDB8fDB8fHww',
    'https://images.unsplash.com/photo-1556761223-4c4282c73f77?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGFzdGF8ZW58MHx8MHx8fDA%3D',
    'https://images.unsplash.com/photo-1563379926898-05f4575a45d8?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fHBhc3RhfGVufDB8fDB8fHww',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pasta Snap Gallery'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 48, 82, 64),
        foregroundColor: const Color.fromARGB(255, 240, 248, 255),
      ),
      body: Padding(
        padding: const EdgeInsets.all(7.5),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 9.0,
            mainAxisSpacing: 9.0,
          ),
          itemCount: imageUrls.length,
          itemBuilder: (context, index) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.network(
                imageUrls[index],
                fit: BoxFit.cover,
              ),
            );
          },
        ),
      ),
    );
  }
}