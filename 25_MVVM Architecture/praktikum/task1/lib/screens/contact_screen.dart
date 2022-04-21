import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task1/models/contact_manager.dart';
import 'package:task1/screens/add_contact_screen.dart';
import 'package:task1/screens/contact_list_screen.dart';
import 'package:task1/screens/login_screen.dart';

import 'empty_screen.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  void coba() async {
    final manager = Provider.of<ContactManager>(context, listen: false);
    await manager.getContactList();
  }

  @override
  void initState() {
    super.initState();
    coba();
  }

  @override
  Widget build(BuildContext context) {
    final manager = Provider.of<ContactManager>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contacts'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              final manager =
                  Provider.of<ContactManager>(context, listen: false);
              manager.contactPrefs.setBool('isLogin', false);
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const LoginScreen(),
                ),
              );
            },
            icon: const Icon(Icons.logout_outlined),
          ),
        ],
      ),
      body: manager.loading
          ? const Center(child: CircularProgressIndicator())
          : buildContactScreen(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          final manager = Provider.of<ContactManager>(context, listen: false);

          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    AddContactScreen(onCreate: (contact) async {
                      await manager.addContact(contact);
                      await manager.getContactList();
                      Navigator.pop(context);
                    })),
          );
        },
      ),
    );
  }

  Widget buildContactScreen() {
    final manager = Provider.of<ContactManager>(context, listen: true);
    if (manager.contactModel.isNotEmpty) {
      return ContactListScreen(manager: manager);
    } else {
      return const EmptyScreen();
    }
  }
}
