import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:task2/models/history.dart';

import 'bloc/contact_bloc.dart';
import 'bloc/history_bloc.dart';
import 'models/contact.dart';

class AddContactScreen extends StatefulWidget {
  const AddContactScreen({Key? key}) : super(key: key);

  @override
  State<AddContactScreen> createState() => _AddContactScreenState();
}

class _AddContactScreenState extends State<AddContactScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _numberController = TextEditingController();
  var name = '';
  var number = '';

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
  }

  @override
  void dispose() {
    _nameController.dispose();
    _numberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Contact'),
        centerTitle: true,
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(
                    label: const Text('Name'),
                    prefixIcon: const Icon(Icons.person),
                    border: const OutlineInputBorder(),
                    hintText: 'Enter your name',
                    suffixIcon: _nameController.toString().isNotEmpty
                        ? IconButton(
                            onPressed: _nameController.clear,
                            icon: const Icon(
                              Icons.clear,
                              color: Colors.grey,
                            ),
                          )
                        : null),
                textCapitalization: TextCapitalization.sentences,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please Enter Your Name';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 8,
              ),
              TextFormField(
                controller: _numberController,
                decoration: InputDecoration(
                  label: const Text('Phone Number'),
                  prefixIcon: const Icon(Icons.person),
                  border: const OutlineInputBorder(),
                  hintText: 'Enter your number',
                  suffixIcon: _numberController.toString().isNotEmpty
                      ? IconButton(
                          onPressed: _numberController.clear,
                          icon: const Icon(
                            Icons.clear,
                            color: Colors.grey,
                          ),
                        )
                      : null,
                ),
                textCapitalization: TextCapitalization.sentences,
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please Enter Your Number';
                  }
                  return null;
                },
              ),
              BlocBuilder<ContactBloc, ContactState>(
                builder: (context, state) {
                  return Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: ElevatedButton(
                        onPressed: () {
                          if (!_formKey.currentState!.validate()) return;

                          //Get contact item
                          final contactItem =
                              Contact(name: name, number: number);

                          //Add event
                          context
                              .read<ContactBloc>()
                              .add(AddContact(contactItem));

                          //Get date and time
                          DateTime now = DateTime.now();
                          final date = DateFormat("yyyy-MM-dd").format(now);
                          final time = DateFormat("HH:mm:ss").format(now);
                          final historyItem = History(
                              contact: contactItem,
                              status: 'added',
                              date: date,
                              time: time);

                          //Add event
                          context
                              .read<HistoryBloc>()
                              .add(AddHistory(history: historyItem));

                          Navigator.pop(context);

                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Add Contact Successfully!'),
                            ),
                          );
                        },
                        child: const SizedBox(
                          width: 100,
                          height: 15,
                          child: Text(
                            'Submit',
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
