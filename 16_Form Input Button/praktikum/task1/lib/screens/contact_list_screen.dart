import 'package:flutter/material.dart';
import 'package:task1/models/contact_manager.dart';

class ContactListScreen extends StatelessWidget {
  final ContactManager manager;
  final _controller = ScrollController();

  ContactListScreen({Key? key, required this.manager}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final contactItem = manager.contactModel;
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: ListView.builder(
        controller: _controller,
        itemCount: contactItem.length,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              showModalBottomSheet(
                  backgroundColor: Colors.transparent,
                  context: context,
                  builder: (builder) {
                    return Container(
                        margin: const EdgeInsets.only(right: 30.0, left: 30.0),
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(30.0))),
                        child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              children: [
                                ListTile(
                                  leading: IconButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      icon: const Icon(Icons.arrow_back)),
                                  title: const Text(
                                    'Detail Contact',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                CircleAvatar(
                                  radius: 30.0,
                                  backgroundImage:
                                      NetworkImage(contactItem[index].avatar),
                                ),
                                const Padding(
                                    padding: EdgeInsets.only(top: 10.0)),
                                Text(contactItem[index].name,
                                    style: const TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)),
                                const Padding(
                                    padding: EdgeInsets.only(top: 5.0)),
                                Text(contactItem[index].number,
                                    style: const TextStyle(
                                        fontSize: 16, color: Colors.grey)),
                                const Padding(
                                    padding: EdgeInsets.only(top: 10.0)),
                                const Text('Status :',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)),
                                const Padding(
                                    padding: EdgeInsets.only(top: 5.0)),
                                Text(contactItem[index].status,
                                    style: const TextStyle(
                                        fontSize: 16, color: Colors.grey)),
                                const Padding(
                                    padding: EdgeInsets.only(top: 10.0)),
                                const Text('Gender :',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)),
                                const Padding(
                                    padding: EdgeInsets.only(top: 5.0)),
                                Text(contactItem[index].gender,
                                    style: const TextStyle(
                                        fontSize: 16, color: Colors.grey)),
                                const Padding(
                                    padding: EdgeInsets.only(top: 10.0)),
                                const Text('Hobi :',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)),
                                const Padding(
                                    padding: EdgeInsets.only(top: 5.0)),
                                Text(contactItem[index].hobi,
                                    style: const TextStyle(
                                        fontSize: 16, color: Colors.grey)),
                              ],
                            )));
                  });
            },
            leading: CircleAvatar(
                radius: 25.0,
                backgroundImage: NetworkImage(contactItem[index].avatar)),
            title: Text(contactItem[index].name),
            subtitle: Text(contactItem[index].number),
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
                                    manager.deleteContact(index);
                                    Navigator.pop(context);
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                          content: Text(
                                              'Delete ${contactItem[index].name} Successfully!')),
                                    );
                                  },
                                  child: const Text('Yes')),
                            ],
                          ));
                },
                icon: const Icon(Icons.delete_forever_rounded)),
          );
        },
      ),
    );
  }
}
