import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

// This widget is the root of your application
  @override
  Widget build(BuildContext context) {
    final List<String> points = <String>[
      'assets/1.png',
      'assets/2.jpg',
      'assets/3.jpg',
      'assets/4.jpg',
    ];

    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[900],
        title: const Center(
          child: Text(
            'GridView',
            style: TextStyle(
              color: Colors.blueAccent,
              fontWeight: FontWeight.bold,
              fontSize: 30.0,
            ),
          ),
        ),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 0,
          mainAxisSpacing: 0,
          crossAxisCount: 3,
        ),
        itemCount: points.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SecondScreen(
                      assets: points[index],
                    ),
                  ));
            },
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage(points[index])),
              ),
            ),
          );
        },
      ),
    ));
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key, required this.assets}) : super(key: key);

  final String assets;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image(
          image: AssetImage(assets),
        ),
      ),
    );
  }
}
