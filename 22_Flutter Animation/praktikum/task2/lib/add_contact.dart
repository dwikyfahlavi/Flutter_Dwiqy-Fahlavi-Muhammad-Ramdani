import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task2/blocs/history_bloc.dart' as history;
import 'package:task2/history_model.dart';

import 'blocs/contact_bloc.dart';
import 'button.dart';
import 'moocking.dart';

class AddContactScreen extends StatefulWidget {
  static const routeName = "/add_contact";
  const AddContactScreen({Key? key}) : super(key: key);

  @override
  State<AddContactScreen> createState() => _AddContactScreenState();
}

class _AddContactScreenState extends State<AddContactScreen> {
  TextEditingController nameCtrl = TextEditingController();
  TextEditingController nmbrCtrl = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Contact"),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(height: 20),
              Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      textField(
                        controller: nameCtrl,
                        lable: "Nama",
                        icon: Icons.people,
                      ),
                      const SizedBox(height: 5),
                      textField(
                        controller: nmbrCtrl,
                        lable: "Nomor",
                        icon: Icons.phone,
                      ),
                    ],
                  )),
              const SizedBox(height: 20),
              Buttons(
                title: "Simpan",
                onTap: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    context.read<ContactBloc>().add(
                          OnAddContact(
                            ContacModel(
                              nameCtrl.text,
                              nmbrCtrl.text,
                            ),
                          ),
                        );
                    context
                        .read<history.HistoryBloc>()
                        .add(history.OnAddHistory(HistoryModel(
                            const Icon(
                              Icons.contact_phone,
                              color: Colors.green,
                            ),
                            'Contact dengan nama ${nameCtrl.text} telah di tambahkan',
                            DateTime.now())));
                    Navigator.pop(context);
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget textField({
    required TextEditingController controller,
    required String lable,
    required IconData icon,
  }) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextFormField(
        validator: (value) {
          if (value == null || value.isEmpty) {
            return '$lable enter some text';
          }
          return null;
        },
        controller: controller,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(10.0),
          hintText: lable,
          hintStyle: const TextStyle(fontSize: 12),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          isDense: true,
          prefixIcon: Icon(icon),
        ),
      ),
    );
  }
}
