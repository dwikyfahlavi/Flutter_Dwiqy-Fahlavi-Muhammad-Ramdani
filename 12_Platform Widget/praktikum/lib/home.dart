import 'package:flutter/material.dart';

import 'drawer.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: const Color(0xff55879F),
        title: const Text(
          "Telegram",
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.search,
              size: 30,
            ),
          )
        ],
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: const CircleAvatar(
              backgroundColor: Colors.blue,
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Nama ${index + 1}",
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const Text(
                  "19:00pm",
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                )
              ],
            ),
            subtitle: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Pesan ke-${index + 1}"),
              ],
            ),
          );
        },
      ),
      drawer: const DrawerMenu(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('You Added Chat'),
            ),
          );
        },
        backgroundColor: const Color(0xff55879F),
        child: const Icon(Icons.add_comment),
      ),
    );
  }
}
