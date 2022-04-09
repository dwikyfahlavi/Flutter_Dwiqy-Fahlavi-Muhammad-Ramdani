import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:praktikum/blocs/history_bloc.dart';
import 'package:praktikum/history.dart';

import 'add_contact.dart';
import 'blocs/contact_bloc.dart';
import 'contact.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => ContactBloc()),
        BlocProvider(create: (context) => HistoryBloc())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const ContactScreen(),
        onGenerateRoute: (settings) {
          switch (settings.name) {
            case AddContactScreen.routeName:
              return MaterialPageRoute(
                  builder: (_) => const AddContactScreen());

            case HistoryScreen.routeName:
              return MaterialPageRoute(builder: (_) => const HistoryScreen());

            default:
              return MaterialPageRoute(
                builder: (_) {
                  return const Scaffold(
                    body: Center(
                      child: Text('Page not found :('),
                    ),
                  );
                },
              );
          }
        },
      ),
    );
  }
}
