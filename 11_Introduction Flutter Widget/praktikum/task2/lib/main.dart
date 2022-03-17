import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'dart:async';
import 'dart:core';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String? second;
  String? minute;
  String? hour;

  void startTime() {
    Timer.periodic(const Duration(seconds: 1), (_) {
      var now = DateTime.now();
      var getSecond = DateFormat('ss').format(now);
      var getMinute = DateFormat('mm').format(now);
      var getHour = DateFormat('HH').format(now);
      setState(() {
        second = getSecond;
        minute = getMinute;
        hour = getHour;
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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                '$hour:',
                style: const TextStyle(fontSize: 24),
              ),
              Text(
                '$minute:',
                style: const TextStyle(fontSize: 24),
              ),
              Text(
                '$second',
                style: const TextStyle(fontSize: 24),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
