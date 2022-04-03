import 'package:flutter/material.dart';
import 'package:task1/screens/homePage.dart';
import 'package:task1/models/user.dart';

class addUser extends StatelessWidget {
  const addUser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Contact'),
        centerTitle: true,
      ),
      body: const FormContact(),
    );
  }
}

class FormContact extends StatefulWidget {
  const FormContact({Key? key}) : super(key: key);

  @override
  State<FormContact> createState() => _FormContactState();
}

class _FormContactState extends State<FormContact> {
  var formKey = GlobalKey<FormState>();
  var inputNameController = TextEditingController();
  var inputNumberController = TextEditingController();
  var inputHobiController = TextEditingController();
  var inputAvatarController = TextEditingController();
  var radioValue = '';
  var dropDown = 0;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Container(
        padding: const EdgeInsets.all(25.0),
        child: ListView(
          children: [
            const CircleAvatar(
              radius: 30,
              child: Icon(Icons.person),
            ),
            const Divider(),
            TextFormField(
              controller: inputAvatarController,
              decoration: const InputDecoration(
                  hintText: "http:blabalalba.com",
                  border: OutlineInputBorder(),
                  labelText: "Avatar"),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter some text';
                }
              },
            ),
            const Divider(),
            TextFormField(
              controller: inputNameController,
              decoration: const InputDecoration(
                  hintText: "Name",
                  border: OutlineInputBorder(),
                  labelText: "FullName"),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter some text';
                }
              },
            ),
            const Divider(),
            TextFormField(
              keyboardType: TextInputType.phone,
              controller: inputNumberController,
              decoration: const InputDecoration(
                  hintText: "0123456789",
                  border: OutlineInputBorder(),
                  labelText: "Phone Number"),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter some text';
                }
              },
            ),
            const Divider(),
            ListTile(
              leading: Radio<String>(
                value: 'Sudah Menikah',
                groupValue: radioValue,
                onChanged: (String? value) {
                  setState(() {
                    radioValue = value ?? '';
                  });
                },
              ),
              title: const Text('Sudah Menikah'),
            ),
            ListTile(
              leading: Radio<String>(
                value: 'Belum Menikah',
                groupValue: radioValue,
                onChanged: (String? value) {
                  setState(() {
                    radioValue = value ?? '';
                  });
                },
              ),
              title: const Text('Belum Menikah'),
              trailing: DropdownButton(
                  value: dropDown,
                  items: const [
                    DropdownMenuItem(value: 0, child: Text('Gender')),
                    DropdownMenuItem(value: 1, child: Text('Laki-Laki')),
                    DropdownMenuItem(value: 2, child: Text('Perempuan')),
                  ],
                  onChanged: (int? value) {
                    setState(() {
                      dropDown = value ?? 0;
                    });
                  }),
            ),
            TextFormField(
              controller: inputHobiController,
              decoration: const InputDecoration(
                  hintText: "Contoh: Berlari, berenang",
                  border: OutlineInputBorder(),
                  labelText: "Hobi"),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter some text';
                }
              },
            ),
            // ElevatedButton(
            //     child: const Text('Submit'),
            //     // onPressed: () {
            //     //   addContact(User(
            //     //       name: inputNameController.text,
            //     //       avatar: inputAvatarController.text,
            //     //       phone: inputNumberController.text,
            //     //       status: radioValue,
            //     //       gender: dropDown.toString(),
            //     //       hobi: inputHobiController.text)),

            //     })
          ],
        ),
      ),
    );
  }
}
