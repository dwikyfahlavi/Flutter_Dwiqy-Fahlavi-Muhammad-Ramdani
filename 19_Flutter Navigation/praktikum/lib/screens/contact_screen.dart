import 'package:flutter/material.dart';
import 'package:praktikum/models/contact_manager.dart';
import 'package:praktikum/screens/contact_list_screen.dart';
import 'package:praktikum/screens/empty_screen.dart';
import 'package:provider/provider.dart';

class ContactsScreen extends StatelessWidget {
  const ContactsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contacts'),
        centerTitle: true,
      ),
      body: buildContactScreen(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          Navigator.of(context).pushNamed('/addContact');
        },
      ),
    );
  }

  Widget buildContactScreen() {
    return Consumer<ContactManager>(
      builder: (context, manager, child) {
        if (manager.contactModel.isNotEmpty) {
          return ContactListScreen(manager: manager);
        } else {
          return const EmptyScreen();
        }
      },
    );
  }
}
