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
      'assets/5.jpg',
      'assets/6.jpg',
      'assets/7.jpg',
      'assets/8.jpg',
      'assets/9.jpg',
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
              showDialog(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                        title: const Text('Dialog Picture'),
                        content: Image(
                          image: AssetImage(points[index]),
                        ),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () => Navigator.pop(context, 'Cancel'),
                            child: const Text('Cancel'),
                          ),
                          TextButton(
                            onPressed: () => showModalBottomSheet(
                                context: context,
                                builder: (builder) {
                                  return Container(
                                      decoration: const BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(15.0),
                                              topRight: Radius.circular(15.0))),
                                      child: Padding(
                                        padding: const EdgeInsets.all(15.0),
                                        child: Image(
                                          image: AssetImage(points[index]),
                                        ),
                                      ));
                                }),
                            child: const Text('Show on Bottom Sheet'),
                          ),
                        ],
                      ));
            },
            // Navigator.push(
            //     context,
            //     MaterialPageRoute(
            //       builder: (context) => RouteTwo(
            //         image: points[index],
            //       ),
            //     ));
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
