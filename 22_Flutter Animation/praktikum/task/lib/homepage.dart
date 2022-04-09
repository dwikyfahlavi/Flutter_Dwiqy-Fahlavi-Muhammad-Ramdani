import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isBig = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Task 1'),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          width: isBig ? 200 : 500,
          height: isBig ? 200 : 500,
          child: GestureDetector(
            onTap: (() {
              setState(() {
                isBig = !isBig;
              });
            }),
            child: const Image(
                image: NetworkImage(
                    'https://www.teahub.io/photos/full/146-1469010_one-piece-family.jpg')),
          ),
        ),
      ),
    );
  }
}
