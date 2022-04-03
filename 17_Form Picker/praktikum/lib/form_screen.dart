import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:intl/intl.dart';
import 'post_screen.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({Key? key}) : super(key: key);

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  final _captionController = TextEditingController();
  final currentDate = DateTime.now();
  DateTime _dueDate = DateTime.now();
  Color _currentColor = Colors.grey;
  String _fileName = '';
  bool pickedColor = false;
  Color tempColor = Colors.transparent;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Post'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 18.0),
        child: ListView(
          children: [
            const Text(
              'Cover',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            buildFilePicker(context),
            const SizedBox(
              height: 8.0,
            ),
            const Text(
              'Publish At',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            buildDatePicker(context),
            const SizedBox(
              height: 8.0,
            ),
            const Text(
              'Color Theme',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            buildColorPicker(context),
            const SizedBox(
              height: 8.0,
            ),
            const Text(
              'Caption',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            buildCaptionForm(context),
            const SizedBox(
              height: 16.0,
            ),
            Container(
              height: 25,
              padding: const EdgeInsets.symmetric(horizontal: 150.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PostScreen(
                        fileName: _fileName,
                        caption: _captionController.text,
                        date: _dueDate,
                        color: _currentColor,
                      ),
                    ),
                  );
                },
                child: const Text('Post'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildFilePicker(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        _pickFile();
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.grey),
      ),
      child: const Text('Pilih File'),
    );
  }

  Widget buildDatePicker(BuildContext context) {
    return InkWell(
      onTap: () async {
        final selectDate = await showDatePicker(
            context: context,
            initialDate: currentDate,
            firstDate: DateTime(2000),
            lastDate: DateTime(currentDate.year + 5));

        setState(() {
          if (selectDate != null) {
            _dueDate = selectDate;
          }
        });
      },
      child: Container(
        decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(5),
            border: Border.all(width: 1, color: Colors.grey)),
        margin: const EdgeInsets.only(top: 5.0),
        height: 35,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            DateFormat('dd-MM-yyyy').format(_dueDate),
            style: const TextStyle(color: Colors.grey),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }

  Widget buildColorPicker(BuildContext context) {
    return InkWell(
      onTap: () {
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: const Text('Pick your color'),
              content: BlockPicker(
                pickerColor: _currentColor,
                onColorChanged: (color) {
                  tempColor = color;
                },
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Cancel'),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                    setState(() {
                      _currentColor = tempColor;
                      pickedColor = true;
                    });
                  },
                  child: const Text('Save'),
                ),
              ],
            );
          },
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
            width: 1,
            color: Colors.grey,
          ),
        ),
        margin: const EdgeInsets.only(top: 5.0),
        height: 35,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: pickedColor
              ? Row(
                  children: [
                    const Text(
                      'Color has been picked!',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.circle,
                      color: _currentColor,
                      size: 16.0,
                    ),
                  ],
                )
              : const Text(
                  'Pick a Color',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
        ),
      ),
    );
  }

  Widget buildCaptionForm(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5.0),
      child: TextField(
        controller: _captionController,
        decoration: const InputDecoration(
            hintText: 'Enter your caption here',
            hintStyle: TextStyle(color: Colors.grey),
            border: OutlineInputBorder(
                borderSide: BorderSide(width: 1.0, color: Colors.grey))),
        textCapitalization: TextCapitalization.sentences,
      ),
    );
  }

  void _pickFile() async {
    final result = await FilePicker.platform.pickFiles();
    if (result != null) {
      final file = result.files.first;
      setState(() {
        _fileName = file.path!;
      });
    }
  }
}
