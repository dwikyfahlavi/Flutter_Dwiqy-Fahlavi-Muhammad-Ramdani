import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:praktikum/blocs/history_bloc.dart';
import 'package:praktikum/history.dart';
import 'package:praktikum/history_model.dart';

import 'add_contact.dart';
import 'blocs/contact_bloc.dart';
import 'moocking.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  @override
  void initState() {
    context.read<ContactBloc>().add(OnFetchContact());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contact"),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, HistoryScreen.routeName);
              },
              icon: const Icon(Icons.history))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          /// USING ROUTE
          Navigator.pushNamed(context, AddContactScreen.routeName);
        },
      ),
      body: SafeArea(
        child: BlocBuilder<ContactBloc, ContactState>(
          builder: (context, state) {
            if (state is ContactLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state is ContactLoaded) {
              return ListView.builder(
                itemCount: state.contact.length,
                itemBuilder: (ctx, idx) {
                  final data = state.contact[idx];
                  return _buildWidgetContactTile(data, idx);
                },
              );
            } else {
              return const Center(child: Text("Failed to load data"));
            }
          },
        ),
      ),
    );
  }

  ListTile _buildWidgetContactTile(ContacModel contact, int index) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.green,
        child: Text(
          contact.name[0].toString(),
          style: const TextStyle(fontSize: 21),
        ),
      ),
      title: Text(
        contact.name,
        style: const TextStyle(
          fontSize: 20,
        ),
      ),
      subtitle: Text(
        contact.phoneNumber,
        style: const TextStyle(
          fontSize: 13,
          color: Colors.grey,
        ),
      ),
      trailing: IconButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) => AlertDialog(
                      content: const Text(
                          'Are you sure want to delete this contact?'),
                      actions: [
                        TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text('No')),
                        TextButton(
                            onPressed: () {
                              context
                                  .read<ContactBloc>()
                                  .add(OnRemoveContact(index));
                              context
                                  .read<HistoryBloc>()
                                  .add(OnAddHistory(HistoryModel(
                                      const Icon(
                                        Icons.contact_phone,
                                        color: Colors.red,
                                      ),
                                      'Contact dengan nama ${contact.name.toString()} berhasil dihapus',
                                      DateTime.now())));
                              Navigator.pop(context);
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                    content: Text(
                                        'Delete ${contact.name.toString()} Successfully!')),
                              );
                            },
                            child: const Text('Yes')),
                      ],
                    ));
          },
          icon: const Icon(Icons.delete_forever_rounded)),
    );
  }
}
