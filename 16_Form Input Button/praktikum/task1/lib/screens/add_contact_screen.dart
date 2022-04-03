import 'package:flutter/material.dart';
import 'package:task1/models/contact_model.dart';

class AddContactScreen extends StatefulWidget {
  final Function(ContactModel) onCreate;
  const AddContactScreen({Key? key, required this.onCreate}) : super(key: key);

  @override
  State<AddContactScreen> createState() => _AddContactScreenState();
}

class _AddContactScreenState extends State<AddContactScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _numberController = TextEditingController();
  final _hobiController = TextEditingController();
  final _avatarController = TextEditingController();
  var name = '';
  var number = '';
  var hobi = '';
  var avatar = '';
  var radioValue = '';
  var dropDown = 0;
  var gender = '';

  @override
  void initState() {
    super.initState();
    // Start listening to changes.
    _nameController.addListener(() {
      setState(() {
        name = _nameController.text;
      });
    });
    _numberController.addListener(() {
      setState(() {
        number = _numberController.text;
      });
    });
    _hobiController.addListener(() {
      setState(() {
        hobi = _hobiController.text;
      });
    });
    _avatarController.addListener(() {
      setState(() {
        avatar = _avatarController.text;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    _nameController.dispose();
    _numberController.dispose();
    _hobiController.dispose();
    _avatarController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Contact'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: _nameController,
                  decoration: const InputDecoration(
                      label: Text('Name'),
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(),
                      hintText: 'Enter your name'),
                  textCapitalization: TextCapitalization.sentences,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter Your Name';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(right: 8.0, left: 8.0, bottom: 8.0),
                child: TextFormField(
                  controller: _numberController,
                  keyboardType: TextInputType.phone,
                  decoration: const InputDecoration(
                      label: Text('Number'),
                      prefixIcon: Icon(Icons.book),
                      border: OutlineInputBorder(),
                      hintText: 'Enter your number'),
                  textCapitalization: TextCapitalization.sentences,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter Your Number';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(right: 8.0, left: 8.0, bottom: 8.0),
                child: TextFormField(
                  controller: _hobiController,
                  decoration: const InputDecoration(
                      label: Text('Hobi'),
                      prefixIcon: Icon(Icons.accessibility),
                      border: OutlineInputBorder(),
                      hintText: 'Enter your Hobbies'),
                  textCapitalization: TextCapitalization.sentences,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter Your Hobbies';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(right: 8.0, left: 8.0, bottom: 8.0),
                child: TextFormField(
                  controller: _avatarController,
                  decoration: const InputDecoration(
                      label: Text('Avatar'),
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(),
                      hintText: 'Enter your avatar url'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter Your avatar urlx';
                    }
                    return null;
                  },
                ),
              ),
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
                        if (value == 0) {
                          gender = 'Tidak ada';
                        } else if (value == 1) {
                          gender = 'Laki - Laki';
                        } else if (value == 2) {
                          gender = 'Perempuan';
                        }
                        dropDown = value ?? 0;
                      });
                    }),
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    final contactItem = ContactModel(
                        name: name,
                        number: number,
                        avatar: avatar,
                        hobi: hobi,
                        status: radioValue,
                        gender: gender);
                    widget.onCreate(contactItem);
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                          content: Text('Add Contact Successfully!')),
                    );
                  },
                  child: const SizedBox(
                      width: 100,
                      height: 15,
                      child: Text(
                        'Submit',
                        textAlign: TextAlign.center,
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
