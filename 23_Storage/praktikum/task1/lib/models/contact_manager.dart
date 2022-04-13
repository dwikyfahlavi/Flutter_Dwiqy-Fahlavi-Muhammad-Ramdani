import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task1/models/contact_model.dart';

class ContactManager extends ChangeNotifier {
  List<ContactModel> _contactModel = [];

  void getContactList() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    final String contactsString = prefs.getString('contacts_key') ?? '[]';

    _contactModel = ContactModel.decode(contactsString);

    notifyListeners();
  }

  List<ContactModel> get contactModel => List.unmodifiable(_contactModel);

  Future<void> addContact(ContactModel contact) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    _contactModel.add(contact);

    final String encodedData = ContactModel.encode(_contactModel);
    await prefs.setString('contacts_key', encodedData);

    notifyListeners();
  }

  Future<void> deleteContact(int index) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    _contactModel.removeAt(index);

    final String encodedData = ContactModel.encode(_contactModel);
    await prefs.setString('contacts_key', encodedData);

    notifyListeners();
  }
}
