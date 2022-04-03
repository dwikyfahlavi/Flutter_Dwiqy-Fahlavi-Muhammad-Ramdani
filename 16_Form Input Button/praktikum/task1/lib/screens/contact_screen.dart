import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task1/screens/add_contact_screen.dart';
import 'package:task1/models/contact_manager.dart';
import 'package:task1/screens/contact_list_screen.dart';
import 'package:task1/screens/empty_screen.dart';

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
          final manager = Provider.of<ContactManager>(context, listen: false);
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => AddContactScreen(onCreate: (contact) {
                        manager.addContact(contact);
                        Navigator.pop(context);
                      })));
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
