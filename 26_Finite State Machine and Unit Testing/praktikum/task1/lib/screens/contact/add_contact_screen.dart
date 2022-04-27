import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task1/bloc/contact_bloc.dart';
import 'package:task1/models/contact_model.dart';

class AddContactScreen extends StatefulWidget {
  const AddContactScreen({Key? key}) : super(key: key);

  @override
  State<AddContactScreen> createState() => _AddContactScreenState();
}

class _AddContactScreenState extends State<AddContactScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _numberController = TextEditingController();

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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(
                  label: const Text('Name'),
                  prefixIcon: const Icon(Icons.person),
                  border: const OutlineInputBorder(),
                  hintText: 'Enter your name',
                  suffixIcon: IconButton(
                    onPressed: _nameController.clear,
                    icon: const Icon(
                      Icons.clear,
                      color: Colors.grey,
                    ),
                  ),
                ),
                textCapitalization: TextCapitalization.sentences,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please Enter Your Name';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 8.0,
              ),
              TextFormField(
                controller: _numberController,
                decoration: InputDecoration(
                  label: const Text('Phone Number'),
                  prefixIcon: const Icon(Icons.person),
                  border: const OutlineInputBorder(),
                  hintText: 'Enter your number',
                  suffixIcon: IconButton(
                    onPressed: _numberController.clear,
                    icon: const Icon(
                      Icons.clear,
                      color: Colors.grey,
                    ),
                  ),
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
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    if (!_formKey.currentState!.validate()) return;

                    final contactItem = ContactModel(name: _nameController.text, phone: _numberController.text);
                    context.read<ContactBloc>().add(AddContact(contactItem));

                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Add Contact Successfully!')),
                    );

                    Navigator.pop(context);
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
