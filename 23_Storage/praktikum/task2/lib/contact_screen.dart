import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:task2/bloc/history_bloc.dart';
import 'package:task2/models/contact.dart';
import 'package:task2/models/history.dart';

import 'add_contact_screen.dart';
import 'bloc/contact_bloc.dart';
import 'history_screen.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  final _controller = ScrollController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contacts'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const HistoryScreen(),
              ));
            },
            icon: const Icon(Icons.history),
          ),
        ],
      ),
      body: BlocBuilder<ContactBloc, ContactState>(
        builder: (context, state) {
          context.read<ContactBloc>().add(FetchData());
          return Padding(
            padding: const EdgeInsets.all(12.0),
            child: ListView.builder(
              controller: _controller,
              itemCount: state.contacts.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    child: Text(state.contacts[index].name.substring(0, 1)),
                  ),
                  title: Text(state.contacts[index].name),
                  subtitle: Text(state.contacts[index].number),
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
                                final contactItem = Contact(
                                    name: state.contacts[index].name,
                                    number: state.contacts[index].number);

                                DateTime now = DateTime.now();
                                final date =
                                    DateFormat("yyyy-MM-dd").format(now);
                                final time = DateFormat("HH:mm:ss").format(now);
                                final historyItem = History(
                                    contact: contactItem,
                                    status: 'deleted',
                                    date: date,
                                    time: time);

                                context
                                    .read<ContactBloc>()
                                    .add(DeleteContact(index));

                                context
                                    .read<HistoryBloc>()
                                    .add(AddHistory(history: historyItem));

                                Navigator.pop(context);

                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                        'Delete ${state.contacts[index].name} Successfully!'),
                                  ),
                                );
                              },
                              child: const Text('Yes'),
                            ),
                          ],
                        ),
                      );
                    },
                    icon: const Icon(Icons.delete_forever_rounded),
                  ),
                );
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const AddContactScreen(),
          ));
        },
      ),
    );
  }
}
