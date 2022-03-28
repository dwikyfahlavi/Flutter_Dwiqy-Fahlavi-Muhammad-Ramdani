import 'package:flutter/material.dart';

void main() {
  runApp(const GeeksForGeeks());
}

class GeeksForGeeks extends StatelessWidget {
  const GeeksForGeeks({Key? key}) : super(key: key);

// This widget is the root of your application
  @override
  Widget build(BuildContext context) {
    final List<int> points = <int>[
      0xe0b0,
      0xe0b1,
      0xe0b2,
      0xe0b3,
      0xe0b4,
      0xe0b5,
      0xe0b6,
      0xe0b7,
      0xe0b8,
      0xe0b9,
      0xe0c0,
      0xe0c1,
      0xe0c2,
      0xe0c3,
      0xe0c4,
      0xe0c5,
      0xe0c6,
      0xe0c7,
      0xe0c8,
      0xe0c9,
      0xe0d0,
      0xe0d1,
      0xe0d2,
      0xe0d3,
      0xe0d4,
      0xe0d5,
      0xe0d6,
      0xe0d7,
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
        body: GridView.count(
          crossAxisCount: 4,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 5.0,
          shrinkWrap: true,
          children: List.generate(
            points.length,
            (index) {
              return Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  child: Center(
                      child: Icon(
                    IconData(points[index], fontFamily: 'MaterialIcons'),
                    color: Colors.white,
                  )),
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(
                      Radius.circular(100.0),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
