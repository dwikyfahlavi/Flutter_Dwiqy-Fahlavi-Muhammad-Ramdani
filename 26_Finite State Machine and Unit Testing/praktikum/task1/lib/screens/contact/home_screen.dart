import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:task1/bloc/contact_bloc.dart';
import 'package:task1/provider/food_provider.dart';
import 'package:task1/screens/contact/add_contact_screen.dart';
import 'package:task1/screens/food/food_list_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _controller = ScrollController();

  @override
  void initState() {
    super.initState();
    context.read<ContactBloc>().add(FetchAllContacts());
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
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ChangeNotifierProvider(
                    create: (context) => FoodProvider(),
                    child: const FoodListScreen(),
                  ),
                ),
              );
            },
            icon: const Icon(Icons.food_bank_outlined),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: _buildContactScreen(),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const AddContactScreen(),
            ),
          );
        },
      ),
    );
  }

  Widget _buildContactScreen() {
    return BlocBuilder<ContactBloc, ContactState>(
      builder: (context, state) {
        if (state is LoadingState) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is SuccessState) {
          return _buildContactList(state, _controller);
        } else if (state is ErrorState) {
          return Center(
            child: Text(state.message),
          );
        } else {
          return const SizedBox();
        }
      },
    );
  }
}

Widget _buildContactList(SuccessState state, ScrollController _controller) {
  return ListView.builder(
    controller: _controller,
    itemCount: state.contacts.length,
    itemBuilder: (context, index) {
      final contacts = state.contacts[index];
      return ListTile(
        onTap: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(contacts.id!.toString())),
          );
        },
        leading: CircleAvatar(
          child: Text(contacts.name.substring(0, 1)),
        ),
        title: Text(contacts.name),
        subtitle: Text(contacts.phone),
      );
    },
  );
}
