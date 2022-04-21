import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/contact_manager.dart';

class DetailContact extends StatefulWidget {
  final String id;
  const DetailContact({Key? key, required this.id}) : super(key: key);

  @override
  State<DetailContact> createState() => _DetailContactState();
}

class _DetailContactState extends State<DetailContact> {
  @override
  void initState() {
    super.initState();
    final manager = Provider.of<ContactManager>(context, listen: false);
    manager.getContactByIdObject(widget.id.toString());
  }

  @override
  Widget build(BuildContext context) {
    // final manager = Provider.of<ContactManager>(context, listen: false);

    return Consumer<ContactManager>(builder: (context, manager, _) {
      final name = manager.contactObject!.name;
      final number = manager.contactObject!.number;
      return Scaffold(
        appBar: AppBar(
          title: Text('Detail Contact $name'),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                const CircleAvatar(
                  radius: 30.0,
                  child: Icon(Icons.contact_phone),
                ),
                const Padding(padding: EdgeInsets.only(top: 10.0)),
                Text(name, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                const Padding(padding: EdgeInsets.only(top: 5.0)),
                Text(number, style: const TextStyle(fontSize: 16, color: Colors.grey)),
              ],
            ),
          ),
        ),
      );
    });
  }
}
