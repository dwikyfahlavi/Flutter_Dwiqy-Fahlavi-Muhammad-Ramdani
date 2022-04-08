import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
                physics: const BouncingScrollPhysics(),
                itemBuilder: (ctx, idx) {
                  final data = state.contact[idx];
                  return _buildWidgetContactTile(data);
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

  ListTile _buildWidgetContactTile(ContacModel contact) {
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
    );
  }
}
