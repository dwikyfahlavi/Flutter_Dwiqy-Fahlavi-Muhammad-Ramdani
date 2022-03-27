import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
          appBar: AppBar(
            title: const Text('JSON ListView in Flutter'),
          ),
          body: ChatPreview()),
    );
  }
}

class ChatPreview extends StatefulWidget {
  const ChatPreview({Key? key}) : super(key: key);

  @override
  State<ChatPreview> createState() => _ChatPreviewState();
}

class _ChatPreviewState extends State<ChatPreview> {
  final List<String> names = <String>[
    'Muhammad Brimstone',
    'Udin Flawless',
    'Asep Wantep',
    'Agung Shockdart',
    'Ahmad Phoenix',
    'Asep Botfrag',
    'Riska Sachel',
    'Indra Scatter'
  ];

  final List<String> telp = <String>[
    '085155325299',
    '088218334140',
    '085125366984',
    '089532146785',
    '088215564723',
    '085532148562',
    '089532445832',
    '085699544256'
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: names.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            contentPadding: const EdgeInsets.all(5.0),
            leading: Container(
              child: Center(
                child: Text(
                  names[index][0],
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              width: 55.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Colors.green,
              ),
            ),
            title: Text(
              names[index],
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(telp[index]),
          );
        });
  }
}
