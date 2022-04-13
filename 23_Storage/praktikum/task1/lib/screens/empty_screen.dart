import 'package:flutter/material.dart';

class EmptyScreen extends StatelessWidget {
  const EmptyScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('No contacts added yet'),
    );
  }
}