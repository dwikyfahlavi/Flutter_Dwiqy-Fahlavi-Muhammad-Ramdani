import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PostScreen extends StatefulWidget {
  String fileName;
  String caption;
  DateTime date;
  Color color;
  PostScreen({
    Key? key,
    required this.fileName,
    required this.caption,
    required this.date,
    required this.color,
  }) : super(key: key);

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Preview Post'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 18.0),
        child: Column(
          children: [
            ClipRRect(
              child: Image.file(
                File(widget.fileName),
                height: 250,
                width: 600,
                fit: BoxFit.contain,
              ),
            ),
            detailPreview(),
            captionPreview(),
          ],
        ),
      ),
    );
  }

  Widget detailPreview() {
    var dateFormatted = DateFormat('dd-MM-yyyy').format(widget.date);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Published at: $dateFormatted',
            style: const TextStyle(color: Colors.grey),
          ),
          Row(
            children: [
              const Text(
                'Color: ',
                style: TextStyle(color: Colors.grey),
              ),
              Icon(
                  Icons.circle,
                  color: widget.color,
                  size: 16.0,
                ),
            ],
          )
        ],
      ),
    );
  }

  Widget captionPreview() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(widget.caption, textAlign: TextAlign.justify,),
    );
  }
}
