import 'dart:convert';

class Contact {
  String name = '';
  String number = '';

  Contact({required this.name, required this.number});

  factory Contact.fromJson(Map<String, dynamic> jsonData) {
    return Contact(
      name: jsonData['name'],
      number: jsonData['number'],
    );
  }

  static Map<String, dynamic> toMap(Contact contact) => {
    'name': contact.name,
    'number': contact.number
  };

  static String encode(List<Contact> contacts) => json.encode(
    contacts
      .map<Map<String, dynamic>>((contact) => Contact.toMap(contact))
      .toList(),
  );

  static List<Contact> decode(String contacts) =>
    (json.decode(contacts) as List<dynamic>)
      .map<Contact>((item) => Contact.fromJson(item))
      .toList();
}