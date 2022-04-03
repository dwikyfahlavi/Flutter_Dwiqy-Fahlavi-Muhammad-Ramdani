import 'package:flutter/material.dart';
import 'package:task1/models/user.dart';
import 'package:task1/screens/add_Screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contacts'),
        leading: const Icon(Icons.person),
        centerTitle: true,
        actions: [
          Container(
              margin: const EdgeInsets.only(right: 18.0),
              child: IconButton(
                icon: Icon(Icons.add),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => addUser(),
                      ));
                },
              ))
        ],
      ),
      body: const ChatPreview(),
    );
  }
}

class ChatPreview extends StatefulWidget {
  const ChatPreview({Key? key}) : super(key: key);

  @override
  State<ChatPreview> createState() => _ChatPreviewState();
}

class _ChatPreviewState extends State<ChatPreview> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: listUser.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            contentPadding: const EdgeInsets.all(5.0),
            leading: SizedBox(
              width: 55.0,
              child: CircleAvatar(
                radius: 50.0,
                backgroundImage: NetworkImage(listUser[index].avatar),
              ),
            ),
            title: Text(
              listUser[index].name,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(listUser[index].phone),
          );
        });
  }
}
