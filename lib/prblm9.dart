import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom Card App',
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  final List<Map<String, String>> items = [
    {
      'image':
          'https://images.unsplash.com/photo-1563589173312-476d8c36b242?q=80&w=2030&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'title': 'Ice Cream',
      'subtitle': 'Cone Ice cream is yummy',
      'description': 'Best Ice cream for your summar',
    },
    {
      'image':
          'https://images.unsplash.com/photo-1597249536924-b226b1a1259d?q=80&w=1972&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'title': 'Bowl Ice cream',
      'subtitle': 'Amount will blow your mind',
      'description': 'This is the description for Bowl Ice cream.',
    },
    {
      'image':
          'https://images.unsplash.com/photo-1633933037611-f26e54366832?q=80&w=1964&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'title': 'Ice lolly Ice Cream',
      'subtitle': 'Perfect for sunny weather',
      'description': 'This is the description for Ice lolly Ice cream',
    },
    {
      'image':
          'https://images.unsplash.com/photo-1605690958425-0a7dae081dd8?q=80&w=2080&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'title': 'Coffe',
      'subtitle': 'Good for concentration',
      'description': 'This is the description for Coffe',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Food List'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 200, 90, 50),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: items.length,
        itemBuilder: (context, index) {
          return CustomCard(
            image: items[index]['image']!,
            title: items[index]['title']!,
            subtitle: items[index]['subtitle']!,
            description: items[index]['description']!,
          );
        },
      ),
    );
  }
}

class CustomCard extends StatefulWidget {
  final String image;
  final String title;
  final String subtitle;
  final String description;

  const CustomCard({
    required this.image,
    required this.title,
    required this.subtitle,
    required this.description,
    super.key,
  });

  @override
  _CustomCardState createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: GestureDetector(
        onTap: () {},
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          margin: const EdgeInsets.only(bottom: 16),
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 245, 235, 220),
            borderRadius: BorderRadius.circular(8),
            boxShadow: _isHovered
                ? [
                    const BoxShadow(
                      color: Color.fromARGB(80, 50, 30, 20),
                      blurRadius: 10,
                      offset: Offset(0, 4),
                    ),
                  ]
                : [
                    const BoxShadow(
                      color: Color.fromARGB(50, 50, 30, 20),
                      blurRadius: 4,
                      offset: Offset(0, 2),
                    ),
                  ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  widget.image,
                  height: 150,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                widget.title,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 80, 40, 20),
                ),
              ),
              const SizedBox(height: 8),
              Text(
                widget.subtitle,
                style: const TextStyle(
                  fontSize: 16,
                  color: Color.fromARGB(255, 120, 80, 60),
                ),
              ),
              const SizedBox(height: 8),
              Text(
                widget.description,
                style: const TextStyle(
                  fontSize: 14,
                  color: Color.fromARGB(255, 100, 60, 40),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}