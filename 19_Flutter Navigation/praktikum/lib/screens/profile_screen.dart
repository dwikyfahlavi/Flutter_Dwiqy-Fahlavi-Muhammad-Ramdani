import 'package:flutter/material.dart';
import 'package:praktikum/models/contact_model.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contacts'),
        centerTitle: true,
      ),
      body: ProfileData(),
    );
  }
}

class ProfileData extends StatefulWidget {
  const ProfileData({Key? key}) : super(key: key);

  @override
  State<ProfileData> createState() => _ProfileDataState();
}

class _ProfileDataState extends State<ProfileData> {
  @override
  Widget build(BuildContext context) {
    final parameter =
        ModalRoute.of(context)!.settings.arguments as ContactModel;
    return Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(10.0),
        child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 80.0,
                  backgroundImage: NetworkImage(parameter.avatar),
                ),
                const Padding(padding: EdgeInsets.only(top: 10.0)),
                Text(parameter.name,
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold)),
                const Padding(padding: EdgeInsets.only(top: 5.0)),
                Text(parameter.number,
                    style: const TextStyle(fontSize: 16, color: Colors.grey)),
                const Padding(padding: EdgeInsets.only(top: 10.0)),
                const Text('Status :',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                const Padding(padding: EdgeInsets.only(top: 5.0)),
                Text(parameter.status,
                    style: const TextStyle(fontSize: 16, color: Colors.grey)),
                const Padding(padding: EdgeInsets.only(top: 10.0)),
                const Text('Gender :',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                const Padding(padding: EdgeInsets.only(top: 5.0)),
                Text(parameter.gender,
                    style: const TextStyle(fontSize: 16, color: Colors.grey)),
                const Padding(padding: EdgeInsets.only(top: 10.0)),
                const Text('Hobi :',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                const Padding(padding: EdgeInsets.only(top: 5.0)),
                Text(parameter.hobi,
                    style: const TextStyle(fontSize: 16, color: Colors.grey)),
              ],
            )));
  }
}
