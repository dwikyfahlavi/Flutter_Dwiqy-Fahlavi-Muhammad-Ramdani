import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';

// ignore_for_file: public_member_api_docs

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Task 2'),
      ),
      body: Container(
        margin: const EdgeInsets.all(8),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Alterra Academy\n'),
            BarcodeWidget(
              barcode: Barcode.qrCode(), // Barcode type and settings
              data: 'Alterra Academy', // Content
              width: 200,
              height: 100,
            ),
            const Divider(
              thickness: 1.0,
            ),
            const Text('Flutter Asik \n'),
            BarcodeWidget(
              barcode: Barcode.qrCode(), // Barcode type and settings
              data: 'Flutter Asik', // Content
              width: 200,
              height: 100,
            ),
            const Divider(
              thickness: 1.0,
            ),
            const Text('Dwiqy Fahlavi Muhammad Ramdani\n'),
            BarcodeWidget(
              barcode: Barcode.qrCode(), // Barcode type and settings
              data: 'Dwiqy Fahlavi Muhammad Ramdani', // Content
              width: 200,
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}
