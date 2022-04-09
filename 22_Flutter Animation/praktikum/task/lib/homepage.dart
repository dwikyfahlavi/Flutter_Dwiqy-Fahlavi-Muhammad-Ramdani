import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isBig = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Task 1'),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 10.0,
            ),
            ElevatedButton(
                onPressed: () => {
                      setState(
                        () {
                          isBig = !isBig;
                        },
                      ),
                    },
                child: const Text('Resize')),
            Container(
              padding: const EdgeInsets.all(10.0),
              width: isBig ? 300 : 500,
              height: isBig ? 300 : 500,
              child: const Image(
                  image: NetworkImage(
                      'https://www.teahub.io/photos/full/146-1469010_one-piece-family.jpg')),
            ),
          ],
        ),
      ),
    );
  }
}
