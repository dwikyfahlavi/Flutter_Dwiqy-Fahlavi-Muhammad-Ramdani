import 'package:flutter/material.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: const [
          UserAccountsDrawerHeader(
            accountName: Text("Dwiqy Fahlavi"),
            accountEmail: Text("fahlavi.dwiky@upi.edu"),
            currentAccountPicture: CircleAvatar(
              child: FlutterLogo(),
            ),
          ),
          ListTile(
            leading: Icon(Icons.people),
            title: Text("New Group"),
          ),
          ListTile(
            leading: Icon(Icons.lock),
            title: Text("New Secret Chat"),
          ),
          ListTile(
            leading: Icon(Icons.campaign),
            title: Text("New Channel"),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.contact_phone),
            title: Text("Contacts"),
          ),
          ListTile(
            leading: Icon(Icons.person_add),
            title: Text("Invite Friends"),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Settings"),
          ),
          ListTile(
            leading: Icon(Icons.help),
            title: Text("Telegram FAQ"),
          ),
        ],
      ),
    );
  }
}
