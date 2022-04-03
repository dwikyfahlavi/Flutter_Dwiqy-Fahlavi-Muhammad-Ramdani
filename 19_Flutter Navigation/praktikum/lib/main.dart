import 'package:flutter/material.dart';
import 'package:praktikum/screens/add_contact_screen.dart';
import 'package:praktikum/screens/profile_screen.dart';
import 'package:provider/provider.dart';
import 'package:praktikum/models/contact_manager.dart';
import 'package:praktikum/screens/contact_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ContactManager(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Contacts App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: '/',
        routes: {
          '/': (_) => const ContactsScreen(),
          '/addContact': (_) => const AddContactScreen(),
          '/profileScreen': (_) => const ProfileScreen()
        },
      ),
    );
  }
}
