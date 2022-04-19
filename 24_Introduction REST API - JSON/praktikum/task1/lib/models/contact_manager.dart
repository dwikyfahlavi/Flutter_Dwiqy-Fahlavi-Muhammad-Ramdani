import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task1/models/contact_model.dart';
import 'package:task1/services/service.dart';

class ContactManager extends ChangeNotifier {
  List<ContactModel?>? _contactModel = [];
  List<ContactModel> get contactModel => List.unmodifiable(_contactModel!);

  final ApiService service = ApiService();
  late SharedPreferences contactPrefs;

  bool loading = false;

  Future<void> getContactList() async {
    loading = true;

    contactPrefs = await SharedPreferences.getInstance();

    List<ContactModel>? contactApi = await service.fetchAllContact();

    final encodedContactApi = contactApi!
        .map((item) => jsonEncode(ContactModel.toJson(item)))
        .toList();
    final encodedContactModel = contactModel
        .map((item) => jsonEncode(ContactModel.toJson(item)))
        .toList();

    final newList = {...encodedContactApi, ...encodedContactModel}.toList();
    final decodedNewList =
        newList.map((e) => ContactModel.fromJson(jsonDecode(e))).toList();

    _contactModel = decodedNewList;

    loading = false;

    notifyListeners();
  }

  Future<void> getContactById(String id) async {
    loading = true;

    contactPrefs = await SharedPreferences.getInstance();

    ContactModel? contactApi = await service.fetchByIdContact(id);

    final encodedContactModel = contactModel
        .map((item) => jsonEncode(ContactModel.toJson(item)))
        .toList();

    final newList = {...encodedContactModel}.toList();
    final decodedNewList =
        newList.map((e) => ContactModel.fromJson(jsonDecode(e))).toList();

    _contactModel = decodedNewList;
    List.from(_contactModel!..add(contactApi));

    loading = false;

    notifyListeners();
  }

  Future<void> addContact(ContactModel contact) async {
    var postedContact = await service.postContact(contact);

    _contactModel!.add(postedContact);

    notifyListeners();
  }
}
