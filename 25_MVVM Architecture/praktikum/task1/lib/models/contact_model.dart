class ContactModel {
  final String id;
  final String name;
  final String number;

  ContactModel({required this.id, required this.name, required this.number});

  factory ContactModel.fromJson(Map<String, dynamic> jsonData) {
    return ContactModel(
      id: jsonData['id'].toString(),
      name: jsonData['name'],
      number: jsonData['phone'],
    );
  }

  static Map<String, dynamic> toJson(ContactModel contact) =>
      {'id': contact.id, 'name': contact.name, 'phone': contact.number};
}
