import 'dart:convert';

class ContactModel {
  final String name;
  final String number;

  ContactModel({required this.name, required this.number});

  factory ContactModel.fromJson(Map<String, dynamic> jsonData) {
    return ContactModel(
      name: jsonData['name'],
      number: jsonData['number'],
    );
  }

  static Map<String, dynamic> toMap(ContactModel contact) => {
    'name': contact.name,
    'number': contact.number
  };

  static String encode(List<ContactModel> contacts) => json.encode(
    contacts
      .map<Map<String, dynamic>>((contact) => ContactModel.toMap(contact))
      .toList(),
  );

  static List<ContactModel> decode(String contacts) =>
    (json.decode(contacts) as List<dynamic>)
      .map<ContactModel>((item) => ContactModel.fromJson(item))
      .toList();
}