import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'dart:async';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var time = 'TIME';

  void startTime() {
    Timer.periodic(const Duration(seconds: 1), (_) {
      var now = DateTime.now();
      var getTime = DateFormat('HH:mm:ss').format(now);
      setState(() {
        time = getTime;
      });
    });
  }

  @override
  void initState() {
    startTime();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Widget'),
        ),
        body: Center(
          child: Text(
            time,
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}
