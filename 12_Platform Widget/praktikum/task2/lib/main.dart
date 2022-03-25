import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int selectedValue = 0;
  Map<int, Widget> children = <int, Widget>{
    0: const Expanded(
      child: Text("All Chats"),
    ),
    1: const Expanded(
      child: Text("Work"),
    ),
    2: const Expanded(
      child: Text("Unread"),
    ),
    3: const Expanded(
      child: Text("Personal"),
    ),
  };

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        // Try removing opacity to observe the lack of a blur effect and of sliding content.
        backgroundColor: CupertinoColors.white,
        leading: Padding(
          padding: EdgeInsets.only(top: 13),
          child: Text(
            'Edit',
            style: TextStyle(color: Colors.blue, fontSize: 16),
          ),
        ),
        middle: Text(
          'Chats',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        trailing: Icon(
          Icons.add,
          size: 21,
        ),
      ),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: MyPrefilledSearch(),
          ),
          Material(
            child: Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: CupertinoSegmentedControl(
                    children: children,
                    onValueChanged: (int value) {
                      selectedValue = value;
                      setState(() {});
                    },
                    selectedColor: CupertinoColors.activeBlue,
                    groupValue: selectedValue,
                  ),
                ),
              ],
            ),
          ),
          const Divider(
            height: 15.0,
            color: Colors.black,
          ),
          Material(
              child: Column(
            children: [
              ListTile(
                leading: const CircleAvatar(
                  backgroundColor: Colors.blue,
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Nama",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "19:00pm",
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    ),
                  ],
                ),
                subtitle: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("Pesan ke"),
                  ],
                ),
              ),
              ListTile(
                leading: const CircleAvatar(
                  backgroundColor: Colors.blue,
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Nama",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "19:00pm",
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    ),
                  ],
                ),
                subtitle: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("Pesan ke"),
                  ],
                ),
              ),
              ListTile(
                leading: const CircleAvatar(
                  backgroundColor: Colors.blue,
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Nama",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "19:00pm",
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    ),
                  ],
                ),
                subtitle: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("Pesan ke"),
                  ],
                ),
              ),
              ListTile(
                leading: const CircleAvatar(
                  backgroundColor: Colors.blue,
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Nama",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "19:00pm",
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    ),
                  ],
                ),
                subtitle: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("Pesan ke"),
                  ],
                ),
              ),
              ListTile(
                leading: const CircleAvatar(
                  backgroundColor: Colors.blue,
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Nama",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "19:00pm",
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    ),
                  ],
                ),
                subtitle: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("Pesan ke"),
                  ],
                ),
              ),
            ],
          )),
        ],
      ),
    );
  }
}

class MyPrefilledSearch extends StatefulWidget {
  const MyPrefilledSearch({Key? key}) : super(key: key);

  @override
  State<MyPrefilledSearch> createState() => _MyPrefilledSearchState();
}

class _MyPrefilledSearchState extends State<MyPrefilledSearch> {
  @override
  Widget build(BuildContext context) {
    return CupertinoSearchTextField(
      onChanged: (String value) {
        print('The text has changed to: $value');
      },
      onSubmitted: (String value) {
        print('Submitted text: $value');
      },
    );
  }
}

class TabBar extends StatefulWidget {
  const TabBar({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}
